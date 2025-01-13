import 'package:fetch_data/model/apiresponse.dart';
import 'package:fetch_data/repository/user_repository.dart';
import 'package:fetch_data/viewmodel/user_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'model/resource/result.dart';
import 'model/user.dart';

class UserListScreenState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userListViewModel = Provider.of<UserListViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: Text('User List')),
      body: userListViewModel.users.isEmpty
          ? Center(
              child: ElevatedButton(
                onPressed: () async {
                  await userListViewModel.fetchUser();
                },
                child: Text('Fetch Users'),
              ),
            )
          : ListView.builder(
              itemCount: userListViewModel.users.length,
              itemBuilder: (context, index) {
                final user = userListViewModel.users[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.avatar),
                  ),
                  title: Text("${user.first_name} ${user.last_name}"),
                  subtitle: Text(user.email),
                );
              },
            ),
    );
  }
}
