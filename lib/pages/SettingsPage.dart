import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings Page",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w800 ,color: const Color.fromARGB(255, 225, 179, 109)),)),
      body: Center(child: Text("This is Settings Page",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w800 ,color: const Color.fromARGB(255, 225, 179, 109)),)),
    );
  }
}
