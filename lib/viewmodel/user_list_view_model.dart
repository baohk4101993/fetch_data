import 'package:fetch_data/model/resource/result.dart';
import 'package:fetch_data/model/user.dart';
import 'package:fetch_data/repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../model/apiresponse.dart';

class UserListViewModel extends ChangeNotifier {
  late List<User> users;

  Future<List<User>> fetchUser() async {
    final userRepository = GetIt.instance<UserRepository>();
    final result = await userRepository.getFetchDataUser();
    if (result is Success<ApiResponse>) {
      return result.data.data; // Return user list
    } else if (result is Error<ApiResponse>) {
      print("Error: ${result.exception}");
      return [];
    }
    return [];
	}

}