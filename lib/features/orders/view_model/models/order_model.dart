import 'package:talabat_clone/features/address/models/address_model.dart';
import 'package:talabat_clone/features/shared/models/product_model.dart';
import 'package:talabat_clone/features/shared/models/restaurant_model.dart';

class OrderModel {
  int orderID;
  int orderStatusID;
  String orderStatusMessage;
  PaymentDetailsModel paymentDetailsModel;
  String orderedDate;
  String deliveryTime;
  AddressModel addressData;
  RestaurantModel restaurantData;
  List<ProductModel> productsOrdered;
  DeliveryManModel deliveryManData;
  OrderModel({
    required this.orderID,
    required this.orderedDate,
    required this.orderStatusID,
    required this.orderStatusMessage,
    required this.deliveryTime,
    required this.restaurantData,
    required this.addressData,
    required this.productsOrdered,
    required this.deliveryManData,
    required this.paymentDetailsModel,
  });
}

class PaymentDetailsModel {
  String totalPrice;
  String subprice;
  String deliveryFee;
  PaymentDetailsModel({
    required this.subprice,
    required this.deliveryFee,
    required this.totalPrice,
  });
}

// 0 pending, 1 preparing, 2 delivering, 3 delivered
class DeliveryManModel {
  int deliveryID;
  String deliveryName;
  String deliveryPhone;
  DeliveryManModel({
    required this.deliveryID,
    required this.deliveryName,
    required this.deliveryPhone,
  });
}
