import 'package:flutter/material.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/styles/app_font.dart';

class CustomAppbarGroceryScreen extends StatelessWidget {
  const CustomAppbarGroceryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return SliverAppBar(
      
      snap: true,
      pinned: true,
      floating: true,
      surfaceTintColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                ImageAssetsManager.remasCover,
                width: screenSize.width,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: screenSize.height * .02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenSize.width * .04),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Remas Land',
                    style: AppFont.getTitleSmallFont(
                      context,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Grocery, Super market and Cackes',
                    style: AppFont.getCaptionFont(
                      context,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * .02,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: screenSize.width * .04,
                      ),
                      Text(
                        '4.9',
                        style: AppFont.getSubtitle1(context, fontSize: 18),
                      ),
                      const Spacer(),
                      Text(
                        '100 Ratings',
                        style: AppFont.getCaptionFont(
                          context,
                          fontWeight: FontWeight.bold,
                          fontColor: Colors.black.withOpacity(
                            .6,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: screenSize.width * .11,
                    ),
                    child: Divider(
                      height: screenSize.height * .02,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.motorcycle,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: screenSize.width * .04,
                      ),
                      Text(
                        'Delivery time',
                        style: AppFont.getSubtitle1(context, fontSize: 18),
                      ),
                      const Spacer(),
                      Text(
                        '24 mins',
                        style: AppFont.getCaptionFont(
                          context,
                          fontWeight: FontWeight.bold,
                          fontColor: Colors.black.withOpacity(
                            .6,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      expandedHeight: screenSize.height * .41,
      backgroundColor: Colors.white,
      leading: IconButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            Colors.white,
          ),
        ),
        icon: const Icon(
          Icons.arrow_back,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
