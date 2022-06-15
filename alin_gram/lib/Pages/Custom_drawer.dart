import 'package:alin_gram/Pages/PaginaClaudia.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.only(top: 25),
        children: [
          ListTile(
            title: const Text('Claudia ❤️'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaginaClaudia()),
              );
            },
          ),
        ],
      ),
    );
  }
}
