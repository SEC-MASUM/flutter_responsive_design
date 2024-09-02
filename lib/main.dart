import 'package:flutter/material.dart';
import 'package:flutter_responsive_design_assignment/screens/home_screen.dart';

void main(){
  runApp(const RDAApp());
}

class RDAApp extends StatelessWidget {
  const RDAApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: HomeScreen(),
    );
  }
}
