import 'package:dio/dio.dart';
import 'package:list_makanan/model/response/flavor.dart';

class App {
  final Flavor flavor;
  final Dio dio;

  App({
    required this.flavor,
    required this.dio,
  });
}
