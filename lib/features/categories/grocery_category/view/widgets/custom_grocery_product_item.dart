
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/styles/app_font.dart';

class CustomGroceryProductItem extends StatelessWidget {
  const CustomGroceryProductItem({
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
                  'New Year Offer',
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
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
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
              ImageAssetsManager.remasProduct,
              width: screenSize.width * .3,
              height: screenSize.width * .3,
            ),
          ),
        ],
      ),
    );
  }
}
