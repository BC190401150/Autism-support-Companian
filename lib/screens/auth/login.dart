import 'package:autism_support_fp/customWidgets/mybutton.dart';
import 'package:autism_support_fp/customWidgets/mytext.dart';
import 'package:autism_support_fp/customWidgets/mytextfield.dart';
import 'package:autism_support_fp/resources/resources.dart';
import 'package:autism_support_fp/screens/auth/signup_screen.dart';
import 'package:autism_support_fp/utills/authutils.dart';
import 'package:autism_support_fp/utills/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailCon = TextEditingController();
  TextEditingController passCon = TextEditingController();
  final formKey=GlobalKey<FormState>();
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
            padding: EdgeInsets.only(left: Get.width * 0.05, right: Get.width * 0.05, top: Get.height * 0.02),
            child: SingleChildScrollView(
              child: AnimationLimiter(
                child: Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: AnimationConfiguration.toStaggeredList(
                        duration: const Duration(milliseconds: 375),
                        childAnimationBuilder: (widget) => SlideAnimation(
                              horizontalOffset: 50.0,
                              child: FadeInAnimation(
                                child: widget,
                              ),
                            ),
                        children: [
                          SizedBox(
                            height: Get.height * 0.14,
                          ),
                          MyText(
                            text: "Login",
                            textcolor: Resource.colors.blackColor,
                            fontWeight: FontWeight.w800,
                            fontSize: Get.width * 0.073,
                          ),
                          SizedBox(
                            height: Get.height * 0.01,
                          ),
                          MyText(
                            text: "Login with Email & Password",
                            textcolor: Resource.colors.blackColor,
                            fontWeight: FontWeight.w400,
                            fontSize: Get.width * 0.037,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: Get.height * 0.03),
                          SizedBox(height: Get.height * 0.017),
                          MyTextField(
                            show: false,
                            controller: emailCon,
                            validator: FieldValidator.validateEmail,
                            hintText: "Email",
                          ),
                          SizedBox(height: Get.height * 0.017),
                          MyTextField(
                            controller: passCon,
                            validator: FieldValidator.validatePassword,

                            show: true,
                            eye: true,
                            hintText: "Password",
                          ),
                          SizedBox(height: Get.height * 0.06),
                          Center(
                            child: MyButton(
                              onPressed: () {
                                if(formKey.currentState!.validate()){

                                  AuthUtils().loginUser(emailCon.text.trim(), passCon.text.trim(), context);

                                }
                              },
                              text: "LOGIN",
                            ),
                          ),
                          SizedBox(
                            height: Get.height * 0.035,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: Get.width * 0.01,
                              ),
                              Row(
                                children: [
                                  MyText(
                                    text: "Dont have an account?",
                                    textcolor: Resource.colors.blackColor,
                                  ),
                                  SizedBox(
                                    width: Get.width * 0.02,
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        Get.to(const SignupScreen());
                                      },
                                      child: MyText(
                                        text: "SignUp",
                                        textcolor: Resource.colors.themeColor,
                                        fontWeight: FontWeight.w800,
                                      ))
                                ],
                              ),
                              SizedBox(
                                width: Get.width * 0.01,
                              ),
                            ],
                          )
                        ]),
                  ),
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}
