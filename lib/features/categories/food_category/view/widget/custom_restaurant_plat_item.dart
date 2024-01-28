
import 'package:flutter/material.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/styles/app_font.dart';

class CustomRestaurantPlatItem extends StatelessWidget {
  const CustomRestaurantPlatItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return SizedBox(
      width: screenSize.width,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: screenSize.width * .58,
                child: Text(
                  'Chicken Schezwan Fried Rice',
                  style: AppFont.getSubtitle1(
                    context,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * .005,
              ),
              SizedBox(
                width: screenSize.width * .58,
                child: Text(
                  'Golden fried Chicken pieces wok- tossed with hotand spicy schezwan fried rice with vegetables like green',
                  maxLines: 3,
                  style: AppFont.getCaptionFont(
                    context,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * .01,
              ),
              SizedBox(
                width: screenSize.width * .58,
                child: Text(
                  'EGP 120.00',
                  style: AppFont.getSubtitle1(
                    context,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              ImageAssetsManager.chickenPlat,
              width: screenSize.width * .3,
              height: screenSize.width * .3,
            ),
          ),
        ],
      ),
    );
  }
}
