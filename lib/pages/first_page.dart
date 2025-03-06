import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page')),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            // header with icon
            DrawerHeader(child: Icon(Icons.account_circle, size: 48)),

            // home page list tile
            ListTile(
              leading: Icon(Icons.home),
              title: Text('H O M E'),
              onTap: () {
                // close the drawer first
                Navigator.pop(context);

                // navigate to home page
                Navigator.pushNamed(context, '/home');
              },
            ),

            // settings page list tile
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('S E T T I N G S'),
              onTap: () {
                // close the drawer first
                Navigator.pop(context);

                // navigate to settings page
                Navigator.pushNamed(context, '/settings');
              },
            ),
          ],
        ),
      ),
    );
  }
}
