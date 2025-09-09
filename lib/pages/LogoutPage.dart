import 'package:flutter/material.dart';

class LogoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Logout Page")),
      body: Center(child: Text("You have logged out")),
    );
  }
}
