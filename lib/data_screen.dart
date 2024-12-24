
import 'package:fetch_data/core/dio_service/dio_service.dart';
import 'package:fetch_data/model/apiresponse.dart';
import 'package:fetch_data/model/user.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'model/resource/result.dart';
import 'repository/user_repository.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _authService = GetIt.I<DioService>();
  final _userRepository = GetIt.I<UserRepository>();


  Future<void> _login() async {
    final username = _usernameController.text;
    final password = _passwordController.text;
    List<User>? users;
    Result<ApiResponse> result = (await _userRepository.getFetchDataUser());
    if (result is Success) {
      // users = User.fromJson(result) as List<User>;

    }
    if (users != null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text((users[1].email))));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Failure")));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Login")),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(labelText: "Username"),
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: "Password"),
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: _login, child: Text("Login"))
            ],
          ),
        )
    );
  }
}
