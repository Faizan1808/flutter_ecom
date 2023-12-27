import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  final userImage =
      "https://imgs.search.brave.com/J8_s4Vsr5zpSf5Jsdh1m4v8M_qIZqSo_HYukTmNU9FA/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudGhlbm91bnBy/b2plY3QuY29tL3Bu/Zy80OTYzNTMzLTIw/MC5wbmc";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).colorScheme.inversePrimary,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Faizan"),
                accountEmail: Text(
                  "faiz63440@gmail.com",
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(userImage),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                "Home",
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                "Settings",
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                "Logout",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
