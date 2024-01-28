import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/shared/widgets/custom_button.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/features/orders/view/widgets/custom_order_cancelled_widget.dart';
import 'package:talabat_clone/features/orders/view/widgets/custom_order_delivering_widget.dart';
import 'package:talabat_clone/features/orders/view/widgets/custom_order_pending_widget.dart';
import 'package:talabat_clone/features/orders/view/widgets/custom_order_preparing_widget.dart';
import 'package:talabat_clone/features/orders/view/widgets/custom_order_recieved_widget.dart';
import 'package:talabat_clone/features/orders/view_model/models/order_model.dart';

class OrderDetailsScreen extends StatelessWidget {
  OrderDetailsScreen({
    super.key,
    required this.orderData,
  });
  OrderModel orderData;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColor.primaryLight,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return SafeArea(
      child: Scaffold(
        
        backgroundColor: Colors.white,
        floatingActionButton:
            orderData.orderStatusID == 1 || orderData.orderStatusID == 2
                ? null
                : Padding(
                    padding: EdgeInsets.only(bottom: screenSize.width * .04),
                    child: CustomButton(
                      isPadding: true,
                      text: orderData.orderStatusID == 0
                          ? 'Cancel order'
                          : "Re-order",
                    ),
                  ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              snap: true,
              pinned: true,
              floating: true,
              expandedHeight: screenSize.height * .3,
              backgroundColor: AppColor.primaryLight,
              leading: IconButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.white,
                  ),
                ),
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Lottie.asset(
                  checkStatusOrderIcon(orderData.orderStatusID),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              checkStatusOrderBody(
                orderData.orderStatusID,
                orderData,
              ),
            ])),
          ],
        ),
      ),
    );
  }

  String checkStatusOrderIcon(int code) {
    if (code == 0) {
      return AnimationIcon.orderPlacedIcon;
    } else if (code == 1) {
      return AnimationIcon.prepareIcon;
    } else if (code == 2) {
      return AnimationIcon.deliveryIcon;
    } else if (code == 3) {
      return AnimationIcon.orderRecievedIcon;
    } else {
      return AnimationIcon.cancelledIcon;
    }
  }

  Widget checkStatusOrderBody(int code, OrderModel orderModel) {
    if (code == 0) {
      return CustomOrderPendingWidget(
        orderData: orderModel,
      );
    } else if (code == 1) {
      return CustomOrderPreparingWidget(
        orderData: orderModel,
      );
    } else if (code == 2) {
      return CustomOrderDeliveringWidget(
        orderData: orderModel,
      );
    } else if (code == 3) {
      return CustomOrderRecievedWidget(
        orderData: orderModel,
      );
    } else {
      return CustomOrderCancelledWidget(
        orderData: orderModel,
      );
    }
  }
}
