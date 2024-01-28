
import 'package:flutter/material.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    this.isPadding = false,
    required this.text,
    this.onTap,
  });

  bool isPadding;
  void Function()? onTap;
  String text;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return InkWell(
      onTap: onTap,
      child: Container(
        height: screenSize.height * .06,
        margin: isPadding == true
            ? EdgeInsets.symmetric(
                horizontal: screenSize.width * .04,
              )
            : null,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.primary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                text,
                style: AppFont.getCaptionFont(
                  context,
                  fontColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
