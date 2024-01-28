
import 'package:flutter/material.dart';
import 'package:talabat_clone/core/manager/route_manager.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/main/data/models/category_model.dart';

class CategoriesSectionHealthScreen extends StatelessWidget {
  const CategoriesSectionHealthScreen({
    super.key,
    required this.martCategories,
  });

  final List<CategoryModel> martCategories;

  @override
  Widget build(BuildContext context) {
                Size screenSize = MediaQuery.sizeOf(context);

    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Shop by category',
          style: AppFont.getTitleSmallFont(
            context,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: screenSize.height * .02,
        ),
        GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: screenSize.height * .01,
          mainAxisSpacing: screenSize.height * .01,
          childAspectRatio: 1 / 1.2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(
            martCategories.length,
            (index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.healthProductsScreen,
                  );
                },
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.center,
                  mainAxisAlignment:
                      MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      martCategories[index].image,
                      width: screenSize.width * .15,
                      height: screenSize.width * .15,
                    ),
                    SizedBox(
                      height: screenSize.height * .005,
                    ),
                    Text(
                      martCategories[index].name,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: AppFont.getSubtitle1(
                        context,
                        height: 1.2,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
