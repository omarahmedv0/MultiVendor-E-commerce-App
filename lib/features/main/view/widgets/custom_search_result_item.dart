import 'package:flutter/material.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/shared/widgets/custom_Store_item.dart';

class CustomSearchResultItem extends StatelessWidget {
  const CustomSearchResultItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomStoreItem(
          name: 'Bazooka',
          category: 'Burger, chicken',
          image: ImageAssetsManager.bazzokaLogo,
        ),
        SizedBox(
          height: screenSize.height * .02,
        ),
        SizedBox(
          height: screenSize.height * .2,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    ImageAssetsManager.chickenPlat,
                    width: screenSize.width * .32,
                    fit: BoxFit.fill,
                    height: screenSize.width * .3,
                  ),
                ),
                SizedBox(
                  height: screenSize.height * .005,
                ),
                SizedBox(
                  width: screenSize.width * .32,
                  child: Text(
                    'Doutoo Elsada',
                    maxLines: 1,
                    style: AppFont.getSubtitle1(
                      context,
                      fontSize: 16,
                    ),
                  ),
                ),
                Text(
                  'EGP 99.00',
                  style: AppFont.getLabelFont(
                    context,
                    fontSize: 14,
                    height: 1.2,
                  ),
                ),
              ],
            ),
            separatorBuilder: (context, index) => SizedBox(
              width: screenSize.width * .04,
            ),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
