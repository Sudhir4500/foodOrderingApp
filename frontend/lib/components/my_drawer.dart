import 'package:flutter/material.dart';
import 'package:frontend/components/my_drawer_tile.dart';
import 'package:frontend/pages/settings_page.dart';

 // Assuming you have a settings page.

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // App logo
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Image.asset('assets/logo.jpeg', height: 100, width: 100),
          ),

          // Adding divider
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(color: Theme.of(context).colorScheme.secondary),
          ),

          // Home list tile
           MyDrawerTile(
            text: "HOME",
            icon: Icons.home,
            onTap: () {
              Navigator.pop(context); // Close the drawer
              // Navigate to the Home page
            },
          ),

           // Settings list tile
          MyDrawerTile(
            text: "SETTINGS",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),

          const Spacer(),

          // Logout list tile
          MyDrawerTile(
            text: "LOGOUT",
            icon: Icons.logout,
            onTap: () {
              // Perform logout operations here
            },
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
