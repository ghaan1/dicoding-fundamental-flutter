import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:list_makanan/presentation/main_app.dart';

void main() {
  var dio = Dio(BaseOptions(baseUrl: 'https://dev.mandorku.id/api/v1'));
  runApp(const MainApp());
}
