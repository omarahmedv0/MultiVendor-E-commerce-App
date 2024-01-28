import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/manager/route_manager.dart';
import 'package:talabat_clone/core/styles/app_font.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenSize.width * .04,
        ),
        child: Column(
          children: [
            SizedBox(
              height: screenSize.height * .02,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(1),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      IconAssetsManager.userIcon,
                      width: screenSize.width * .05,
                    ),
                  ),
                ),
                SizedBox(
                  width: screenSize.width * .02,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi guest',
                      style: AppFont.getSubtitle1(context),
                    ),
                    Text(
                      'Egypt',
                      style: AppFont.getCaptionFont(
                        context,
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.settings_outlined,
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * .04,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.ordersScreen,
                );
              },
              child: Row(
                children: [
                  Image.asset(
                    IconAssetsManager.orderListIcon,
                    width: screenSize.width * .06,
                  ),
                  SizedBox(
                    width: screenSize.width * .04,
                  ),
                  Text(
                    'Your orders',
                    style: AppFont.getCaption2Font(
                      context,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * .04,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.offerScreen,
                );
              },
              child: Row(
                children: [
                  Image.asset(
                    IconAssetsManager.offerIcon,
                    width: screenSize.width * .06,
                  ),
                  SizedBox(
                    width: screenSize.width * .04,
                  ),
                  Text(
                    'Offers',
                    style: AppFont.getCaption2Font(
                      context,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * .04,
            ),
            Row(
              children: [
                Image.asset(
                  IconAssetsManager.notificationIcon,
                  width: screenSize.width * .06,
                ),
                SizedBox(
                  width: screenSize.width * .04,
                ),
                Text(
                  'Notifications',
                  style: AppFont.getCaption2Font(
                    context,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * .04,
            ),
            Row(
              children: [
                Image.asset(
                  IconAssetsManager.walletIcon,
                  width: screenSize.width * .06,
                ),
                SizedBox(
                  width: screenSize.width * .04,
                ),
                Text(
                  'Payments',
                  style: AppFont.getCaption2Font(
                    context,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * .04,
            ),
            Row(
              children: [
                Image.asset(
                  IconAssetsManager.helpIcon,
                  width: screenSize.width * .06,
                ),
                SizedBox(
                  width: screenSize.width * .04,
                ),
                Text(
                  'Get help',
                  style: AppFont.getCaption2Font(
                    context,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * .04,
            ),
            Row(
              children: [
                Icon(
                  Icons.info_outline,
                  size: screenSize.width * .06,
                ),
                SizedBox(
                  width: screenSize.width * .04,
                ),
                Text(
                  'About',
                  style: AppFont.getCaption2Font(
                    context,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
