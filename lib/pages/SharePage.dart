import 'package:flutter/material.dart';

class SharePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Share Page",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w800 ,color: const Color.fromARGB(255, 225, 179, 109)),)),
      body: Center(child: Text("This is Share Page",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w800 ,color: const Color.fromARGB(255, 225, 179, 109)),)),
    );
  }
}
