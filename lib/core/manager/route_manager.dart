import 'package:flutter/material.dart';
import 'package:talabat_clone/features/address/choose_address_manually_screen.dart';
import 'package:talabat_clone/features/address/welcome_screen.dart';
import 'package:talabat_clone/features/auth/view/screens/auth_screen.dart';
import 'package:talabat_clone/features/auth/view/screens/create_account_screen.dart';
import 'package:talabat_clone/features/auth/view/screens/forgot_password_screen.dart';
import 'package:talabat_clone/features/auth/view/screens/login_with_email_screen.dart';
import 'package:talabat_clone/features/cart/view/screens/cart_screen.dart';
import 'package:talabat_clone/features/categories/food_category/view/screens/food_category_screen.dart';
import 'package:talabat_clone/features/categories/food_category/view/screens/product_details_res_screen.dart';
import 'package:talabat_clone/features/categories/food_category/view/screens/restaurant_date_details_screen.dart';
import 'package:talabat_clone/features/categories/food_category/view/screens/restaurant_screen.dart';
import 'package:talabat_clone/features/categories/grocery_category/view/screens/grocery_store_details.dart';
import 'package:talabat_clone/features/categories/grocery_category/view/screens/grocery_stores_screen.dart';
import 'package:talabat_clone/features/categories/health_category/view/screens/health_category_screen.dart';
import 'package:talabat_clone/features/categories/health_category/view/screens/health_product_details.dart';
import 'package:talabat_clone/features/categories/health_category/view/screens/health_products_screen.dart';
import 'package:talabat_clone/features/categories/health_category/view/screens/health_stores_screen.dart';
import 'package:talabat_clone/features/categories/mart_category/views/screens/mart_category_screen.dart';
import 'package:talabat_clone/features/categories/mart_category/views/screens/mart_product_details.dart';
import 'package:talabat_clone/features/categories/mart_category/views/screens/mart_products_screen.dart';
import 'package:talabat_clone/features/categories/mart_category/views/screens/mart_stores_screen.dart';
import 'package:talabat_clone/features/checkout/view/screens/checkout_screen.dart';
import 'package:talabat_clone/features/main/view/screens/account_screen.dart';
import 'package:talabat_clone/features/main/view/screens/home_screen.dart';
import 'package:talabat_clone/features/main/view/screens/layout_view.dart';
import 'package:talabat_clone/features/main/view/screens/search_screen.dart';
import 'package:talabat_clone/features/offer/view/screens/offer_screen.dart';
import 'package:talabat_clone/features/orders/view/screens/order_details_screen.dart';
import 'package:talabat_clone/features/orders/view/screens/orders_screen.dart';

class AppRoutes {
  static const String welcomeScreen = "/";
  static const String layoutView = "/layoutView";
  static const String homeScreen = "/homeScreen";
  static const String searchScreen = "/searchScreen";
  static const String accountScreen = "/accountScreen";
  static const String foodCategoryScreen = "/foodCategoryScreen";
  static const String martCategoryScreen = "/martCategoryScreen";
  static const String martProductsScreen = "/martProductsScreen";
  static const String groceryStoresScreen = "/groceryStoresScreen";
  static const String healthStoresScreen = "/healthStoresScreen";
  static const String restaurantDetailsScreen = "/restaurantDetailsScreen";
  static const String restaurantDataDetailsScreen =
      "/restaurantDataDetailsScreen";
  static const String productDetailsResScreen = "/productDetailsResScreen";
  static const String martStoresScreen = "/martStoresScreen";
  static const String martProductDetails = "/martProductDetails";
  static const String groceryStoreDetailsScreen = "/groceryStoreDetailsScreen";
  static const String healthCategoryScreen = "/healthCategoryScreen";
  static const String healthProductsScreen = "/healthProductsScreen";
  static const String healthProductDetails = "/healthProductDetails";
  static const String authScreen = "/authScreen";
  static const String loginWithEmailScreen = "/loginWithEmailScreen";
  static const String createAccountScreen = "/CreateAccountScreen";
  static const String forgotPasswordScreen = "/forgotPasswordScreen";
  static const String cartScreen = "/cartScreen";
  static const String checkoutScreen = "/checkoutScreen";
  static const String ordersScreen = "/ordersScreen";
  static const String offerScreen = "/offerScreen";
  static const String chooseAddressManuallyScreen = "/chooseAddressManuallyScreen";

}

Map<String, Widget Function(BuildContext)> routeManager = {
  AppRoutes.welcomeScreen: (c) => const WelcomeScreen(),
  AppRoutes.layoutView: (c) => const LayoutView(),
  AppRoutes.homeScreen: (c) => const HomeScreen(),
  AppRoutes.searchScreen: (c) => const SearchScreen(),
  AppRoutes.accountScreen: (c) => const AccountScreen(),
  AppRoutes.foodCategoryScreen: (c) => const FoodCategoryScreen(),
  AppRoutes.martCategoryScreen: (c) => const MartCategoryScreen(),
  AppRoutes.martProductsScreen: (c) => const MartProductsScreen(),
  AppRoutes.groceryStoresScreen: (c) => const GroceryStoresScreen(),
  AppRoutes.healthStoresScreen: (c) => const HealthStoresScreen(),
  AppRoutes.restaurantDetailsScreen: (c) => const RestaurantDetailsScreen(),
  AppRoutes.restaurantDataDetailsScreen: (c) =>
      const RestaurantDataDetailsScreen(),
  AppRoutes.productDetailsResScreen: (c) => const ProductDetailsResScreen(),
  AppRoutes.martStoresScreen: (c) => const MartStoresScreen(),
  AppRoutes.martProductDetails: (c) => const MartProductDetails(),
  AppRoutes.groceryStoreDetailsScreen: (c) => const GroceryStoreDetailsScreen(),
  AppRoutes.healthCategoryScreen: (c) => const HealthCategoryScreen(),
  AppRoutes.healthProductsScreen: (c) => const HealthProductsScreen(),
  AppRoutes.healthProductDetails: (c) => const HealthProductDetails(),
  AppRoutes.authScreen: (c) => const AuthScreen(),
  AppRoutes.loginWithEmailScreen: (c) => const LoginWithEmailScreen(),
  AppRoutes.createAccountScreen: (c) => const CreateAccountScreen(),
  AppRoutes.forgotPasswordScreen: (c) => const ForgotPasswordScreen(),
  AppRoutes.cartScreen: (c) => const CartScreen(),
  AppRoutes.checkoutScreen: (c) => const CheckoutScreen(),
  AppRoutes.ordersScreen: (c) => const OrdersScreen(),
  AppRoutes.offerScreen: (c) => const OfferScreen(),
  AppRoutes.chooseAddressManuallyScreen: (c) =>  ChooseAddressManuallyScreen(),

};
