import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/styles/app_font.dart';

class RestaurantDataDetailsScreen extends StatelessWidget {
  const RestaurantDataDetailsScreen({super.key});

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
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenSize.width * .04,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenSize.height * .02,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: screenSize.width * .08,
                ),
              ),
              SizedBox(
                height: screenSize.height * .02,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      ImageAssetsManager.bazzokaLogo,
                      width: screenSize.width * .15,
                      height: screenSize.width * .15,
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
                        'Bazzoka',
                        style: AppFont.getSubtitle1(
                          context,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Burger, Chiken',
                        style: AppFont.getCaptionFont(
                          context,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                          fontColor: Colors.black.withOpacity(
                            .6,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: screenSize.height * .04,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    width: screenSize.width * .04,
                  ),
                  Text(
                    '4.9',
                    style: AppFont.getSubtitle1(context, fontSize: 18),
                  ),
                  const Spacer(),
                  Text(
                    '100 Ratings',
                    style: AppFont.getCaptionFont(
                      context,
                      fontWeight: FontWeight.bold,
                      fontColor: Colors.black.withOpacity(
                        .6,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: screenSize.width * .11,
                ),
                child: Divider(
                  height: screenSize.height * .04,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.pin_drop,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: screenSize.width * .04,
                  ),
                  Text(
                    'Restaurant area',
                    style: AppFont.getSubtitle1(context, fontSize: 18),
                  ),
                  const Spacer(),
                  Text(
                    'Dubai Silicon Oasis',
                    style: AppFont.getCaptionFont(
                      context,
                      fontWeight: FontWeight.bold,
                      fontColor: Colors.black.withOpacity(
                        .6,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: screenSize.width * .11,
                ),
                child: Divider(
                  height: screenSize.height * .04,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.schedule,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: screenSize.width * .04,
                  ),
                  Text(
                    'Opening hours',
                    style: AppFont.getSubtitle1(context, fontSize: 18),
                  ),
                  const Spacer(),
                  Text(
                    '10:00AM - 3:00AM',
                    style: AppFont.getCaptionFont(
                      context,
                      fontWeight: FontWeight.bold,
                      fontColor: Colors.black.withOpacity(
                        .6,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: screenSize.width * .11,
                ),
                child: Divider(
                  height: screenSize.height * .04,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.motorcycle,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: screenSize.width * .04,
                  ),
                  Text(
                    'Delivery time',
                    style: AppFont.getSubtitle1(context, fontSize: 18),
                  ),
                  const Spacer(),
                  Text(
                    '24 mins',
                    style: AppFont.getCaptionFont(
                      context,
                      fontWeight: FontWeight.bold,
                      fontColor: Colors.black.withOpacity(
                        .6,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: screenSize.width * .11,
                ),
                child: Divider(
                  height: screenSize.height * .04,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.money,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: screenSize.width * .04,
                  ),
                  Text(
                    'Delivery fee',
                    style: AppFont.getSubtitle1(context, fontSize: 18),
                  ),
                  const Spacer(),
                  Text(
                    'EGP 9.00',
                    style: AppFont.getCaptionFont(
                      context,
                      fontWeight: FontWeight.bold,
                      fontColor: Colors.black.withOpacity(
                        .6,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
