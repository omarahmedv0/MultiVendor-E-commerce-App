import 'package:flutter/material.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/main/data/models/category_model.dart';

class CustomCategoryItem extends StatelessWidget {
  CustomCategoryItem({
    super.key,
    required this.categoryModel,
  });
  CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return Column(
      children: [
        Container(
          width: screenSize.width / 2.3,
          height: screenSize.height * .09,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(
              .1,
            ),
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          child: Image.asset(
            categoryModel.image,
          ),
        ),
        SizedBox(
          height: screenSize.height * .007,
        ),
        SizedBox(
          width: screenSize.width / 3.5,
          child: Text(
            categoryModel.name,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: AppFont.getLabelFont(
              context,
              fontWeight: FontWeight.w600,
              fontSize: 16,
              height: 1.2,
            ),
          ),
        ),
      ],
    );
  }
}
