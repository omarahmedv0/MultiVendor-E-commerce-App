import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/manager/route_manager.dart';
import 'package:talabat_clone/core/shared/widgets/custom_button.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/categories/mart_category/views/widgets/categories_section_mart.dart';
import 'package:talabat_clone/features/categories/mart_category/views/widgets/top_saver_section_mart.dart';
import 'package:talabat_clone/features/categories/mart_category/views/widgets/trending_section_mart.dart';
import 'package:talabat_clone/features/main/data/models/category_model.dart';

class MartCategoryScreen extends StatefulWidget {
  const MartCategoryScreen({super.key});

  @override
  State<MartCategoryScreen> createState() => _MartCategoryScreenState();
}

class _MartCategoryScreenState extends State<MartCategoryScreen> {
  List<CategoryModel> martCategories = [];
  int selectedPageIndex = 0;
  List<String> bannersData = [];
  @override
  void initState() {
    bannersData = [
      ImageAssetsManager.martBanner1Image,
      ImageAssetsManager.martBanner2Image,
      ImageAssetsManager.martBanner3Image,
      ImageAssetsManager.martBanner4Image,
    ];
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
        floatingActionButton: Padding(
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
            SliverAppBar(
      surfaceTintColor: Colors.white,

              snap: true,
              pinned: true,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                title: Text(
                  'Carrefour',
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screenSize.height * .04,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenSize.width * .04,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const TrendingNowSectionMart(),
                            SizedBox(
                              height: screenSize.height * .03,
                            ),
                            CategoriesSectionMart(
                                martCategories: martCategories),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * .03,
                      ),
                      CarouselSlider(
                        options: CarouselOptions(
                          onPageChanged: (index, reason) {
                            setState(() {
                              selectedPageIndex = index;
                            });
                          },
                          autoPlay: true,
                          height: screenSize.height * .17,
                          viewportFraction: 1,
                        ),
                        items: bannersData.map((image) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: screenSize.width * .04,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    image,
                                    width: screenSize.width,
                                    fit: BoxFit.fill,
                                    height: screenSize.height * .17,
                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                      SizedBox(
                        height: screenSize.height * .007,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(
                            bannersData.length,
                            (i) => AnimatedContainer(
                              duration: const Duration(
                                milliseconds: 350,
                              ),
                              margin: const EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                color: selectedPageIndex == i
                                    ? AppColor.primary
                                    : Colors.grey.withOpacity(.3),
                                borderRadius: BorderRadius.circular(
                                  180,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenSize.width * .04,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenSize.height * .03,
                      ),
                      const TopSaversSectionMart(),
                      SizedBox(
                        height: screenSize.height * .08,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
