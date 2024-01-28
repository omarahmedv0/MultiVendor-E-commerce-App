import 'package:flutter/material.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/shared/widgets/custom_button.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';

class CustomContactWithDeliveryWidget extends StatelessWidget {
  const CustomContactWithDeliveryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
              width: screenSize.width,
              height: screenSize.height * .3,
              decoration: BoxDecoration(
                color: AppColor.primaryLight,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                ImageAssetsManager.deliveryMan,
                width: screenSize.width * .6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.white,
                  ),
                ),
                icon: const Icon(
                  Icons.close,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenSize.height * .02,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenSize.width * .04,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'How would you like to get in touch?',
                style: AppFont.getSubtitle1(context),
              ),
              SizedBox(
                height: screenSize.height * .01,
              ),
              Text(
                'Omar is on the road. To ensure thier safety, they may not answer immmeditaly',
                maxLines: 3,
                style:
                    AppFont.getCaption2Font(context, fontSize: 14, height: 1.2),
              ),
              SizedBox(
                height: screenSize.height * .02,
              ),
              CustomButton(
                text: 'Call',
              ),
              SizedBox(
                height: screenSize.height * .02,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
