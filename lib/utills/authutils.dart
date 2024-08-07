

import 'package:autism_support_fp/customWidgets/customdialog.dart';
import 'package:autism_support_fp/screens/dashboard/home/home_screen.dart';
import 'package:autism_support_fp/screens/profile/profile_details.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'constants.dart';



class AuthUtils{
  void updateProfile(
      String age,
      String preference,
      String sensitivities,
      String communication,
      BuildContext context,
      ) async {
    try {
      await FirebaseFirestore.instance.collection("usersProfiles").doc(FirebaseAuth.instance.currentUser!.uid).set({
        'age': age,
        'preference': preference,
        'sensitivities': sensitivities,
        'communication': communication,
      }).then((_) {
        Customdialog().showInSnackBar("Update Profile", context);
        Customdialog.closeDialog(context);
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => const HomeScreen()),
              (route) => false,
        );
      });
    } catch (error) {
      Navigator.pop(context);
      Customdialog.showBox(context, error.toString());
    }
  }

  registerUser(
      String imageLink,
      String name,
      String email,
      String phoneNo,
      String password,
      BuildContext context
      )async{
    try{
      await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password).then((value) {
     FirebaseFirestore.instance.collection("users").doc(firebaseAuth.currentUser!.uid).set(
        {
          'UserName':name,
          'Email':email,
          'imageLink':imageLink,
          "phoneNumber":phoneNo,
        }
      )
            .then((value) {
          Customdialog().showInSnackBar("Logged in", context);
          Customdialog.closeDialog(context);
          Navigator.pushAndRemoveUntil(
              context, MaterialPageRoute(builder: (_) =>ProfileDetails()), (
              route) => false);

        });
      }  ).catchError((onError){
        throw onError;
        Navigator.pop(context);
        Customdialog.showBox(context,onError);

      });
    }on FirebaseAuthException catch(e){
      Navigator.pop(context);

      Customdialog.showBox(context,e.toString());


    }
  }

  loginUser(
      String email,
      String password,
      BuildContext context,
      )async{
    try{
      Customdialog.showDialogBox(context);
      await firebaseAuth.signInWithEmailAndPassword(email: email, password: password).then((value) {
        Customdialog().showInSnackBar("Logged in", context);
        Customdialog.closeDialog(context);
        Navigator.pushAndRemoveUntil(
            context, MaterialPageRoute(builder: (_) =>HomeScreen()), (
            route) => false);

      }  ).catchError((onError){
        throw onError;
      });
    }
    catch(e){
      Navigator.pop(context);
      Customdialog.showBox(context,"Invalid username or password");
    }
  }
  resetPassword(String email,BuildContext context)async{
    try{
      await    firebaseAuth.sendPasswordResetEmail(email: email).then((value) {
        Customdialog.closeDialog(context);
        Customdialog.closeDialog(context);
        Customdialog.closeDialog(context);
        Customdialog().showInSnackBar("Please Check your email and Password", context);
      }).catchError((e){
        throw e;
      });
    }
    catch(e){
      Navigator.pop(context);
      Customdialog.showBox(context,e.toString());
    }
  }

}
