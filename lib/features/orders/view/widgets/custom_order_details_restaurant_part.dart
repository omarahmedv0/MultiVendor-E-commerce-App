import 'package:flutter/material.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/orders/view_model/models/order_model.dart';
import 'package:talabat_clone/features/shared/models/product_model.dart';
import 'package:talabat_clone/features/shared/models/restaurant_model.dart';

class CustomOrderDetailsRestaurantPart extends StatelessWidget {
  CustomOrderDetailsRestaurantPart({
    super.key,
    required this.restaurantModel,
    required this.productsData,
  });
  RestaurantModel restaurantModel;
  List<ProductModel> productsData;
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your order from',
                    style: AppFont.getCaptionFont(context),
                  ),
                  SizedBox(
                    width: screenSize.width * .7,
                    child: Text(
                      restaurantModel.restaurantName,
                      style: AppFont.getCaption2Font(
                        context,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * .7,
                    child: Text(
                      "Area: ${restaurantModel.restaurantArea}",
                      style: AppFont.getCaption2Font(
                        context,
                        fontWeight: FontWeight.w500,
                        height: 1.2,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  restaurantModel.restaurantImage,
                  width: screenSize.width * .15,
                  fit: BoxFit.fill,
                  height: screenSize.width * .15,
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenSize.height * .02,
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => CustomProductItem(
              productModel: productsData[index],
            ),
            separatorBuilder: (context, index) => SizedBox(
              height: screenSize.height * .02,
            ),
            itemCount: productsData.length,
          ),
        ],
      ),
    );
  }
}

class CustomProductItem extends StatelessWidget {
  CustomProductItem({
    super.key,
    required this.productModel,
  });

  ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.1),
            borderRadius: BorderRadius.circular(
              5,
            ),
          ),
          child: Text(
            '1',
            style: AppFont.getSubtitle1(context),
          ),
        ),
        SizedBox(
          width: screenSize.width * .04,
        ),
        SizedBox(
          width: screenSize.width * .7,
          child: Text(
            productModel.productName,
            style: AppFont.getSubtitle1(context),
          ),
        ),
      ],
    );
  }
}
