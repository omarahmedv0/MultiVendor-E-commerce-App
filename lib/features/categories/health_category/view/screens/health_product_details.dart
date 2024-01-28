import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/shared/widgets/custom_button.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';

class HealthProductDetails extends StatelessWidget {
  const HealthProductDetails({super.key});

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
        body: Column(
          children: [
            Container(
              color: Colors.grey.withOpacity(.1),
              child: Stack(
                children: [
                  Image.asset(
                    ImageAssetsManager.saidlityProduct,
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
                  ),
                ],
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
                    'Shower Gill',
                    style: AppFont.getTitleSmallFont(
                      context,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * .01,
                  ),
                  Text(
                    'EGP 12.00',
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
                  SizedBox(
                    height: screenSize.height * .02,
                  ),
                  CustomButton(
                    text: 'Add to basket',
                  ),
                  SizedBox(
                    height: screenSize.height * .03,
                  ),
                  Text(
                    'Shop more for less',
                    style: AppFont.getSubtitle1(context),
                  ),
                  SizedBox(
                    height: screenSize.height * .02,
                  ),
                  SizedBox(
                    height: screenSize.height * .2,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(
                                    .4,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                  child: Image.asset(
                                    ImageAssetsManager.saidlityProduct,
                                    width: screenSize.width * .24,
                                    fit: BoxFit.fill,
                                    height: screenSize.width * .24,
                                  ),
                                ),
                              ),
                              Card(
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: AppColor.primary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenSize.height * .01,
                          ),
                          SizedBox(
                            width: screenSize.width * .22,
                            child: Text(
                              'Shower Gill',
                              maxLines: 2,
                              style: AppFont.getCaptionFont(context,
                                  height: 1.2,
                                  fontColor: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            width: screenSize.width * .22,
                            child: Text(
                              'EGP 12.00',
                              maxLines: 2,
                              style: AppFont.getCaptionFont(
                                context,
                                height: 1.2,
                                fontColor: AppColor.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      separatorBuilder: (context, index) => SizedBox(
                        width: screenSize.width * .03,
                      ),
                      itemCount: 5,
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
