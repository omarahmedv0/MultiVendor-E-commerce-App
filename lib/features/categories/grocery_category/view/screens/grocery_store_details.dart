import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/manager/route_manager.dart';
import 'package:talabat_clone/core/shared/widgets/custom_button.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/categories/grocery_category/view/screens/grocery_product_details.dart';
import 'package:talabat_clone/features/categories/grocery_category/view/widgets/custom_appbabar_grocery_screen.dart';
import 'package:talabat_clone/features/categories/grocery_category/view/widgets/custom_grocery_product_item.dart';
import 'package:talabat_clone/features/main/data/models/category_model.dart';

class GroceryStoreDetailsScreen extends StatefulWidget {
  const GroceryStoreDetailsScreen({super.key});

  @override
  State<GroceryStoreDetailsScreen> createState() =>
      _GroceryStoreDetailsScreenState();
}

class _GroceryStoreDetailsScreenState extends State<GroceryStoreDetailsScreen> {
  List<CategoryModel> productsCategories = [];
  int categorySelectedIndex = 0;
  @override
  void initState() {
    productsCategories = [
      CategoryModel(id: 1, name: 'Most Selling', image: ''),
      CategoryModel(id: 2, name: 'Milk and Rayeb', image: ''),
      CategoryModel(id: 3, name: 'Starters', image: ''),
      CategoryModel(id: 5, name: 'Offers', image: ''),
    ];
    super.initState();
  }

  bool sheetActive = false;
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
        floatingActionButton: sheetActive == true
            ? null
            : Padding(
                padding: EdgeInsets.only(bottom: screenSize.width * .04),
                child: CustomButton(
                   onTap: () {
              Navigator.pushNamed(
                context,
                AppRoutes.cartScreen,
              );
            },
                  isPadding: true,
                  text: 'View basket',
                ),
              ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            const CustomAppbarGroceryScreen(),
            SliverList(
              
              delegate: SliverChildListDelegate(
                
                [
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
                          setState(() {
                            sheetActive = true;
                          });
                          showBottomSheet(
                            context: context,
                            builder: (context) =>
                                const GroceryProductDetailsScreen(),
                          ).closed.then((value) => setState(() {
                                sheetActive = false;
                              }));
                        },
                        child: const CustomGroceryProductItem(),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
