class RestaurantModel {
  final String picture;

  RestaurantModel({
    required this.picture,
  });
}

List<RestaurantModel> restaurantItems = [
  RestaurantModel(
    picture: 'assets/images/header-1.png',
  ),
  RestaurantModel(
    picture: 'assets/images/header-2.png',
  ),
  RestaurantModel(
    picture: 'assets/images/header-3.png',
  ),
  RestaurantModel(
    picture: 'assets/images/header-4.png',
  ),
];
