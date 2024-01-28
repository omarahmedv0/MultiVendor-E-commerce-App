import 'package:flutter/material.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/orders/view/widgets/custom_contact_with_delivery__widget.dart';
import 'package:talabat_clone/features/orders/view/widgets/custom_divider.dart';
import 'package:talabat_clone/features/orders/view/widgets/custom_order_details_payment_details.dart';
import 'package:talabat_clone/features/orders/view/widgets/custom_order_details_restaurant_part.dart';
import 'package:talabat_clone/features/orders/view/widgets/order_details_delivery_part.dart';
import 'package:talabat_clone/features/orders/view_model/models/order_model.dart';

class CustomOrderDeliveringWidget extends StatelessWidget {
  CustomOrderDeliveringWidget({
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
                        color: AppColor.primary,
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
                'Your order on the way',
                style: AppFont.getSubtitle1(context),
              ),
              Text(
                '${orderData.deliveryManData.deliveryName} has picked up your order and is on the way to you. We\'ll let you know when they\'re nearby.',
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
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenSize.width * .04,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        orderData.deliveryManData.deliveryName,
                        style: AppFont.getCaption2Font(
                          context,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'is your delivery hero for today',
                        style: AppFont.getCaption2Font(
                          context,
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      ImageAssetsManager.deliveryAvatar,
                      width: screenSize.width * .2,
                    ),
                  ),
                ],
              ),
              const Divider(),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) =>
                        const CustomContactWithDeliveryWidget(),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Contact',
                      style: AppFont.getCaption2Font(
                        context,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: screenSize.width * .05,
                    ),
                  ],
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
