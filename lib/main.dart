import 'package:flutter/material.dart';
import 'package:drawer/Drawer.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( 
      ),
      home: const MyHomePage(title: 'Drawer Demo'),
    );
  }
}   

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = -1;

  final _pages = const [
    Center(child: Text("Item 1: My profile")),
    Center(child: Text("Item 2: Friends")),
    Center(child: Text("Item 3: Favourite")),
    Center(child: Text("Item 4: Edit Profile")),
  ];

  void _onMenuTap(int index){
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context);  
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: My_Drawer(onMenuTap: _onMenuTap),
      appBar: AppBar(
        title: Text('Demo Drawer'),
        backgroundColor: const Color.fromARGB(255, 29, 209, 16),
        
      ),
      body: _selectedIndex == -1 
      ? Center(child: Text('Home page'),)
      : _pages[_selectedIndex],
   );
  }
}
