import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/manager/route_manager.dart';
import 'package:talabat_clone/core/shared/widgets/custom_button.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/categories/food_category/view/widget/custom_appbar_restaurant_screen.dart';
import 'package:talabat_clone/features/categories/food_category/view/widget/custom_restaurant_plat_item.dart';
import 'package:talabat_clone/features/main/data/models/category_model.dart';

class RestaurantDetailsScreen extends StatefulWidget {
  const RestaurantDetailsScreen({super.key});

  @override
  State<RestaurantDetailsScreen> createState() =>
      _RestaurantDetailsScreenState();
}

class _RestaurantDetailsScreenState extends State<RestaurantDetailsScreen> {
  List<CategoryModel> productsCategories = [];
  int categorySelectedIndex = 0;
  @override
  void initState() {
    productsCategories = [
      CategoryModel(id: 1, name: 'All', image: ''),
      CategoryModel(id: 2, name: 'Trending', image: ''),
      CategoryModel(id: 3, name: 'Starters', image: ''),
      CategoryModel(id: 4, name: 'Free Soup', image: ''),
      CategoryModel(id: 5, name: 'Offers', image: ''),
    ];
    super.initState();
  }

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
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: screenSize.width * .04),
          child: CustomButton(
            isPadding: true,
             onTap: () {
              Navigator.pushNamed(
                context,
                AppRoutes.cartScreen,
              );
            },
            text: 'View basket',
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        backgroundColor: Colors.white,
        body: CustomScrollView(
          
          slivers: [
            const CustomAppBarRestaurantScreen(),
            SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(
                  height: screenSize.height * .02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenSize.width * .04,
                  ),
                  child: SizedBox(
                    height: screenSize.height * .04,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          setState(() {
                            categorySelectedIndex = index;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              productsCategories[index].name,
                              style: AppFont.getCaptionFont(
                                context,
                                fontColor: categorySelectedIndex == index
                                    ? AppColor.primary
                                    : Colors.black.withOpacity(.6),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            categorySelectedIndex == index
                                ? Container(
                                    height: 3,
                                    width: screenSize.width * .1,
                                    decoration: const BoxDecoration(
                                      color: AppColor.primary,
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                      separatorBuilder: (context, index) => SizedBox(
                        width: screenSize.width * .06,
                      ),
                      itemCount: productsCategories.length,
                    ),
                  ),
                ),
                SizedBox(
                  height: screenSize.height * .02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenSize.width * .04,
                  ),
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          AppRoutes.productDetailsResScreen,
                        );
                      },
                      child: const CustomRestaurantPlatItem(),
                    ),
                    separatorBuilder: (context, index) => Divider(
                      height: screenSize.height * .04,
                    ),
                    itemCount: 10,
                  ),
                ),
                SizedBox(
                  height: screenSize.height * .08,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
