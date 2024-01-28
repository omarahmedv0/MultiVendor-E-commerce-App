import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          bottom: const PreferredSize(
            preferredSize: Size(1, 10),
            child: Divider(),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          foregroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Text(
            'Offers',
            style: AppFont.getTitleSmallFont(
              context,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * .04,
            ),
            child: Row(
              children: [
                Image.asset(
                  IconAssetsManager.offerIcon,
                  width: screenSize.width * .07,
                  color: AppColor.primary,
                ),
                SizedBox(
                  width: screenSize.width * .04,
                ),
                Column(
                  children: [
                    Text(
                      'Get 10% off on all orders',
                      style: AppFont.getCaption2Font(context),
                    ),
                    Text(
                      'Valid until 01 October, 2023',
                      style: AppFont.getCaptionFont(
                        context,
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          separatorBuilder: (context, index) => Divider(
            height: screenSize.height * .04,
            color: Colors.grey.withOpacity(.2),
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
