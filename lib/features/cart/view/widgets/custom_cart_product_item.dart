
import 'package:flutter/material.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';

class CustomCartProductItem extends StatelessWidget {
  const CustomCartProductItem({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Burger and fried chicken',
              style: AppFont.getSubtitle1(
                context,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: screenSize.height * .012,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'EGP 120.00',
                  style: AppFont.getSubtitle1(
                    context,
                    fontSize: 16,
                    fontColor: AppColor.primary,
                  ),
                ),
                SizedBox(
                  width: screenSize.width * .1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.remove,
                      color: AppColor.primary,
                      size: screenSize.width * .06,
                    ),
                    SizedBox(
                      width: screenSize.width * .03,
                    ),
                    Text(
                      '1',
                      style: AppFont.getSubtitle1(context),
                    ),
                    SizedBox(
                      width: screenSize.width * .03,
                    ),
                    Icon(
                      Icons.add,
                      color: AppColor.primary,
                      size: screenSize.width * .06,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            ImageAssetsManager.chickenPlat,
            width: screenSize.width * .15,
            fit: BoxFit.fill,
            height: screenSize.width * .15,
          ),
        ),
      ],
    );
  }
}
