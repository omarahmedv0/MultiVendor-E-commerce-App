import 'package:flutter/material.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/orders/view/screens/order_details_screen.dart';
import 'package:talabat_clone/features/orders/view_model/models/order_model.dart';
import 'package:talabat_clone/features/rate/view/screens/rate_order_screen.dart';

class CustomOrderItem extends StatelessWidget {
  CustomOrderItem({
    super.key,
    required this.orderData,
  });
  OrderModel orderData;
  Color checkOrderStatusMessage(int code) {
    if (code == 0) {
      return Colors.brown;
    } else if (code == 1) {
      return Colors.orange;
    } else if (code == 2) {
      return Colors.blue;
    } else if (code == 3) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.width * .04,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderDetailsScreen(
                    orderData: orderData,
                  ),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    orderData.restaurantData.restaurantImage,
                    fit: BoxFit.fill,
                    width: screenSize.width * .15,
                    height: screenSize.width * .15,
                  ),
                ),
                SizedBox(
                  width: screenSize.width * .03,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      orderData.restaurantData.restaurantName,
                      style: AppFont.getCaption2Font(
                        context,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      orderData.orderStatusMessage,
                      style: AppFont.getCaptionFont(
                        context,
                        fontColor:
                            checkOrderStatusMessage(orderData.orderStatusID),
                      ),
                    ),
                    Text(
                      orderData.orderedDate,
                      style: AppFont.getCaptionFont(
                        context,
                      ),
                    ),
                    Text(
                      'Order ID: ${orderData.orderID}',
                      style: AppFont.getCaptionFont(
                        context,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    SizedBox(
                      height: screenSize.height * .05,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: screenSize.width * .05,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenSize.height * .015,
          ),
          checkOrderStatusButton(orderData.orderStatusID, screenSize, context),
        ],
      ),
    );
  }

  Widget checkOrderStatusButton(
      int code, Size screenSize, BuildContext context) {
    if (code == 0) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.close,
                color: AppColor.primary,
                size: screenSize.width * .05,
              ),
              SizedBox(
                width: screenSize.width * .02,
              ),
              Text(
                'Cancel order',
                style: AppFont.getCaptionFont(
                  context,
                  fontWeight: FontWeight.w500,
                  fontColor: AppColor.primary,
                ),
              ),
            ],
          ),
        ],
      );
    } else if (code == 1) {
      return const SizedBox();
    } else if (code == 2) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                IconAssetsManager.deliveryIcon,
                color: AppColor.primary,
                width: screenSize.width * .05,
              ),
              SizedBox(
                width: screenSize.width * .02,
              ),
              Text(
                'Tracking',
                style: AppFont.getCaptionFont(
                  context,
                  fontWeight: FontWeight.w500,
                  fontColor: AppColor.primary,
                ),
              ),
            ],
          ),
        ],
      );
    } else if (code == 3) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Image.asset(
                  IconAssetsManager.reorderIcon,
                  color: AppColor.primary,
                  width: screenSize.width * .05,
                ),
                SizedBox(
                  width: screenSize.width * .02,
                ),
                Text(
                  'Re-order',
                  style: AppFont.getCaptionFont(
                    context,
                    fontWeight: FontWeight.w500,
                    fontColor: AppColor.primary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: screenSize.width * .16,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) =>  RateOrderScreen(),
              );
            },
            child: Row(
              children: [
                Image.asset(
                  IconAssetsManager.happyIcon,
                  color: AppColor.primary,
                  width: screenSize.width * .05,
                ),
                SizedBox(
                  width: screenSize.width * .02,
                ),
                Text(
                  'Rate order',
                  style: AppFont.getCaptionFont(
                    context,
                    fontWeight: FontWeight.w500,
                    fontColor: AppColor.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                IconAssetsManager.reorderIcon,
                color: AppColor.primary,
                width: screenSize.width * .05,
              ),
              SizedBox(
                width: screenSize.width * .02,
              ),
              Text(
                'Re-order',
                style: AppFont.getCaptionFont(
                  context,
                  fontWeight: FontWeight.w500,
                  fontColor: AppColor.primary,
                ),
              ),
            ],
          ),
        ],
      );
    }
  }
}
