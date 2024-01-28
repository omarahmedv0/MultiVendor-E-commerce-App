import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat_clone/core/manager/assets_manager.dart';
import 'package:talabat_clone/core/styles/app_color.dart';
import 'package:talabat_clone/core/styles/app_font.dart';
import 'package:talabat_clone/features/address/models/address_model.dart';
import 'package:talabat_clone/features/orders/view/screens/order_details_screen.dart';
import 'package:talabat_clone/features/orders/view/widgets/custom_order_item.dart';
import 'package:talabat_clone/features/orders/view_model/models/order_model.dart';
import 'package:talabat_clone/features/shared/models/product_model.dart';
import 'package:talabat_clone/features/shared/models/restaurant_model.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  List<OrderModel> ordersData = [];
  @override
  void initState() {
    getOrdersData();
    super.initState();
  }

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
        backgroundColor: Colors.white,
        appBar: AppBar(
          bottom: const PreferredSize(
            preferredSize: Size(1, 10),
            child: Divider(),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          foregroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Text(
            'Your orders',
            style: AppFont.getTitleSmallFont(
              context,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => CustomOrderItem(
                  orderData: ordersData[index],
                ),
                separatorBuilder: (context, index) => Divider(
                  height: screenSize.height * .04,
                  color: Colors.grey.withOpacity(
                    .4,
                  ),
                ),
                itemCount: ordersData.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getOrdersData() {
    ordersData = [
      OrderModel(
        orderID: 132132,
        orderedDate: '24 September 2023 16:17',
        orderStatusID: 0,
        orderStatusMessage: 'Pending',
        deliveryTime: '22',
        addressData: AddressModel(
          addressID: 1,
          addressLabel: 'Home',
          addressCountry: 'Egypt',
          addressCity: 'Cairo',
          addressStreet: 'Elmohandseen',
          addetionalDetails: '',
          mobileNO: '01275318664',
          lat: 0,
          long: 0,
        ),
        restaurantData: RestaurantModel(
          restaurantID: 1,
          restaurantName: 'Bazzoka restaurant',
          restaurantImage: ImageAssetsManager.bazzokaLogo,
          restaurantArea: 'Cairo Silicon Oasis',
          deliveryFee: '20',
          deliveryTime: '22',
          avrgRate: 4.9,
          countReviews: 216,
          categoriesCaption: 'Chicken, Burger',
          openingHours: '10:00AM - 3:00AM',
        ),
        productsOrdered: [
          ProductModel(
            productID: 1,
            productName: 'Chicken Schezwan Fried Rice',
            productDescreption:
                'Golden fried Chicken pieces wok- tossed with hotand spicy schezwan fried rice with vegetables like green',
            productImage: ImageAssetsManager.chickenPlat,
            productPrice: '120.00',
          ),
        ],
        deliveryManData: DeliveryManModel(
          deliveryID: 1,
          deliveryName: 'Omar',
          deliveryPhone: '01075321922',
        ),
        paymentDetailsModel: PaymentDetailsModel(
          subprice: '120.00',
          deliveryFee: '30.00',
          totalPrice: '150.00',
        ),
      ),
      OrderModel(
        orderID: 222313224,
        orderedDate: '20 September 2023 16:17',
        orderStatusID: 1,
        orderStatusMessage: 'Preparing',
        deliveryTime: '38',
        addressData: AddressModel(
          addressID: 2,
          addressLabel: 'Home',
          addressCountry: 'Egypt',
          addressCity: 'Alex',
          addressStreet: 'Elmetroo',
          addetionalDetails: '',
          mobileNO: '01275318664',
          lat: 0,
          long: 0,
        ),
        restaurantData: RestaurantModel(
          restaurantID: 2,
          restaurantName: 'Remas Land',
          restaurantImage: ImageAssetsManager.remasLandLogo,
          restaurantArea: 'Cairo Silicon Oasis',
          deliveryFee: '20',
          deliveryTime: '22',
          avrgRate: 4.9,
          countReviews: 216,
          categoriesCaption: 'Milk',
          openingHours: '10:00AM - 3:00AM',
        ),
        productsOrdered: [
          ProductModel(
            productID: 2,
            productName: 'Happy New year Offer',
            productDescreption: '',
            productImage: ImageAssetsManager.remasProduct,
            productPrice: '120.00',
          ),
        ],
        deliveryManData: DeliveryManModel(
          deliveryID: 1,
          deliveryName: 'Omar',
          deliveryPhone: '01075321922',
        ),
        paymentDetailsModel: PaymentDetailsModel(
          subprice: '160.00',
          deliveryFee: '30.00',
          totalPrice: '190.00',
        ),
      ),
      OrderModel(
        orderID: 1441876,
        orderedDate: '24 September 2023 16:17',
        orderStatusID: 2,
        orderStatusMessage: 'On the way',
        deliveryTime: '22',
        addressData: AddressModel(
          addressID: 1,
          addressLabel: 'Home',
          addressCountry: 'Egypt',
          addressCity: 'Cairo',
          addressStreet: 'Elmohandseen',
          addetionalDetails: '',
          mobileNO: '01275318664',
          lat: 0,
          long: 0,
        ),
        restaurantData: RestaurantModel(
          restaurantID: 1,
          restaurantName: 'Bazzoka restaurant',
          restaurantImage: ImageAssetsManager.bazzokaLogo,
          restaurantArea: 'Cairo Silicon Oasis',
          deliveryFee: '20',
          deliveryTime: '22',
          avrgRate: 4.9,
          countReviews: 216,
          categoriesCaption: 'Chicken, Burger',
          openingHours: '10:00AM - 3:00AM',
        ),
        productsOrdered: [
          ProductModel(
            productID: 1,
            productName: 'Chicken Schezwan Fried Rice',
            productDescreption:
                'Golden fried Chicken pieces wok- tossed with hotand spicy schezwan fried rice with vegetables like green',
            productImage: ImageAssetsManager.chickenPlat,
            productPrice: '120.00',
          ),
        ],
        deliveryManData: DeliveryManModel(
          deliveryID: 1,
          deliveryName: 'Omar',
          deliveryPhone: '01075321922',
        ),
        paymentDetailsModel: PaymentDetailsModel(
          subprice: '20.00',
          deliveryFee: '30.00',
          totalPrice: '50.00',
        ),
      ),
      OrderModel(
        orderID: 264365,
        orderedDate: '20 September 2023 16:17',
        orderStatusID: 3,
        orderStatusMessage: 'Delivered',
        deliveryTime: '38',
        addressData: AddressModel(
          addressID: 2,
          addressLabel: 'Home',
          addressCountry: 'Egypt',
          addressCity: 'Alex',
          addressStreet: 'Elmetroo',
          addetionalDetails: '',
          mobileNO: '01275318664',
          lat: 0,
          long: 0,
        ),
        restaurantData: RestaurantModel(
          restaurantID: 2,
          restaurantName: 'Remas Land',
          restaurantImage: ImageAssetsManager.remasLandLogo,
          restaurantArea: 'Cairo Silicon Oasis',
          deliveryFee: '20',
          deliveryTime: '22',
          avrgRate: 4.9,
          countReviews: 216,
          categoriesCaption: 'Milk',
          openingHours: '10:00AM - 3:00AM',
        ),
        productsOrdered: [
          ProductModel(
            productID: 2,
            productName: 'Happy New year Offer',
            productDescreption: '',
            productImage: ImageAssetsManager.remasProduct,
            productPrice: '120.00',
          ),
        ],
        deliveryManData: DeliveryManModel(
          deliveryID: 1,
          deliveryName: 'Omar',
          deliveryPhone: '01075321922',
        ),
        paymentDetailsModel: PaymentDetailsModel(
          subprice: '320.00',
          deliveryFee: '230.00',
          totalPrice: '550.00',
        ),
      ),
      OrderModel(
        orderID: 287865,
        orderedDate: '20 September 2023 16:17',
        orderStatusID: 4,
        orderStatusMessage: 'Cancelled',
        deliveryTime: '38',
        addressData: AddressModel(
          addressID: 2,
          addressLabel: 'Home',
          addressCountry: 'Egypt',
          addressCity: 'Alex',
          addressStreet: 'Elmetroo',
          addetionalDetails: '',
          mobileNO: '01275318664',
          lat: 0,
          long: 0,
        ),
        restaurantData: RestaurantModel(
          restaurantID: 2,
          restaurantName: 'Remas Land',
          restaurantImage: ImageAssetsManager.remasLandLogo,
          restaurantArea: 'Cairo Silicon Oasis',
          deliveryFee: '20',
          deliveryTime: '22',
          avrgRate: 4.9,
          countReviews: 216,
          categoriesCaption: 'Milk',
          openingHours: '10:00AM - 3:00AM',
        ),
        productsOrdered: [
          ProductModel(
            productID: 2,
            productName: 'Happy New year Offer',
            productDescreption: '',
            productImage: ImageAssetsManager.remasProduct,
            productPrice: '120.00',
          ),
        ],
        deliveryManData: DeliveryManModel(
          deliveryID: 1,
          deliveryName: 'Omar',
          deliveryPhone: '01075321922',
        ),
        paymentDetailsModel: PaymentDetailsModel(
          subprice: '120.00',
          deliveryFee: '30.00',
          totalPrice: '150.00',
        ),
      ),
    ];
  }
}
