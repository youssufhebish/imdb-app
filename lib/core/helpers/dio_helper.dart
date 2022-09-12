import 'package:dio/dio.dart';
import '../endpoints.dart';
import 'my_print.dart';

class DioHelper{
  static Dio? dio;

  /// INIT DIO HELPER
  static init(){
    dio = Dio(
        BaseOptions(
          baseUrl: EndPoints.baseUrl,
          receiveDataWhenStatusError: true,
        )
    );
  }

  /// DIO GET REQUESTS METHOD ..
  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    dio!.options.headers = {
      'Accept' : 'application/json'
    };
    MyPrint.warningPrint('GET REQUEST : ${dio!.options.baseUrl}$url');
    return await dio!.get(
      url,
      queryParameters: query,
    );
  }
}