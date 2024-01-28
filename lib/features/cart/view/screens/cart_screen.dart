import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/manager/route_manager.dart';
import 'package:talabat_clone/core/shared/widgets/custom_button.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/cart/view/widgets/custom_cart_product_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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
            onTap: () {
              Navigator.pushNamed(
                context,
                AppRoutes.checkoutScreen,
              );
            },
            text: 'Checkout',
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
            'Basket',
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
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) =>
                      const CustomCartProductItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    height: screenSize.height * .02,
                  ),
                  itemCount: 5,
                ),
                SizedBox(
                  height: screenSize.height * .02,
                ),
                const Divider(),
                SizedBox(
                  height: screenSize.height * .01,
                ),
                Row(
                  children: [
                    Image.asset(
                      IconAssetsManager.orderIcon,
                      width: screenSize.width * .05,
                    ),
                    SizedBox(
                      width: screenSize.width * .02,
                    ),
                    Text(
                      'Add a note',
                      style: AppFont.getCaption2Font(
                        context,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: 'Anything else we need to know?',
                    hintStyle: AppFont.getCaption2Font(
                      context,
                      fontSize: 16,
                      fontColor: Colors.black.withOpacity(
                        .6,
                      ),
                    ),
                  ),
                ),
                const Divider(),
                SizedBox(
                  height: screenSize.height * .01,
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
                SizedBox(
                  height: screenSize.height * .09,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
