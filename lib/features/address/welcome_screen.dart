import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/manager/route_manager.dart';
import 'package:talabat_clone/core/shared/func/get_current_location_func.dart';
import 'package:talabat_clone/core/shared/widgets/custom_button.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenSize.height * .02,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'talabat',
                style: AppFont.getTitleLargeFont(
                  context,
                  fontColor: AppColor.primary,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Your everyday, right away',
                style: AppFont.getCaptionFont(
                  context,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * .04,
            ),
            Image.asset(
              ImageAssetsManager.backgroundWelcomeScreen,
              width: double.infinity,
            ),
            SizedBox(
              height: screenSize.height * .04,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Share your location',
                style: AppFont.getTitleLargeFont(context),
              ),
            ),
            SizedBox(
              height: screenSize.height * .01,
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenSize.width * .04,
                ),
                child: Text(
                  'If we have your location, we can do a better job to find what you want and deliver it.',
                  maxLines: 5,
                  textAlign: TextAlign.center,
                  style: AppFont.getCaptionFont(
                    context,
                    fontWeight: FontWeight.w500,
                    fontColor: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * .05,
            ),
            CustomButton(
              text: 'Yes, share my location',
              isPadding: true,
              onTap: () async {
                LocationData? userLlocation = await getUserLocation();
                if (userLlocation != null) {
                  // ignore: use_build_context_synchronously
                  Navigator.pushNamed(
                    context,
                    AppRoutes.layoutView,
                  );
                } else {
                  
                }
              },
            ),
            SizedBox(
              height: screenSize.height * .01,
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenSize.width * .04,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.chooseAddressManuallyScreen,
                    );
                  },
                  child: Text(
                    'No, choose location manually',
                    maxLines: 5,
                    textAlign: TextAlign.center,
                    style: AppFont.getLabelFont(
                      context,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      fontColor: AppColor.primary,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
