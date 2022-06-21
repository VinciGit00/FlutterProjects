import 'package:alin_gram/Pages/PaginaProfilo.dart';
import 'package:flutter/material.dart';
import 'package:alin_gram/Tiles/Person.dart';

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
        padding: const EdgeInsets.only(top: 50),
        children: [
          ListTile(
            title: const Text('Claudia ❤️'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaginaProfilo(
                    personProfile: Person("Orsetta 🐻",
                        "https://www.picuki.com/profile/claudia_avizzano"),
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Iqbal 🖤'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaginaProfilo(
                    personProfile: Person(
                        "Iqbal 🖤 ", "https://www.picuki.com/profile/iicro"),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
