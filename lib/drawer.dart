import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF2B0262),
            ),
            child: Text(
              'Hamburger Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Add any action you want to perform when item 1 is tapped
              Navigator.pop(context); // Closes the drawer
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // Add any action you want to perform when item 2 is tapped
              Navigator.pop(context); // Closes the drawer
            },
          ),
          // Add more items as needed
        ],
      ),
    );
  }
}