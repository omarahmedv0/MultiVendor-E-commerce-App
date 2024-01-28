import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/manager/route_manager.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/categories/mart_category/views/widgets/custom_product_mart_icon.dart';
import 'package:talabat_clone/features/main/data/models/category_model.dart';

class MartProductsScreen extends StatefulWidget {
  const MartProductsScreen({super.key});

  @override
  State<MartProductsScreen> createState() => _MartProductsScreenState();
}

class _MartProductsScreenState extends State<MartProductsScreen> {
  List<CategoryModel> martCategories = [];
  int catSelectedIndex = 0;
  @override
  void initState() {
    getMartCategoryData();
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
          backgroundColor: Colors.white,
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                surfaceTintColor: Colors.white,
                snap: true,
                pinned: true,
                floating: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: false,
                  title: Text(
                    'Products',
                    style: AppFont.getSubtitle1(context),
                  ),
                ),
                expandedHeight: screenSize.height * .01,
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
                                hintText: 'Search Product',
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
                          itemBuilder: (context, index) => Container(
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              color: catSelectedIndex == index
                                  ? AppColor.primary
                                  : Colors.black.withOpacity(
                                      .2,
                                    ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                color: catSelectedIndex == index
                                    ? AppColor.primary
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Text(
                                martCategories[index].name,
                                style: AppFont.getCaptionFont(
                                  context,
                                  fontColor: catSelectedIndex == index
                                      ? Colors.white
                                      : Colors.black.withOpacity(
                                          .6,
                                        ),
                                ),
                              ),
                            ),
                          ),
                          separatorBuilder: (context, index) => SizedBox(
                            width: screenSize.width * .04,
                          ),
                          itemCount: martCategories.length,
                          scrollDirection: Axis.horizontal,
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
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: screenSize.height * .005,
                        mainAxisSpacing: screenSize.height * .02,
                        childAspectRatio: 1 / 1.3,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: List.generate(
                          martCategories.length,
                          (index) {
                            return InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  AppRoutes.martProductDetails,
                                );
                              },
                              child: const CustomProductMartIcon(),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  void getMartCategoryData() {
    martCategories = [
      CategoryModel(
        id: 1,
        name: 'Fruit & Veg',
        image: ImageAssetsManager.fruitCategory,
      ),
      CategoryModel(
        id: 2,
        name: 'Milk & Yogurts',
        image: ImageAssetsManager.milkCategory,
      ),
      CategoryModel(
        id: 3,
        name: 'Cheese & Butter',
        image: ImageAssetsManager.cheeseCategory,
      ),
      CategoryModel(
        id: 4,
        name: 'Bakery',
        image: ImageAssetsManager.bakeryCategory,
      ),
      CategoryModel(
        id: 5,
        name: 'Poultry, Eggs & Deli',
        image: ImageAssetsManager.eggsCategory,
      ),
      CategoryModel(
        id: 6,
        name: 'Sweets Snacks',
        image: ImageAssetsManager.sweetsCategory,
      ),
      CategoryModel(
        id: 7,
        name: 'Biscuits & Wafers',
        image: ImageAssetsManager.bascotCategory,
      ),
      CategoryModel(
        id: 8,
        name: 'Salted Snacks',
        image: ImageAssetsManager.snacksCategory,
      ),
      CategoryModel(
        id: 9,
        name: 'Nuts & seeds',
        image: ImageAssetsManager.seedsCategory,
      ),
      CategoryModel(
        id: 10,
        name: 'Beverages',
        image: ImageAssetsManager.beveragesCategory,
      ),
      CategoryModel(
        id: 11,
        name: 'Ice Cream',
        image: ImageAssetsManager.icecreemCategory,
      ),
    ];
  }
}
