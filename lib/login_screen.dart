import 'package:fetch_data/model/resource/result.dart';
import 'package:fetch_data/model/state/login_cubit.dart';
import 'package:fetch_data/model/state/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Login")),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
      		child: Column(
            children: [
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: "Email"),
              ),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(labelText: "Password"),
                obscureText: true,
              ),
              SizedBox(height: 20),
              BlocBuilder<LoginCubit, LoginState>(
                builder: (context, state) {
                  if (state is Loading) {
                    return CircularProgressIndicator();
                  } else if (state is Successfull) {
                    return Text("Login Successful! Token: ${state.token}");
                  } else if (state is Failure) {
                    return Text("Error: ${state.error}");
                  }

                  return ElevatedButton(
                      onPressed: () {
                        final email = emailController.text;
                        final password = passwordController.text;
                        context.read<LoginCubit>().login(email, password);
                      },
                      child: Text("Login"),
                  );
                },
              ),
            ],
          ),
      ),
    );
  }
}