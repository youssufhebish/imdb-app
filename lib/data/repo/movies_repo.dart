import 'package:dio/dio.dart';
import 'package:movies/core/helpers/my_print.dart';
import 'package:movies/data/model/movies_model.dart';

import '../../core/endpoints.dart';
import '../../core/helpers/dio_helper.dart';

class MoviesRepo{
  static Future<MoviesModel> categories() async {
    final Response response = await DioHelper.getData(url: EndPoints.mostPopularMovies + EndPoints.token);
    MyPrint.printResponse('Movies', response);
    final MoviesModel request = MoviesModel.fromJson(response.data);
    return request;
  }
}