import 'package:flutter/material.dart';
import 'package:list_makanan/model/restaurant/restauran_model.dart';

class PictureHeaderCard extends StatelessWidget {
  final RestaurantModel restaurantModel;
  const PictureHeaderCard({
    super.key,
    required this.restaurantModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 300,
      child: Image.asset(
        restaurantModel.picture,
        fit: BoxFit.fill,
      ),
    );
  }
}
