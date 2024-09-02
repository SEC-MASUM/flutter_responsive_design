import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
            alignment: Alignment.centerRight, child: Text("HUMMING BIRD")),
        toolbarHeight: 60.0,
        // actions: const [
        //   Padding(
        //     padding: EdgeInsets.only(right: 20),
        //     child: Text("Courses"),
        //   ),
        //   Padding(
        //     padding: EdgeInsets.only(right: 20),
        //     child: Text("About"),
        //   )
        // ],
      ),
      drawer: const Drawer(
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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'FLUTTER WEB.',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'THE BASICS',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'In this course we will go over the basics of using\nFlutter Web for development. Topics will include\nResponsive Layouts, Deploying, Font Changes, Hover\nFunctionality, Modals and more.',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: const Text(
                'Join Course',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
