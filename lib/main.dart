import 'package:fetch_data/config/injector.dart';
import 'package:fetch_data/data_screen.dart';
import 'package:fetch_data/user_list.dart';
import 'package:fetch_data/viewmodel/user_list_view_model.dart';
import 'package:flutter/material.dart';
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
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (_) => UserListViewModel()
          ),
        ],
      	child: MaterialApp(
    			title: 'User Fetch App',
    			home: UserListScreenState(),
        )
    );
  }
}