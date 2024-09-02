import 'package:flutter/material.dart';

List<Widget> getAppBarActions() {
  return [
    Padding(
      padding: const EdgeInsets.only(right: 20),
      child: TextButton(
        onPressed: () {},
        child: const Text("Courses"),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 20),
      child: TextButton(
        onPressed: () {},
        child: const Text("About"),
      ),
    ),
  ];
}