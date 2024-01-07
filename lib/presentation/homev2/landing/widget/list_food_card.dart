import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:list_makanan/model/food/food_model.dart';
import 'package:list_makanan/presentation/homev2/landing/widget/detail_food_card.dart';

class ListFoodCard extends StatelessWidget {
  final FoodItem foodItem;
  final Function refreshParent;

  const ListFoodCard({
    Key? key,
    required this.foodItem,
    required this.refreshParent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => DetailFoodScreen(foodItem: foodItem),
          ),
        ).then((_) {
          refreshParent();
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        width: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              height: 150,
              width: 150,
              child: Image.asset(
                foodItem.imagePath,
                fit: BoxFit.fitWidth,
              ),
            ),
            Text(
              foodItem.name,
              style: const TextStyle(
                color: Color(0xFF302F2C),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(height: 7),
            Text(
              '\$${foodItem.price}',
              style: const TextStyle(
                color: Color(0xFFFFC532),
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
