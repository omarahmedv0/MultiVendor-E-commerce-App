import 'package:flutter/material.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';

class CustomTextFieldAuth extends StatelessWidget {
  CustomTextFieldAuth({
    super.key,
    required this.hintText,
    this.controller,
    this.helperText,
  });
  String hintText;
  String? helperText;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hintText,
          helperText: helperText,
          helperStyle: AppFont.getCaptionFont(
            context,
            fontColor: Colors.black.withOpacity(.6),
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
          hintStyle: AppFont.getCaptionFont(context),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColor.primary,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(.4),
            ),
          )),
    );
  }
}
