import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../model/user.dart';

@singleton
class DioService {
  final Dio dio;

  DioService(this.dio);

  Future<List<User>?> getUser() async {
		final response = await dio.get('/users?page=2');
    List<User>? users;
    if (200 == response.statusCode) {
      users = User.fromJson(response.data) as List<User>;
      for(var i = 0; i < users.length; i++) {
        print(users[i].email);
      }
    }
    return users;
  }

}