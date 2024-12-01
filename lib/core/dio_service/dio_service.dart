import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../model/user.dart';

@singleton
class DioService {
  final Dio dio;

  DioService(this.dio);

  Future<List<User>?> getUser() async {
		final response = await dio.get('/login');
    List<User>? users = [];
    if (200 == response.statusCode) {
      final data = jsonDecode(response.data['data']);
      for (var i in data) {
        users.add(i);
      }
    }
    return users;
  }

}