import 'package:flutter/material.dart';
import 'package:list_makanan/presentation/splash/splash_screen.dart';
import 'package:list_makanan/util/app_color.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: AppColor.primaryColor, fontFamily: 'FontPoppins'),
      home: const SplashScreen(),
    );
  }
}
