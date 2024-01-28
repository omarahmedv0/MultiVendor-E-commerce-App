import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/manager/route_manager.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/shared/widgets/custom_Store_item.dart';

class GroceryStoresScreen extends StatelessWidget {
  const GroceryStoresScreen({super.key});

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
                              hintText: 'Search Store',
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'All Stores',
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
                                AppRoutes.groceryStoreDetailsScreen,
                              );
                            },
                            child: CustomStoreItem(
                              name: 'Remas Land',
                              category: 'Gracery, Supermarket and Cakes',
                              image: ImageAssetsManager.remasLandLogo,
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
            ),
          ],
        ),
      ),
    );
  }
}
