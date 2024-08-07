import 'package:autism_support_fp/utills/authutils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

import '../../customWidgets/mybutton.dart';
import '../../customWidgets/mytext.dart';
import '../../customWidgets/mytextfield.dart';
import '../../resources/resources.dart';
import '../../utills/validator.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  TextEditingController nameCon = TextEditingController();
  TextEditingController senCon = TextEditingController();
  TextEditingController cumCon = TextEditingController();
  TextEditingController phoneCon = TextEditingController();
  TextEditingController prefeCon = TextEditingController();
  final GlobalKey<FormState> key = GlobalKey<FormState>();

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
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Resource.images.bg),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: Get.width * 0.05,
                right: Get.width * 0.05,
                top: Get.height * 0.02,
              ),
              child: SingleChildScrollView(
                child: AnimationLimiter(
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
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Resource.colors.blackColor.withOpacity(.40),
                                child: Icon(Icons.arrow_back, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(height: Get.height * 0.015),
                          MyText(
                            text: "Complete Your Profile",
                            textcolor: Resource.colors.blackColor,
                            fontWeight: FontWeight.w800,
                            fontSize: Get.width * 0.073,
                          ),
                          SizedBox(height: Get.height * 0.01),
                          MyText(
                            text: "Just a few more details to personalize your experience.",
                            textcolor: Resource.colors.blackColor,
                            fontWeight: FontWeight.w400,
                            fontSize: Get.width * 0.037,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: Get.height * 0.03),
                          MyTextField(
                            show: false,
                            controller: nameCon,
                            hintText: "Age",
                            validator: FieldValidator.validateAge,
                            textInputType: TextInputType.number,
                          ),
                          SizedBox(height: Get.height * 0.017),
                          MyTextField(
                            show: false,
                            controller: prefeCon,
                            hintText: "Preferences",
                            validator: FieldValidator.validateFullname,
                            textInputType: TextInputType.name,
                          ),
                          SizedBox(height: Get.height * 0.017),
                          MyTextField(
                            show: false,
                            controller: senCon,
                            hintText: "Sensitivities",
                            validator: FieldValidator.validateFullname,
                            textInputType: TextInputType.name,
                          ),
                          SizedBox(height: Get.height * 0.017),
                          MyTextField(
                            show: false,
                            controller: cumCon,
                            hintText: "Communication need",
                            validator: FieldValidator.validateFullname,
                            textInputType: TextInputType.name,
                          ),
                          SizedBox(height: Get.height * 0.06),

                          Center(
                            child: MyButton(
                              onPressed: () {
                                if (key.currentState!.validate()) {
                                  AuthUtils().updateProfile(
                                      nameCon.text.trim(),
                                      prefeCon.text.trim(),
                                      senCon.text.trim(),
                                      cumCon.text.trim(),
                                      context);
                                }
                              },
                              text: "Update Profile",
                            ),
                          ),
                          SizedBox(height: Get.height * 0.025),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
