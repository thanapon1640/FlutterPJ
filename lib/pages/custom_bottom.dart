import 'package:flutter/material.dart';

class CustomBottom {
  customNavigationItem1() {
    return Column(
      children: const [Icon(Icons.home), Text("Home")],
    );
  }

  customNavigationItem2() {
    return Column(
      children: const [Icon(Icons.person), Text("Profile")],
    );
  }
}
