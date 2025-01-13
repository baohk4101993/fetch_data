import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fetch_data/model/apiresponse.dart';
import 'package:fetch_data/model/resource/result.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
part 'dio_service.g.dart';


@RestApi()
@singleton
abstract class DioService {

	@factoryMethod
  factory DioService(Dio dio) = _DioService;

	@GET("/users?page=2")
  Future<ApiResponse> fetchData();

  @POST("/login")
  Future<bool> login();

}