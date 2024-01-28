import 'package:flutter/material.dart';
import 'package:talabat_clone/core/styles/app_font.dart';

class CustomButtonWithPreIcon extends StatelessWidget {
  CustomButtonWithPreIcon({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
    this.iconColor,
  });

  String icon;
  String text;
  void Function()? onTap;
  Color? iconColor;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.4),
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Container(
          padding: EdgeInsetsDirectional.symmetric(
            vertical: screenSize.height * .015,
            horizontal: screenSize.width * .04,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: AppFont.getCaption2Font(
                        context,
                        fontColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                icon,
                color: iconColor,
                width: screenSize.width * .06,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
