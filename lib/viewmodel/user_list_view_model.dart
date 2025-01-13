import 'package:fetch_data/model/resource/result.dart';
import 'package:fetch_data/model/user.dart';
import 'package:fetch_data/repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../model/apiresponse.dart';

class UserListViewModel extends ChangeNotifier {

  List<User> users = [];

  Future<void> fetchUser() async {
    final userRepository = GetIt.instance<UserRepository>();
    final result = await userRepository.getFetchDataUser();
    if (result is Success<ApiResponse>) {
      users = result.data.data;
    } else if (result is Error<ApiResponse>) {
      print("Error: ${result.exception}");
    }
		notifyListeners();
	}

}