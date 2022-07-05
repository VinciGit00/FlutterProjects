import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'HalfPages/NoMail.dart';
import 'HalfPages/YesMail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.user}) : super(key: key);

  final User user;
  @override
  Widget build(BuildContext context) {
    print("-------------------------------");
    print(user);
    print(user.phoneNumber);
    print("-------------------------------");
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          user.displayName == null
              ? const NoMail()
              : YesMail(
                  user: user,
                ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: SignOutButton(),
          ),
        ],
      ),
    );
  }
}
