
import 'package:autism_support_fp/resources/resources.dart';
import 'package:autism_support_fp/screens/auth/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/dashboard/home/home_screen.dart';
import '../utills/constants.dart';

class DrawerFiles extends StatefulWidget {
  const DrawerFiles({Key? key}) : super(key: key);

  @override
  _DrawerFilesState createState() => _DrawerFilesState();
}

class _DrawerFilesState extends State<DrawerFiles> {

  @override
  Widget build(BuildContext context) {
    var appSize=MediaQuery.of(context).size;
  
    
    return Drawer(
backgroundColor: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          StreamBuilder(
            stream: firebaseFirestore.collection("users").doc(firebaseAuth.currentUser!.uid).snapshots(),
            builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
              if (snapshot.hasData) {
                var ds = snapshot.data!;
                return UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Resource.colors.themeColor,
                  ),
                  accountName: Text(
                    ds.get("UserName"),
                  ),
                  accountEmail: Text(
                    ds.get("Email"),
                  ),
                  onDetailsPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: ((context) => profile()
                    //   ),
                    // ),);
                  },
                  currentAccountPicture: CircleAvatar(
                    radius: 60.0,
                    backgroundImage: NetworkImage(ds.get("imageLink"),),

                  ),
                );
              } else {
                // Return a default widget when there's no data available
                return CircularProgressIndicator(); // You can replace this with any other widget you prefer.
              }
            },
          ),



          ListTile(
              leading: Icon(Icons.power_settings_new,color:  Resource.colors.themeColor,),
              title: Text(
                  "Logout",style: TextStyle(
                  color: Colors.black,
                fontSize: appSize.width*0.042,
                  fontWeight: FontWeight.bold
              ),
              ),
            onTap: ()async{
              await firebaseAuth.signOut();
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => SignInScreen()), (Route<dynamic> route) => false);
            },
          ),

        ],
      ),
    );
  }
}
