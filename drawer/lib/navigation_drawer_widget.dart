import 'package:flutter/material.dart';
import 'PeoplePage.dart';
import 'ButtonWidget.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final paddin = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
      ),
      drawer: Drawer(
        backgroundColor: ThemeMode.system == ThemeMode.dark
            ? Colors.green
            : Colors.grey[850],
        child: ListView(
          children: [
            buildMenuItem(
                text: 'People',
                icon: Icons.people,
                onClicked: () => selectedItem(context, 0)),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'Favourites',
              icon: Icons.favorite_border,
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                text: 'Workflow',
                icon: Icons.workspaces_outline,
                onClicked: () => selectedItem(context, 2)),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                text: 'Updates',
                icon: Icons.update,
                onClicked: () => selectedItem(context, 3)),
            const SizedBox(height: 24),
            const Divider(
              color: Colors.white,
            ),
            buildMenuItem(
                text: 'Plugin',
                icon: Icons.account_tree_outlined,
                onClicked: () => selectedItem(context, 4)),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                text: 'Notification',
                icon: Icons.notifications_outlined,
                onClicked: () => selectedItem(context, 5)),
          ],
        ),
      ),
      body: Builder(builder: (context) {
        return Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: ButtonWidget(
              icon: Icons.open_in_new,
              text: 'Open a drawer',
              onClicked: () {
                Scaffold.of(context).openDrawer();
              }),
        );
      }),
    );
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  final color = Colors.white;

  return ListTile(
    leading: Icon(
      icon,
      color: color,
    ),
    title: Text(text, style: TextStyle(color: color)),
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const PeoplePage(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const PeoplePage(),
      ));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const PeoplePage(),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const PeoplePage(),
      ));
      break;
    case 4:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const PeoplePage(),
      ));
      break;
    case 5:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const PeoplePage(),
      ));
      break;
  }
}
