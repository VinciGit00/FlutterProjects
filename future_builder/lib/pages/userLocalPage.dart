import 'package:flutter/material.dart';
import 'package:future_builder/api/user_api.dart';
import 'package:future_builder/model/user.dart';
import 'package:future_builder/tile/buildUsers.dart';

class UserLocalpage extends StatelessWidget {
  const UserLocalpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<User>>(
        //He need the context
        future: UserApi.getUserLocally(context),
        initialData: null,
        builder: (context, snapshot) {
          final users = snapshot.data!;

          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const Center(child: CircularProgressIndicator());
            default:
              if (snapshot.hasError) {
                return const Center(
                  child: Text("Some error occured!"),
                );
              } else {
                return buildUsers(users);
              }
          }
        },
      ),
    );
  }
}
