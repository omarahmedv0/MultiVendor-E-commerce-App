import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/manager/route_manager.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/shared/widgets/custom_Store_item.dart';

class FoodCategoryScreen extends StatelessWidget {
  const FoodCategoryScreen({super.key});

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
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              surfaceTintColor: Colors.white,
              snap: true,
              pinned: true,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delivering to',
                      style: AppFont.getCaptionFont(
                        context,
                        fontColor: Colors.black.withOpacity(.4),
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * .002,
                    ),
                    Text(
                      'Al Satwa, 81A Street',
                      style: AppFont.getLabelFont(
                        context,
                        fontColor: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              expandedHeight: screenSize.height * .06,
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    padding: const EdgeInsets.only(
                      bottom: 1,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(
                        bottom: 10,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenSize.width * .04,
                          vertical: screenSize.width * .02,
                        ),
                        child: SizedBox(
                          height: screenSize.height * .05,
                          child: TextField(
                            style: AppFont.getCaptionFont(
                              context,
                              fontColor: Colors.black,
                            ),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              hintText: 'Search Restaurants',
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black.withOpacity(.4),
                              ),
                              hintStyle: AppFont.getCaptionFont(context),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              filled: true,
                              fillColor: Colors.grey.withOpacity(.1),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
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
                        Text(
                          'Great value deals',
                          style: AppFont.getTitleSmallFont(
                            context,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: screenSize.height * .02,
                        ),
                        SizedBox(
                          height: screenSize.height * .24,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  AppRoutes.restaurantDetailsScreen,
                                );
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      ImageAssetsManager.bazzokaLogo,
                                      width: screenSize.width * .4,
                                      height: screenSize.width * .32,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenSize.width * .4,
                                    child: Text(
                                      'Bazzoka Burger',
                                      maxLines: 1,
                                      style: AppFont.getSubtitle1(context),
                                    ),
                                  ),
                                  Text(
                                    'Burger, Chicken',
                                    style: AppFont.getCaptionFont(
                                      context,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: screenSize.width * .05,
                                      ),
                                      SizedBox(
                                        width: screenSize.width * .01,
                                      ),
                                      Text(
                                        '4.9',
                                        style: AppFont.getCaptionFont(
                                          context,
                                          fontColor: Colors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenSize.width * .01,
                                      ),
                                      Text(
                                        '(100+)',
                                        style: AppFont.getCaptionFont(
                                          context,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            separatorBuilder: (context, index) => SizedBox(
                              width: screenSize.width * .03,
                            ),
                            itemCount: 5,
                          ),
                        ),
                        SizedBox(
                          height: screenSize.height * .04,
                        ),
                        Text(
                          'All restaurants',
                          style: AppFont.getTitleSmallFont(
                            context,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: screenSize.height * .02,
                        ),
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                AppRoutes.restaurantDetailsScreen,
                              );
                            },
                            child: CustomStoreItem(
                              name: 'Bazooka',
                              category: 'Burger, chicken',
                              image: ImageAssetsManager.bazzokaLogo,
                            ),
                          ),
                          separatorBuilder: (context, index) => Divider(
                            color: Colors.grey.withOpacity(.2),
                            height: 25,
                          ),
                          itemCount: 10,
                        ),
                        SizedBox(
                          height: screenSize.height * .02,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
