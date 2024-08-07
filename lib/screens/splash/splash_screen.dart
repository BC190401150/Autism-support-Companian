import 'package:autism_support_fp/screens/auth/login.dart';
import 'package:autism_support_fp/screens/dashboard/home/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../resources/resources.dart';
import '../../utills/constants.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    firebaseAuth.authStateChanges().listen((User? user) {
      if (user == null) {
        Future.delayed(const Duration(seconds: 2)).then((value) => Navigator.push(context,
            MaterialPageRoute(builder: (_)=>const SignInScreen())));
      } else {
        Future.delayed(const Duration(seconds: 2)).then((value) => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=> const HomeScreen()), (route) => false)) ;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Resource.colors.whiteColor,
      body: SafeArea(
        child: Center(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Icon(Icons.maps_ugc_outlined,color: Colors.black,size: 100,)),
        )
      ),
    );
  }
}
