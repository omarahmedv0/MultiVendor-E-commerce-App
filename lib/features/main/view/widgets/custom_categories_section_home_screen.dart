
import 'package:flutter/material.dart';
import 'package:talabat_clone/core/manager/route_manager.dart';
import 'package:talabat_clone/features/main/data/models/category_model.dart';
import 'package:talabat_clone/features/main/view/widgets/custom_category_item.dart';

class CustomCategoriesSectionHomeScreen extends StatelessWidget {
  const CustomCategoriesSectionHomeScreen({
    super.key,
    required this.categoriesData,
  });

  final List<CategoryModel> categoriesData;

  @override
  Widget build(BuildContext context) {
        Size screenSize = MediaQuery.sizeOf(context);

    return Column(
      children: [
        SizedBox(
          height: screenSize.height * .14,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * .04,
            ),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  if (categoriesData[index].id == 1) {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.foodCategoryScreen,
                    );
                  } else if (categoriesData[index].id == 2) {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.martStoresScreen,
                    );
                  } else if (categoriesData[index].id == 3) {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.groceryStoresScreen,
                    );
                  } else if (categoriesData[index].id == 4) {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.healthStoresScreen,
                    );
                  }
                },
                child: CustomCategoryItem(
                  categoryModel: categoriesData[index],
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(
                width: screenSize.width * .03,
              ),
              itemCount: 2,
            ),
          ),
        ),
        SizedBox(
          height: screenSize.height * .14,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * .04,
            ),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  if (categoriesData[index + 2].id == 1) {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.foodCategoryScreen,
                    );
                  } else if (categoriesData[index + 2].id == 2) {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.martStoresScreen,
                    );
                  } else if (categoriesData[index + 2].id == 3) {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.groceryStoresScreen,
                    );
                  } else if (categoriesData[index + 2].id == 4) {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.healthStoresScreen,
                    );
                  }
                },
                child: CustomCategoryItem(
                  categoryModel: categoriesData[index + 2],
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(
                width: screenSize.width * .03,
              ),
              itemCount: 2,
            ),
          ),
        ),
      ],
    );
  }
}
