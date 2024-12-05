import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fetch_data/model/apiresponse.dart';
import 'package:fetch_data/model/resource/result.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

import '../../model/user.dart';

@RestApi()
@singleton
class DioService {
  final Dio dio;

  DioService(this.dio);
	@GET("/users?page=2")
  Future<ApiResponse> fecthData();

}