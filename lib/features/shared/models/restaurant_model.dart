
class RestaurantModel {
  int restaurantID;
  String restaurantName;
  String restaurantImage;
  String deliveryTime;
  String deliveryFee;
  String categoriesCaption;
  String restaurantArea;
  String openingHours;
  double avrgRate;
  int countReviews;
  RestaurantModel({
    required this.restaurantID,
    required this.restaurantName,
    required this.restaurantImage,
    required this.restaurantArea,
    required this.deliveryFee,
    required this.deliveryTime,
    required this.avrgRate,
    required this.countReviews,
    required this.categoriesCaption,
    required this.openingHours,
  });
}