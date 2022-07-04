import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterfire_ui/auth.dart';
import 'HomeScreen.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SignInScreen(
            providerConfigs: [
              EmailProviderConfiguration(),
              //GoogleProviderConfiguration(
              //clientId:
              //),
            ],
          );
        }
        return Scaffold(
          appBar: AppBar(
            title: const Text("Hello world"),
          ),
          body: HomeScreen(user: snapshot.data!),
        );
      },
    );
  }
}
