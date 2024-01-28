import 'package:flutter/material.dart';
import 'package:talabat_clone/core/styles/app_font.dart';

class CustomPopularSearchItem extends StatelessWidget {
  CustomPopularSearchItem({
    super.key,
    required this.title,
  });
  String title;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 1,
        vertical: 1,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.4),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: SizedBox(
          child: Row(
            children: [
              Icon(
                Icons.trending_up,
                color: Colors.black.withOpacity(.6),
              ),
              SizedBox(
                width: screenSize.width * .01,
              ),
              Text(
                title,
                style: AppFont.getCaptionFont(
                  context,
                  fontColor: Colors.black.withOpacity(.6),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
