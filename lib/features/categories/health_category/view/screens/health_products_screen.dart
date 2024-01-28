import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/manager/route_manager.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/main/data/models/category_model.dart';

class HealthProductsScreen extends StatefulWidget {
  const HealthProductsScreen({super.key});

  @override
  State<HealthProductsScreen> createState() => _MartProductsScreenState();
}

class _MartProductsScreenState extends State<HealthProductsScreen> {
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
                        crossAxisSpacing: screenSize.height * .01,
                        mainAxisSpacing: screenSize.height * .02,
                        childAspectRatio: 1 / 1.3,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: List.generate(
                          10,
                          (index) {
                            return InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  AppRoutes.healthProductDetails,
                                );
                              },
                              child: FittedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        FittedBox(
                                          child: Container(
                                            padding: const EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(
                                                .1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                10,
                                              ),
                                            ),
                                            child: Image.asset(
                                              ImageAssetsManager
                                                  .saidlityProduct,
                                              width: screenSize.width * .3,
                                              height: screenSize.width * .3,
                                            ),
                                          ),
                                        ),
                                        Card(
                                          child: Container(
                                            padding: const EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                10,
                                              ),
                                            ),
                                            child: const Icon(
                                              Icons.add,
                                              color: AppColor.primary,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: screenSize.height * .01,
                                    ),
                                    SizedBox(
                                      width: screenSize.width * .34,
                                      child: Text(
                                        'Shower Gill',
                                        maxLines: 2,
                                        style: AppFont.getCaptionFont(
                                          context,
                                          height: 1.1,
                                          fontColor: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: screenSize.height * .005,
                                    ),
                                    SizedBox(
                                      width: screenSize.width * .22,
                                      child: Text(
                                        'EGP 12.00',
                                        maxLines: 2,
                                        style: AppFont.getCaptionFont(
                                          context,
                                          height: 1.2,
                                          fontColor: AppColor.primary,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
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
