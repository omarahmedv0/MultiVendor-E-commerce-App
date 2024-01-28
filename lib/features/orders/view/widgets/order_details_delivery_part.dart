import 'package:flutter/material.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/address/models/address_model.dart';
import 'package:talabat_clone/features/orders/view_model/models/order_model.dart';

class OrderDetailsDeliveryPart extends StatelessWidget {
  OrderDetailsDeliveryPart({
    super.key,
    required this.addressModel,
  });
  AddressModel addressModel;
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
            'Delivering to',
            style: AppFont.getCaptionFont(
              context,
            ),
          ),
          Text(
            addressModel.addressLabel,
            style: AppFont.getCaption2Font(
              context,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "${addressModel.addressCountry}, ${addressModel.addressCity}, ${addressModel.addressStreet} ${addressModel.addetionalDetails}",
            style: AppFont.getCaption2Font(
              context,
              fontWeight: FontWeight.w500,
              height: 1.2,
              fontSize: 16,
            ),
          ),
          Text(
            "Mobile Number: ${addressModel.mobileNO}",
            style: AppFont.getCaption2Font(
              context,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
