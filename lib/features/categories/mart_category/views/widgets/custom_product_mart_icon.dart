
import 'package:flutter/material.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';

class CustomProductMartIcon extends StatelessWidget {
  const CustomProductMartIcon({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
            Size screenSize = MediaQuery.sizeOf(context);

    return FittedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              FittedBox(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(
                      .1,
                    ),
                    borderRadius:
                        BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: Image.asset(
                    ImageAssetsManager.kiriProduct,
                    width: screenSize.width * .3,
                    height: screenSize.width * .3,
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: AppColor.primary,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenSize.height * .01,
          ),
          SizedBox(
            width: screenSize.width * .34,
            child: Text(
              'Kiri Creamy Tub Cheese 200 grame',
              maxLines: 2,
              style: AppFont.getCaptionFont(
                context,
                height: 1.1,
                fontColor: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: screenSize.height * .005,
          ),
          SizedBox(
            width: screenSize.width * .22,
            child: Text(
              'EGP 19.99',
              maxLines: 2,
              style: AppFont.getCaptionFont(
                context,
                height: 1.2,
                fontColor: AppColor.primary,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
