
import 'dart:io';

import 'package:autism_support_fp/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'package:uuid/uuid.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import '../../customWidgets/customdialog.dart';
import '../../customWidgets/mybutton.dart';
import '../../customWidgets/mytext.dart';
import '../../customWidgets/mytextfield.dart';
import '../../utills/authutils.dart';
import '../../utills/validator.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  File? imageUrl;
  String? imageLink;
  final GlobalKey<FormState>key=GlobalKey<FormState>();

  TextEditingController nameCon = TextEditingController();
  TextEditingController passCon = TextEditingController();
  TextEditingController emailCon = TextEditingController();
  TextEditingController phoneCon = TextEditingController();

  final ImagePicker _picker = ImagePicker();


  void getImage()async{
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      imageUrl=File(image!.path) ;
    });
  }
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
            child: Container(
              height: Get.height,
              width: Get.width,
                 // background color
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: EdgeInsets.only(left: Get.width*0.05,right: Get.width*0.05,top: Get.height*0.02),
                child: SingleChildScrollView(
                  child:  AnimationLimiter(
                    child: Form(
                      key: key,
                      autovalidateMode: AutovalidateMode.onUserInteraction,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: AnimationConfiguration.toStaggeredList(
                            duration: const Duration(milliseconds: 375),
                            childAnimationBuilder: (widget) => SlideAnimation(
                              horizontalOffset: 50.0,
                              child: FadeInAnimation(
                                child: widget,
                              ),
                            ),
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child:   InkWell(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: CircleAvatar(

                                    radius: 20,
                                    backgroundColor: Resource.colors.blackColor.withOpacity(.40),
                                    child: Icon(Icons.arrow_back,color: Colors.white,),

                                  ),
                                ),
                              ),
                              SizedBox(height: Get.height*0.015,),


                              MyText(text: "Complete Your Profile",textcolor: Resource.colors.blackColor,fontWeight: FontWeight.w800,fontSize: Get.width*0.073,),
                              SizedBox(height: Get.height*0.01,),
                              MyText(text: "Just a few more details to personalize\nyour experience.",textcolor: Resource.colors.blackColor,fontWeight: FontWeight.w400,fontSize: Get.width*0.037,
                                textAlign: TextAlign.center,

                              ),
                              SizedBox(height: Get.height * 0.03),
                              GestureDetector(
                                onTap: (){
                                  getImage();
                                },
                                child: CircleAvatar(
                                  radius: 60,
                                  backgroundColor: Resource.colors.themeColor,
                                  child:imageUrl==null? Column(
                                    children: [
                                      SizedBox(height: Get.height*0.025,),
                                      SvgPicture.asset(Resource.images.addImage),
                                      SizedBox(height: Get.height * 0.018),
                                      MyText(text: "Upload Profile\nPicture",textcolor: Resource.colors.whiteColor,fontWeight: FontWeight.w400,fontSize: Get.width*0.034,
                                        textAlign: TextAlign.center,

                                      ),
                                    ],
                                  ):CircleAvatar(
                                    radius: 60,
                                    backgroundColor: Resource.colors.themeColor,
backgroundImage: FileImage(imageUrl!),
                                  )
                                ),
                              ),
                              SizedBox(height: Get.height * 0.03),
                              MyTextField(show: false,
                                controller: nameCon,
                                hintText: "Username",
validator: FieldValidator.validateUsername,
                                textInputType: TextInputType.name,
                              ),
                              SizedBox(height: Get.height * 0.017),

                              MyTextField(show: false,
                                controller: emailCon,
                                textInputType: TextInputType.emailAddress,
                                validator: FieldValidator.validateEmail,
                                hintText: "Email",
                              ),
                              SizedBox(height: Get.height * 0.017),
                              MyTextField(show: false,
                                controller: phoneCon,
                                textInputType: TextInputType.number,
                                validator: FieldValidator.validatePhoneNumber,
                                hintText: "Phone no",
                              ),
                              SizedBox(height: Get.height * 0.017),
                              MyTextField(show: true,
                                eye: true,
                                controller: passCon,
                                hintText: "Password",
                                validator: FieldValidator.validatePassword,
                                textInputType: TextInputType.visiblePassword,
                              ),

                              SizedBox(height: Get.height * 0.06),
                              Center(
                                child: MyButton(onPressed: (){
                                  if(imageUrl==null){
                                    Customdialog().showInSnackBar("Please add image", context) ;                   }
                                  else {
                                    if(key.currentState!.validate()){
                                      Customdialog.showDialogBox(context);
                                      uploadImageToFirebase().then((value) =>
                                          AuthUtils().registerUser(
                                              imageLink!,
                                              nameCon.text.trim(),
                                              emailCon.text.trim(),
                                              phoneCon.text.trim(),
                                              passCon.text.trim(),

                                              context)
                                      );}

                                  }
                                },
                                  text: "SIGN UP",
                                ),
                              ),
                              SizedBox(height: Get.height * 0.025),
                            ]
                        ),
                      ),
                    ),
                  ),

                ),
              ),
            )
        ),
      ),
    );
  }

  Future uploadImageToFirebase() async {
    File? fileName = imageUrl;
    var uuid = Uuid();
    firebase_storage.Reference firebaseStorageRef = firebase_storage
        .FirebaseStorage.instance
        .ref()
        .child('users/images+${uuid.v4()}');
    firebase_storage.UploadTask uploadTask =
    firebaseStorageRef.putFile(fileName!);
    firebase_storage.TaskSnapshot taskSnapshot =
    await uploadTask.whenComplete(() async {
      print(fileName);
      String img = await uploadTask.snapshot.ref.getDownloadURL();
      setState(() {
        imageLink = img;
      });
    });
  }
}
