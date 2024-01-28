
import 'package:flutter/material.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/styles/app_font.dart';

class CustomPopularItem extends StatelessWidget {
  const CustomPopularItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(
            1,
          ),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                ImageAssetsManager.bazzokaLogo,
                width: screenSize.width * .25,
                height: screenSize.width * .22,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        SizedBox(
          height: screenSize.height * .008,
        ),
        SizedBox(
          width: screenSize.width * .25,
          child: Text(
            'Bazzoka',
            maxLines: 2,
            textAlign: TextAlign.center,
            style: AppFont.getLabelFont(
              context,
              fontWeight: FontWeight.w600,
              fontSize: 20,
              height: 1.2,
            ),
          ),
        ),
        SizedBox(
          width: screenSize.width * .25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.schedule,
                size: screenSize.width * .04,
                color: Colors.grey,
              ),
              SizedBox(
                width: screenSize.width * .01,
              ),
              Text(
                '30 mins',
                textAlign: TextAlign.center,
                style: AppFont.getCaptionFont(
                  context,
                  fontSize: 14,
                  height: 1.2,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
