import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_makanan/model/food/food_model.dart';
import 'package:list_makanan/model/restaurant/restauran_model.dart';
import 'package:list_makanan/util/app_color.dart';

class DetailFoodScreen extends StatefulWidget {
  final RestaurantModel restaurantItems;
  const DetailFoodScreen({super.key, required this.restaurantItems});

  @override
  State<DetailFoodScreen> createState() => _DetailFoodScreenState();
}

class _DetailFoodScreenState extends State<DetailFoodScreen> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          // child: Column(
          //   children: [
          //     Container(
          //       decoration: const BoxDecoration(color: AppColor.primaryColor),
          //       padding: const EdgeInsets.all(16.0),
          //       child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Container(
          //               alignment: Alignment.centerLeft,
          //               child: InkWell(
          //                 onTap: () {
          //                   Navigator.pop(context, true);
          //                 },
          //                 child: const Icon(
          //                   Icons.arrow_back,
          //                 ),
          //               ),
          //             ),
          //             const Text(
          //               'Detail',
          //               textAlign: TextAlign.start,
          //               style: TextStyle(
          //                 color: Color(0xFF302F2C),
          //                 fontSize: 16,
          //                 fontWeight: FontWeight.w600,
          //                 letterSpacing: 1,
          //               ),
          //             ),
          //             const Icon(Icons.favorite_border_outlined)
          //           ]),
          //     ),
          //     Stack(
          //       children: [
          //         SizedBox(
          //           // height: 1,
          //           child: Column(
          //             children: [
          //               Stack(
          //                 children: [
          //                   Container(
          //                     height: 150,
          //                     decoration: const BoxDecoration(
          //                         color: AppColor.primaryColor),
          //                   ),
          //                   Container(
          //                     margin: const EdgeInsets.only(top: 100),
          //                     decoration: const BoxDecoration(
          //                         borderRadius: BorderRadius.only(
          //                           topLeft: Radius.circular(20),
          //                           topRight: Radius.circular(20),
          //                         ),
          //                         color: AppColor.primaryBackground),
          //                     child: Column(
          //                       crossAxisAlignment: CrossAxisAlignment.start,
          //                       children: [
          //                         const SizedBox(
          //                           height: 80,
          //                         ),
          //                         Container(
          //                           alignment: Alignment.center,
          //                           child: Text(
          //                             widget.foodItem.name,
          //                             textAlign: TextAlign.center,
          //                             style: const TextStyle(
          //                                 fontWeight: FontWeight.bold,
          //                                 fontSize: 16,
          //                                 letterSpacing: 2),
          //                           ),
          //                         ),
          //                         const SizedBox(
          //                           height: 8,
          //                         ),
          //                         Row(
          //                           mainAxisAlignment: MainAxisAlignment.center,
          //                           children: [
          //                             Row(
          //                               children: [
          //                                 const Icon(
          //                                   Icons.star_border,
          //                                   color: AppColor.primaryColor,
          //                                 ),
          //                                 Text(
          //                                   '${widget.foodItem.rating}',
          //                                   style: const TextStyle(
          //                                       fontWeight: FontWeight.bold,
          //                                       color: AppColor.secondaryText),
          //                                 ),
          //                               ],
          //                             ),
          //                             const SizedBox(
          //                               width: 20,
          //                             ),
          //                             const Row(
          //                               children: [
          //                                 Icon(
          //                                   Icons.access_time_sharp,
          //                                   color: AppColor.colorRed,
          //                                 ),
          //                                 Text(
          //                                   '30 m',
          //                                   style: TextStyle(
          //                                       fontWeight: FontWeight.bold,
          //                                       color: AppColor.secondaryText),
          //                                 ),
          //                               ],
          //                             )
          //                           ],
          //                         ),
          //                         const SizedBox(
          //                           height: 32,
          //                         ),
          //                         Padding(
          //                           padding: const EdgeInsets.all(16.0),
          //                           child: Column(
          //                             crossAxisAlignment:
          //                                 CrossAxisAlignment.start,
          //                             children: [
          //                               const Text(
          //                                 'Deskripsi',
          //                                 style: TextStyle(
          //                                   fontWeight: FontWeight.bold,
          //                                 ),
          //                               ),
          //                               const SizedBox(
          //                                 height: 32,
          //                               ),
          //                               Text(widget.foodItem.description),
          //                             ],
          //                           ),
          //                         ),
          //                       ],
          //                     ),
          //                   ),
          //                   Container(
          //                     height: 150,
          //                     alignment: Alignment.center,
          //                     margin: const EdgeInsets.only(top: 16),
          //                     child: CircleAvatar(
          //                       radius: 150,
          //                       backgroundImage:
          //                           AssetImage(widget.foodItem.imagePath),
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //     Container(
          //       decoration:
          //           const BoxDecoration(color: AppColor.primaryBackground),
          //       alignment: Alignment.bottomCenter,
          //       height: 50,
          //       child: ElevatedButton(
          //         onPressed: isLoading
          //             ? null
          //             : () async {
          //                 setState(() {
          //                   isLoading = true;
          //                 });
          //                 await Future.delayed(const Duration(seconds: 1));
          //                 setState(() {
          //                   isLoading = false;
          //                   if (widget.foodItem.favorite == null) {
          //                     widget.foodItem.favorite = true;
          //                   } else {
          //                     widget.foodItem.toggleFavorite();
          //                   }
          //                 });
          //               },
          //         child: isLoading
          //             ? const CupertinoActivityIndicator()
          //             : Text(widget.foodItem.favorite == true
          //                 ? 'Unfavorite'
          //                 : 'Add to Favorite'),
          //       ),
          //     )
          //   ],
          // ),
          ),
    );
  }
}
