import 'package:flutter/material.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/manager/route_manager.dart';
import 'package:talabat_clone/core/styles/app_font.dart';

class CustomAppBarRestaurantScreen extends StatelessWidget {
  const CustomAppBarRestaurantScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return SliverAppBar(
      surfaceTintColor: Colors.white,
      snap: true,
      pinned: true,
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        background: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                ImageAssetsManager.restaurantsCover,
                width: screenSize.width,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: screenSize.width * .04,
              ),
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadiusDirectional.circular(
                  10,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(
                    10,
                  ),
                ),
                child: SizedBox(
                  height: screenSize.height * .2,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              ImageAssetsManager.bazzokaLogo,
                              width: screenSize.width * .22,
                            ),
                          ),
                          SizedBox(
                            width: screenSize.width * .02,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: screenSize.width * .5,
                                child: Text(
                                  "Bazzoka",
                                  style: AppFont.getLabelFont(
                                    context,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                    height: 1.2,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenSize.width * .5,
                                child: Text(
                                  "Burger, Chickens",
                                  style: AppFont.getCaptionFont(
                                    context,
                                    fontColor: Colors.black.withOpacity(.6),
                                    fontWeight: FontWeight.w600,
                                    height: 1.6,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenSize.width * .5,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: screenSize.width * .04,
                                    ),
                                    SizedBox(
                                      width: screenSize.width * .01,
                                    ),
                                    Text(
                                      '4.9',
                                      style: AppFont.getCaptionFont(
                                        context,
                                        fontColor: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenSize.width * .01,
                                    ),
                                    SizedBox(
                                      width: screenSize.width * .3,
                                      child: Text(
                                        '(100 Ratings)',
                                        style: AppFont.getCaptionFont(
                                          context,
                                          fontColor:
                                              Colors.black.withOpacity(.4),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    AppRoutes.restaurantDataDetailsScreen,
                                  );
                                },
                                child: Icon(
                                  Icons.info_outline,
                                  size: screenSize.width * .06,
                                  color: Colors.black.withOpacity(.4),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenSize.height * .012,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Delivery fee',
                                style: AppFont.getCaptionFont(
                                  context,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'EGP 19.99',
                                style: AppFont.getCaptionFont(
                                  context,
                                  fontColor: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: screenSize.width * .04,
                            ),
                            height: screenSize.height * .07,
                            width: 1,
                            color: Colors.black.withOpacity(.4),
                          ),
                          Column(
                            children: [
                              Text(
                                'Delivery time',
                                style: AppFont.getCaptionFont(
                                  context,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '24 mins',
                                style: AppFont.getCaptionFont(
                                  context,
                                  fontColor: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      expandedHeight: screenSize.height * .34,
      backgroundColor: Colors.white,
      leading: IconButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            Colors.white,
          ),
        ),
        icon: const Icon(
          Icons.arrow_back,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
