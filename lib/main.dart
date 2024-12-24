import 'package:fetch_data/config/injector.dart';
import 'package:fetch_data/data_screen.dart';
import 'package:fetch_data/user_list.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter Login App",
			home: UserListScreenState(),
    );
  }
}