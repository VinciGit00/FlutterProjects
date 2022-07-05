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
          return SignInScreen(
            providerConfigs: const [
              EmailProviderConfiguration(),
              GoogleProviderConfiguration(
                  clientId:
                      "236425765874-55sdn82h3md48uf2j2gf15jojarq5jnb.apps.googleusercontent.com"),
            ],
            headerBuilder: (context, constraints, _) {
              return const CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('assets/batman.jpeg'),
              );
            },
          );
        }
        return Scaffold(
          body: HomeScreen(user: snapshot.data!),
        );
      },
    );
  }
}
