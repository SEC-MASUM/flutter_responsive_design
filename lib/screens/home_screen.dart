import 'package:flutter/material.dart';
import 'package:flutter_responsive_design_assignment/utils/screent_utils.dart';
import 'package:flutter_responsive_design_assignment/widgets/app_bar_actions.dart';
import 'package:flutter_responsive_design_assignment/widgets/app_bar_title.dart';
import 'package:flutter_responsive_design_assignment/widgets/banner_button.dart';
import 'package:flutter_responsive_design_assignment/widgets/banner_content.dart';
import 'package:flutter_responsive_design_assignment/widgets/nav_menu_drawer.dart';
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
        title: const AppBarTitle(rightAlign: true),
        toolbarHeight: 60.0,
      ),
      drawer: const NavMenuDrawer(),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BannerContent(),
              SizedBox(height: 80),
              BannerButton(fullWidth: true),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabletLayout() {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(),
        toolbarHeight: 60.0,
        actions: getAppBarActions(),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const BannerContent(),
              const SizedBox(height: 80),
              BannerButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDesktopLayout() {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(),
        toolbarHeight: 60.0,
        actions: getAppBarActions(),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: BannerContent()),
              SizedBox(width: 20),
              Flexible(child: BannerButton()),
            ],
          ),
        ),
      ),
    );
  }
}
