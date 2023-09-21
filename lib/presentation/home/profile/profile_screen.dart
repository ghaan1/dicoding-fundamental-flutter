import 'package:flutter/material.dart';
import 'package:list_makanan/model/restaurant/restauran_model.dart';
import 'package:list_makanan/util/app_color.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController test = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                'Profile',
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
            ),
          ]),
          SizedBox(
            height: 350,
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Image.asset(
                    restaurantItems[3].picture,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: AppColor.secondaryBackground,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'RAMEEENNCUUUU',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColor.primaryText),
                        ),
                        Divider(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: AppColor.secondaryText,
                            ),
                            Text(
                              'JEPANG',
                              style: TextStyle(color: AppColor.secondaryText),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Deskripsi',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Ut tempor risus eget lorem ultrices consectetur. Vivamus vitae risus risus. Proin tincidunt mauris et nisi luctus fringilla. Donec nulla magna, interdum nec. \n\nProin consequat mauris eget velit dignissim accumsan. Nam posuere nibh vitae ex accumsan finibus. Vestibulum feugiat porta feugiat.',
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
