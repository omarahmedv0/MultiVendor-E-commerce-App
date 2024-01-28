import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/manager/route_manager.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/main/data/models/category_model.dart';
import 'package:talabat_clone/features/main/data/models/shortcut_model.dart';
import 'package:talabat_clone/features/main/view/widgets/custom__appbar_section_home.dart';
import 'package:talabat_clone/features/main/view/widgets/custom_categories_section_home_screen.dart';
import 'package:talabat_clone/features/main/view/widgets/custom_category_item.dart';
import 'package:talabat_clone/features/main/view/widgets/custom_popular_section_home.dart';
import 'package:talabat_clone/features/main/view/widgets/custom_shortcut_item.dart';
import 'package:talabat_clone/features/main/view/widgets/custom_shortcut_section_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> categoriesData = [];
  List<ShortcutModel> shortcutData = [];
  List<String> bannersData = [];
  int selectedPageIndex = 0;
  @override
  void initState() {
    getBannersData();
    getShortCuts();
    getCategoriesData();
    super.initState();
  }

  void getBannersData() {
    bannersData = [
      ImageAssetsManager.banner4Image,
      ImageAssetsManager.banner3Image,
      ImageAssetsManager.banner2Image,
      ImageAssetsManager.banner1Image,
      ImageAssetsManager.banner5Image,
    ];
  }

  void getCategoriesData() {
    categoriesData = [
      CategoryModel(
        id: 1,
        name: 'Food',
        image: ImageAssetsManager.foodCategoryImage,
      ),
      CategoryModel(
        id: 2,
        name: 'Mart',
        image: ImageAssetsManager.martCategoryImage,
      ),
      CategoryModel(
        id: 3,
        name: 'Groceries',
        image: ImageAssetsManager.groceriesCategoryImage,
      ),
      CategoryModel(
        id: 4,
        name: 'Health & wellness',
        image: ImageAssetsManager.healthwellnessCategoryImage,
      ),
    ];
  }

  void getShortCuts() {
    shortcutData = [
      ShortcutModel(
        id: 1,
        name: 'Past Orders',
        image: IconAssetsManager.orderIcon,
      ),
      ShortcutModel(
        id: 2,
        name: 'Super Saver',
        image: IconAssetsManager.discountIcon,
      ),
      ShortcutModel(
        id: 4,
        name: 'Give Back',
        image: IconAssetsManager.givebackIcon,
      ),
      ShortcutModel(
        id: 5,
        name: 'Best Sellers',
        image: IconAssetsManager.starIcon,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColor.primaryLight,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBarSectionHomeScreen(),
            SizedBox(
              height: screenSize.height * .02,
            ),
            CustomCategoriesSectionHomeScreen(categoriesData: categoriesData),
            SizedBox(
              height: screenSize.height * .02,
            ),
            CustomShrotCutSectionHomeScreen(shortcutData: shortcutData),
            SizedBox(
              height: screenSize.height * .02,
            ),
            CarouselSlider(
              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    selectedPageIndex = index;
                  });
                },
                autoPlay: true,
                height: screenSize.height * .22,
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
                          height: screenSize.height * .22,
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
              height: screenSize.height * .02,
            ),
            const CustomPopularSectionHomeScreen(),
            SizedBox(
              height: screenSize.height * .02,
            ),
          ],
        ),
      ),
    );
  }
}
