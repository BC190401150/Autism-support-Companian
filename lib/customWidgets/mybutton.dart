import 'package:flutter/material.dart';



import '../resources/resources.dart';
import 'mytext.dart';

class MyButton extends StatelessWidget {
  String ? text;
  VoidCallback onPressed;
   MyButton({Key? key,this.text,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Size=MediaQuery.of(context).size;
    return InkWell(
     onTap: onPressed,
      child: Container(
        height: Size.height*0.068,
        width: Size.width,
alignment: Alignment.center,
// Button color
        decoration: BoxDecoration(
          color: Resource.colors.blueColor,

       borderRadius: BorderRadius.circular(30)
        ),

        child: MyText(text:text??"",fontSize: Size.height*0.02,
         textcolor:Resource.colors.whiteColor ,
          fontWeight: FontWeight.w700,
          // color: backgroundColor,
        ),
      ),
    );
  }
}
