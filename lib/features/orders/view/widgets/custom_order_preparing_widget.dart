import 'package:flutter/material.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/orders/view/widgets/custom_divider.dart';
import 'package:talabat_clone/features/orders/view/widgets/custom_order_details_payment_details.dart';
import 'package:talabat_clone/features/orders/view/widgets/custom_order_details_restaurant_part.dart';
import 'package:talabat_clone/features/orders/view/widgets/order_details_delivery_part.dart';
import 'package:talabat_clone/features/orders/view_model/models/order_model.dart';

class CustomOrderPreparingWidget extends StatelessWidget {
  CustomOrderPreparingWidget({
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Estimated arrival',
                style: AppFont.getCaptionFont(context),
              ),
              Text(
                "${orderData.deliveryTime} mins",
                style: AppFont.getCaption2Font(
                  context,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: screenSize.height * .01,
              ),
              SizedBox(
                height: 5,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    height: 5,
                    width:
                        (screenSize.width / 3) - ((screenSize.width * .12) / 3),
                    decoration: BoxDecoration(
                        color: index == 1 || index == 0
                            ? AppColor.primary
                            : AppColor.primaryLight,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: screenSize.width * .02,
                  ),
                  itemCount: 3,
                ),
              ),
              SizedBox(
                height: screenSize.height * .01,
              ),
              Text(
                'Your order is in preparation',
                style: AppFont.getSubtitle1(context),
              ),
              Text(
                'We are preparing your order now. It will be ready in minutes',
                maxLines: 2,
                style: AppFont.getCaptionFont(
                  context,
                  fontWeight: FontWeight.w500,
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
          height: screenSize.height * .02,
        ),
      ],
    );
  }
}
