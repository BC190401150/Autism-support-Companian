import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../resources/resources.dart';


class MyTextField extends StatefulWidget {
  String? hintText;
  bool? eye;
  int? maxLines;
  bool show;
  Icon? icon;
  TextEditingController? controller;
  String? Function(String?)? validator;
  TextInputType? textInputType;
  MyTextField(
      {Key? key,
      required this.show,
      this.maxLines,
      this.hintText,
      this.eye,
      this.controller,
      this.validator,
      this.icon,
        this.textInputType,
      })
      : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(
          left: appSize.width * 0.01, right: appSize.width * 0.01),
      child: TextFormField(
        validator: widget.validator,
        controller: widget.controller,
        obscureText: widget.show,
        keyboardType: widget.textInputType,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
            fillColor: Color(0XFFEFF2F1),
            filled: true,
            hintStyle: TextStyle(color: Colors.black.withOpacity(.70)),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color(0XFFEFF2F1).withOpacity(.20), width: 0.5),
              borderRadius: BorderRadius.circular(10.0),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color(0XFFEFF2F1).withOpacity(.40), width: 1),
                borderRadius: BorderRadius.circular(10.0)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Resource.colors.blueColor, width: 1),
                borderRadius: BorderRadius.circular(10.0)),
            hintText: widget.hintText ?? "",
            prefixIcon: widget.icon,
            suffixIcon: widget.eye == null
                ? null
                : IconButton(
                    onPressed: () {
                      setState(() {
                        widget.show = !widget.show;
                      });
                    },
                    icon: widget.show
                        ? Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SvgPicture.asset(
                              Resource.images.hideIcon,
                              height: 22,
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SvgPicture.asset(
                              Resource.images.showIcon,
                              height: 18,
                            ),
                          ))),
      ),
    );
  }
}
