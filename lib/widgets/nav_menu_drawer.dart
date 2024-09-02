import 'package:flutter/material.dart';

class NavMenuDrawer extends StatelessWidget {
  const NavMenuDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: SafeArea(
        child: Column(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.greenAccent),
                accountName: Text("Md. Masum Billah"),
                accountEmail: Text("masum.jess42@gmail.com"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.square_rounded),
              title: Text("Courses"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
            ),
          ],
        ),
      ),
    );
  }
}
