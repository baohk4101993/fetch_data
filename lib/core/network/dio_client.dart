import 'package:dio/dio.dart';
import 'package:fetch_data/config/config.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioProvider {
  @singleton
  Dio dio(IConfig config) {
    final dio = Dio(BaseOptions(baseUrl: config.baseUrl));
    return dio;
  }
}