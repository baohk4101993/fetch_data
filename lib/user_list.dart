import 'package:fetch_data/model/apiresponse.dart';
import 'package:fetch_data/repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'model/resource/result.dart';
import 'model/user.dart';

class UserListScreenState extends StatefulWidget {
  const UserListScreenState({super.key});

  @override
  State<UserListScreenState> createState() => _UserListScreenStateState();
}

class _UserListScreenStateState extends State<UserListScreenState> {
  late Future<List<User>> _futureUsers;

  @override
  void initState() {
    super.initState();
    _futureUsers = fetchUsers();
  }

  Future<List<User>> fetchUsers() async {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User List')),
      body: FutureBuilder<List<User>>(
        future: _futureUsers,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error occurred: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final users = snapshot.data ?? [];
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.avatar),
                  ),
                  title: Text("${user.first_name} ${user.last_name}"),
                  subtitle: Text(user.email),
                );
              },
            );
          }
          return Center(child: Text('No users found'));
        },
      ),
    );
  }
}

