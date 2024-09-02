import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_responsive_design_assignment/widgets/responsive_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobile: _buildMobileLayout(),
      tablet: _buildTabletLayout(),
      desktop: buildDesktopLayout(),
    );
  }

  Widget _buildMobileLayout() {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: RichText(
            text: TextSpan(
              text: "HUMMING ",
              children: [
                TextSpan(text: "BIRD"),
              ],
            ),
          ),
        ),
        toolbarHeight: 60.0,
      ),
      drawer: _buildDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildContent(),
            const SizedBox(height: 20),
            _buildJoinButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildTabletLayout() {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
            alignment: Alignment.centerLeft, child: Text("HUMMING BIRD")),
        toolbarHeight: 60.0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text("Courses"),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text("About"),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildContent(),
            const SizedBox(height: 20),
            _buildJoinButton(),
          ],
        ),
      ),
    );
  }

  Widget buildDesktopLayout() {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
            alignment: Alignment.centerLeft, child: Text("HUMMING BIRD")),
        toolbarHeight: 60.0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text("Courses"),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text("About"),
          )
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildContent(),
            const SizedBox(width: 20),
            _buildJoinButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawer() {
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

  Widget _buildContent() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'FLUTTER WEB.',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'THE BASICS',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'In this course we will go over the basics of using\nFlutter Web for development. Topics will include\nResponsive Layouts, Deploying, Font Changes, Hover\nFunctionality, Modals and more.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Widget _buildJoinButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      ),
      child: const Text(
        'Join Course',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
