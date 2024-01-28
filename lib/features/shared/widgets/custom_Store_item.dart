import 'package:flutter/material.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/styles/app_font.dart';

class CustomStoreItem extends StatelessWidget {
   CustomStoreItem({
    super.key,
    required this.name,
    required this.category,
    required this.image,
  });

  String name;
  String category;
  String image;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            image,
            width: screenSize.width * .22,
          ),
        ),
        SizedBox(
          width: screenSize.width * .02,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
             name,
              style: AppFont.getLabelFont(
                context,
                fontWeight: FontWeight.w600,
                fontSize: 20,
                height: 1.2,
              ),
            ),
            Text(
             category,
              style: AppFont.getCaptionFont(
                context,
                fontColor: Colors.black.withOpacity(.6),
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: screenSize.width * .06,
                ),
                SizedBox(
                  width: screenSize.width * .01,
                ),
                Text(
                  '4.9',
                  style: AppFont.getCaptionFont(
                    context,
                    fontColor: Colors.black,
                  ),
                ),
                SizedBox(
                  width: screenSize.width * .01,
                ),
                Text(
                  '(100+)',
                  style: AppFont.getCaptionFont(
                    context,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.schedule,
                      size: screenSize.width * .04,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: screenSize.width * .01,
                    ),
                    Text(
                      '30 mins',
                      textAlign: TextAlign.center,
                      style: AppFont.getCaptionFont(
                        context,
                        fontColor: Colors.black,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: screenSize.width * .01,
                  ),
                  width: screenSize.width * .015,
                  height: screenSize.width * .015,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.6),
                    shape: BoxShape.circle,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.motorcycle,
                      size: screenSize.width * .04,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: screenSize.width * .01,
                    ),
                    Text(
                      'EGP 11.99',
                      textAlign: TextAlign.center,
                      style: AppFont.getCaptionFont(
                        context,
                        fontColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
