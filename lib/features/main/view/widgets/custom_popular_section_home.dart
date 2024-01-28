import 'package:flutter/material.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/main/data/models/shortcut_model.dart';
import 'package:talabat_clone/features/main/view/widgets/custom_popular_item.dart';

class CustomPopularSectionHomeScreen extends StatelessWidget {
  const CustomPopularSectionHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.width * .04,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular today',
            style: AppFont.getTitleSmallFont(
              context,
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: screenSize.height * .02,
          ),
          SizedBox(
            height: screenSize.height * .18,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const CustomPopularItem(),
              separatorBuilder: (context, index) => SizedBox(
                width: screenSize.width * .04,
              ),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
