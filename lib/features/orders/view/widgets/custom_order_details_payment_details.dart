import 'package:flutter/material.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/orders/view_model/models/order_model.dart';

class CustomOrderDetailsPaymentDetailsPart extends StatelessWidget {
  CustomOrderDetailsPaymentDetailsPart({
    super.key,
    required this.paymentDetailsModel,
  });
  PaymentDetailsModel paymentDetailsModel;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.width * .04,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                'EGP ${paymentDetailsModel.subprice}',
                style: AppFont.getCaption2Font(
                  context,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
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
                'EGP ${paymentDetailsModel.deliveryFee}',
                style: AppFont.getCaption2Font(
                  context,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const Divider(),
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
                'EGP ${paymentDetailsModel.totalPrice}',
                style: AppFont.getCaption2Font(
                  context,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
