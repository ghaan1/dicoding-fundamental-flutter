import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:list_makanan/model/response/base_response.dart';

import 'package:list_makanan/model/response/failure.dart';
import 'package:list_makanan/model/response/list_response.dart';
import 'package:list_makanan/model/restaurant/restauran_model.dart';

Future<Either<Failure, ListResponse<RestaurantModel>>> getRestaurants({
  required String accessToken,
  int? page,
}) async {
  Dio dio = Dio();
  try {
    final queryParams = {
      'page': page,
    };
    final response = await dio.get(
      '/list',
      queryParameters: queryParams,
      options: Options(headers: {"Authorization": 'Bearer $accessToken'}),
    );
    return Right(
      ListResponse<RestaurantModel>.fromJson(
        response.data,
        (json) => RestaurantModel.fromJson(json),
      ),
    );
  } catch (e) {
    if (e is DioError) {
      var errorResponse = BaseResponse.fromJson(e.response?.data);
      return Left(Failure(
        message: errorResponse.message,
      ));
    }
    return Left(Failure());
  }
}
