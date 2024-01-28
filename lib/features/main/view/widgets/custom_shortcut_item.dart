import 'package:flutter/material.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/main/data/models/shortcut_model.dart';

class CustomShortcutItem extends StatelessWidget {
  CustomShortcutItem({
    super.key,
    required this.data,
  });
  ShortcutModel data;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: AppColor.primaryLight,
              borderRadius: BorderRadius.circular(10)),
          child: Image.asset(
            data.image,
            width: screenSize.width * .1,
            color: AppColor.primary,
          ),
        ),
        SizedBox(
          height: screenSize.height * .01,
        ),
        SizedBox(
          width: screenSize.width / 5,
          child: Text(
            data.name,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: AppFont.getLabelFont(
              context,
              fontWeight: FontWeight.w600,
              fontSize: 16,
              height: 1.2,
            ),
          ),
        ),
      ],
    );
  }
}
