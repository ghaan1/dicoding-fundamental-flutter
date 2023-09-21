import 'package:flutter/material.dart';
import 'package:list_makanan/model/food/food_model.dart';
import 'package:list_makanan/presentation/home/landing/widget/list_food_card.dart';
import 'package:list_makanan/presentation/home/landing/widget/picture_header_card.dart';
import 'package:list_makanan/presentation/home/landing/widget/popular_food_card.dart';
import 'package:list_makanan/model/restaurant/restauran_model.dart';
import 'package:list_makanan/util/app_color.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  TextEditingController test = TextEditingController();
  String selectedCategory = 'All';
  String searchQuery = '';
  bool isCategoryEmpty = true;
  bool isCategoryAvailable(String category) {
    return foodItems.any((foodItem) => foodItem.category == category);
  }

  @override
  Widget build(BuildContext context) {
    List<FoodItem> filteredFoodItems = foodItems.where((item) {
      return (item.name.toLowerCase().contains(searchQuery.toLowerCase()) &&
          (selectedCategory == 'All' || item.category == selectedCategory));
    }).toList();

    List<FoodItem> favoriteFoods =
        foodItems.where((item) => item.favorite == true).toList();
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Home',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF302F2C),
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: 1,
                ),
              ),
            ]),
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(top: 16),
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      offset: Offset(12, 26),
                      blurRadius: 50,
                      spreadRadius: 0,
                      color: AppColor.secondaryBackground),
                ]),
                child: TextField(
                  controller: test,
                  onChanged: (value) {
                    setState(() {
                      searchQuery = value;
                    });
                  },
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColor.primaryColor,
                    ),
                    filled: true,
                    fillColor: AppColor.whiteText,
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16, bottom: 16),
              height: 195,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: restaurantItems.length,
                itemBuilder: (context, index) {
                  return PictureHeaderCard(
                      restaurantModel: restaurantItems[index]);
                },
              ),
            ),
            Row(
              children: [
                FilterChip(
                  label: const Text('All'),
                  selected: selectedCategory == 'All',
                  onSelected: (isSelected) {
                    setState(() {
                      selectedCategory = 'All';
                    });
                  },
                ),
                const SizedBox(width: 5),
                FilterChip(
                  label: const Text('Noodles'),
                  selected: selectedCategory == 'Noodles',
                  onSelected: (isSelected) {
                    setState(() {
                      selectedCategory = 'Noodles';
                    });
                  },
                ),
                const SizedBox(width: 5),
                FilterChip(
                  label: const Text('Ramens'),
                  selected: selectedCategory == 'Ramens',
                  onSelected: (isSelected) {
                    setState(() {
                      selectedCategory = 'Ramens';
                    });
                  },
                ),
                const SizedBox(width: 5),
                FilterChip(
                  label: const Text('Sushi'),
                  selected: selectedCategory == 'Sushi',
                  onSelected: (isSelected) {
                    setState(() {
                      selectedCategory = 'Sushi';
                    });
                  },
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16, bottom: 16),
              height: 230,
              child: (filteredFoodItems.isEmpty)
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/img-no-data.png',
                            width: 200,
                            height: 200,
                          ),
                          const Text('No Data'),
                        ],
                      ),
                    )
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: filteredFoodItems.length,
                      itemBuilder: (context, index) {
                        return ListFoodCard(
                          foodItem: filteredFoodItems[index],
                          refreshParent: () => setState(() {}),
                        );
                      },
                    ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Most Popular',
                  style: TextStyle(
                    color: Color(0xFF302F2C),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16, bottom: 16),
              height: 230,
              child: (favoriteFoods.isEmpty)
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/img-no-data.png',
                            width: 200,
                            height: 200,
                          ),
                          const Text('No Data'),
                        ],
                      ),
                    )
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: favoriteFoods.length,
                      itemBuilder: (context, index) {
                        return PopularFoodCard(
                          foodItem: favoriteFoods[index],
                          refreshParent: () => setState(() {}),
                        );
                      },
                    ),
            ),
          ],
        ),
      )),
    );
  }
}
