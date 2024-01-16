import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:list_makanan/model/response/base_response.dart';
import 'package:list_makanan/model/response/service.dart';

import 'package:list_makanan/model/response/failure.dart';
import 'package:list_makanan/model/response/list_response.dart';
import 'package:list_makanan/model/restaurant/restauran_model.dart';

class RestaurantRepository {
  final dio = Service.app.dio;

  Future<Either<Failure, ListResponse<RestaurantModel>>>
      getRestaurants() async {
    try {
      final response = await dio.get(
        '/list',
      );
      return Right(
        ListResponse<RestaurantModel>.fromJson(
            response.data, (json) => RestaurantModel.fromJson(json)),
      );
    } catch (e) {
      if (e is DioException) {
        var errorResponse = BaseResponse.fromJson(e.response?.data);
        return Left(Failure(
          message: errorResponse.message,
          errorStatus: errorResponse.errorStatus,
        ));
      }
      return Left(Failure());
    }
  }
}
