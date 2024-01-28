import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/manager/route_manager.dart';
import 'package:talabat_clone/core/shared/widgets/custom_button.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/categories/health_category/view/widgets/categories_section_health_screen.dart';
import 'package:talabat_clone/features/categories/health_category/view/widgets/topsavers_section_health_screen.dart';
import 'package:talabat_clone/features/categories/health_category/view/widgets/trending_section_health_screen.dart';
import 'package:talabat_clone/features/main/data/models/category_model.dart';

class HealthCategoryScreen extends StatefulWidget {
  const HealthCategoryScreen({super.key});

  @override
  State<HealthCategoryScreen> createState() => _HealthCategoryScreenState();
}

class _HealthCategoryScreenState extends State<HealthCategoryScreen> {
  List<CategoryModel> martCategories = [];
  int selectedPageIndex = 0;
  List<String> bannersData = [];
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
              snap: true,
              surfaceTintColor: Colors.white,
              pinned: true,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                title: Text(
                  'Saidlity',
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
                            const TrendingSectionHealthScreen(),
                            SizedBox(
                              height: screenSize.height * .03,
                            ),
                            CategoriesSectionHealthScreen(
                                martCategories: martCategories),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * .03,
                      ),
                      const TopSaverSectionHealthScreen(),
                      SizedBox(
                        height: screenSize.height * .06,
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
        name: 'Baby & Maternity',
        image: ImageAssetsManager.babyCategory,
      ),
      CategoryModel(
        id: 2,
        name: 'Beauty & Cosmetics',
        image: ImageAssetsManager.beatyCategory,
      ),
      CategoryModel(
        id: 3,
        name: 'Body Care & Hygien',
        image: ImageAssetsManager.bodyCareCategory,
      ),
      CategoryModel(
        id: 4,
        name: 'Common Symptoms',
        image: ImageAssetsManager.commonSymptomsCategory,
      ),
      CategoryModel(
        id: 5,
        name: 'First Aid',
        image: ImageAssetsManager.fisrtAdCategory,
      ),
    ];
  }
}
