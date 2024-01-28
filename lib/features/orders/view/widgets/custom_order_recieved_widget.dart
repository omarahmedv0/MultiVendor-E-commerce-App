import 'package:flutter/material.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/orders/view/widgets/custom_divider.dart';
import 'package:talabat_clone/features/orders/view/widgets/custom_order_details_payment_details.dart';
import 'package:talabat_clone/features/orders/view/widgets/custom_order_details_restaurant_part.dart';
import 'package:talabat_clone/features/orders/view/widgets/order_details_delivery_part.dart';
import 'package:talabat_clone/features/orders/view_model/models/order_model.dart';

class CustomOrderRecievedWidget extends StatelessWidget {
  CustomOrderRecievedWidget({
    super.key,
    required this.orderData,
  });
  OrderModel orderData;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: screenSize.height * .02,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenSize.width * .04,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'ＥＮＪＯＹ!',
                  style: TextStyle(
                    color: AppColor.primary,
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                ),
              ),
              Text(
                'See you again',
                style: AppFont.getCaptionFont(
                  context,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        const CustomDivider(),
        OrderDetailsDeliveryPart(
          addressModel: orderData.addressData,
        ),
        const CustomDivider(),
        CustomOrderDetailsRestaurantPart(
          restaurantModel: orderData.restaurantData,
          productsData: orderData.productsOrdered,
        ),
        const CustomDivider(),
        CustomOrderDetailsPaymentDetailsPart(
          paymentDetailsModel: orderData.paymentDetailsModel,
        ),
        SizedBox(
          height: screenSize.height * .09,
        ),
      ],
    );
  }
}
