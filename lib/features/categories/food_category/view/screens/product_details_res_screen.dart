import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/shared/widgets/custom_button.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';

class ProductDetailsResScreen extends StatelessWidget {
  const ProductDetailsResScreen({super.key});

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
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: screenSize.width * .04),
          child: CustomButton(
            isPadding: true,
            text: 'Add to basket',
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    ImageAssetsManager.chickenPlat,
                    width: screenSize.width,
                    fit: BoxFit.fill,
                    height: screenSize.height * .35,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.close,
                      ),
                    ),
                  )
                ],
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
                      'Chinken Schezwan Fried Rice',
                      style: AppFont.getTitleSmallFont(
                        context,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * .02,
                    ),
                    Text(
                      'Golden fried Chicken pieces wok -tossed with hot and spicy schezwan fried rice with vegetables like green beans, carrots and bell peppers and egg',
                      maxLines: 10,
                      style: AppFont.getCaptionFont(
                        context,
                        fontWeight: FontWeight.bold,
                        fontColor: Colors.black.withOpacity(.6),
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * .02,
                    ),
                    Text(
                      'EGP 120.00',
                      style: AppFont.getSubtitle1(
                        context,
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * .01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(
                                  0,
                                  2,
                                ), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 10,
                              left: 10,
                              top: 5,
                              bottom: 5,
                            ),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.remove,
                                    color: AppColor.primary,
                                    size: 17,
                                  ),
                                ),
                                SizedBox(
                                  width: screenSize.width * 0.02,
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: screenSize.width * 0.05,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: screenSize.width * 0.02,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.add,
                                    color: AppColor.primary,
                                    size: 17,
                                  ),
                                ),
                              ],
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
      ),
    );
  }
}
