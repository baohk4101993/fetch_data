import 'package:fetch_data/config/injector.dart';
import 'package:fetch_data/login_screen.dart';
import 'package:fetch_data/model/state/login_cubit.dart';
import 'package:fetch_data/repository/login_repository.dart';
import 'package:fetch_data/user_list.dart';
import 'package:fetch_data/viewmodel/user_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (_) => LoginCubit(getIt<LoginRepository>()),
          ),
        ],
      	child: MaterialApp(
    			title: 'Login Screen',
    			home: LoginScreen(),
        )
    );
  }
}