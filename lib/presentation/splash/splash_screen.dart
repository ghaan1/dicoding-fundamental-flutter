import 'package:flutter/material.dart';
import 'package:list_makanan/presentation/home/home_screen.dart';
import 'package:list_makanan/util/app_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: AppColor.primaryColor,
        ),
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: AppColor.primaryColor.shade400,
                    shape: BoxShape.circle),
                child: Column(
                  children: [
                    Center(
                      child: SizedBox(
                        width: 250,
                        height: 250,
                        child: Image.asset('assets/images/ramen-primary.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Text(
              'RAMEENNCUUU',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                letterSpacing: 8,
                color: AppColor.primaryText,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
