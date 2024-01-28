import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/shared/widgets/custom_button.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

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
            text: 'Order !',
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
          title: Text(
            'Checkout',
            style: AppFont.getTitleSmallFont(
              context,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * .04,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenSize.height * .02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your address',
                      style: AppFont.getTitleSmallFont(
                        context,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Change',
                      style: AppFont.getCaptionFont(
                        context,
                        fontColor: AppColor.primary,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * .015,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      IconAssetsManager.locationIcon,
                      width: screenSize.width * .05,
                    ),
                    SizedBox(
                      width: screenSize.width * .03,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'House',
                          style: AppFont.getCaption2Font(
                            context,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Al rigga, Green ccorner, 703, 7',
                          style: AppFont.getCaptionFont(
                            context,
                            fontColor: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Mobile number: +971 502407809',
                          style: AppFont.getCaptionFont(
                            context,
                            fontColor: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * .02,
                ),
                Container(
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(
                      .4,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          IconAssetsManager.deliveryIcon,
                          width: screenSize.width * .06,
                        ),
                        SizedBox(
                          width: screenSize.width * .03,
                        ),
                        Text(
                          'Within 36 mins',
                          style: AppFont.getCaption2Font(
                            context,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenSize.height * .02,
                ),
                Text(
                  'Pay with',
                  style: AppFont.getTitleSmallFont(
                    context,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: screenSize.height * .015,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.circle_outlined,
                      color: Colors.black.withOpacity(.2),
                    ),
                    SizedBox(
                      width: screenSize.width * .03,
                    ),
                    Image.asset(
                      IconAssetsManager.creditCardIcon,
                      width: screenSize.width * .06,
                    ),
                    SizedBox(
                      width: screenSize.width * .03,
                    ),
                    Text(
                      'Credit Card',
                      style: AppFont.getCaption2Font(
                        context,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * .01,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.check_circle,
                      color: AppColor.primary,
                    ),
                    SizedBox(
                      width: screenSize.width * .03,
                    ),
                    Image.asset(
                      IconAssetsManager.cashIcon,
                      width: screenSize.width * .06,
                    ),
                    SizedBox(
                      width: screenSize.width * .03,
                    ),
                    Text(
                      'Cash',
                      style: AppFont.getCaption2Font(
                        context,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * .04,
                ),
                Text(
                  'Payment summary',
                  style: AppFont.getTitleSmallFont(
                    context,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: screenSize.height * .015,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subtotal',
                      style: AppFont.getCaption2Font(
                        context,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'EGP 120.00',
                      style: AppFont.getCaption2Font(
                        context,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * .01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery fee',
                      style: AppFont.getCaption2Font(
                        context,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'EGP 20.00',
                      style: AppFont.getCaption2Font(
                        context,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * .012,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total amount',
                      style: AppFont.getCaption2Font(
                        context,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'EGP 140.00',
                      style: AppFont.getCaption2Font(
                        context,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
