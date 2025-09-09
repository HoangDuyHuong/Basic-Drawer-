import 'package:flutter/material.dart';
import 'pages/SharePage.dart';
import 'pages/SettingsPage.dart';
import 'pages/LogoutPage.dart';

class MyDrawer extends StatelessWidget {
  final Function(int) onMenuTap;
  const MyDrawer({super.key, required this.onMenuTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(accountName: Text('TH Group'), accountEmail: Text('MrH3 Classes'),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child:  Image.network(
                'https://static.vecteezy.com/system/resources/previews/015/550/224/original/creative-letter-th-logo-gaming-esport-with-shield-and-sword-design-ideas-vector.jpg',
              width: 90,
              height: 90,
              fit: BoxFit.cover,
              ),
            ),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://static.vecteezy.com/system/resources/previews/017/798/493/non_2x/dark-abstract-green-light-background-with-hexagon-mesh-pattern-decoration-vector.jpg'
              ),
              fit: BoxFit.cover,
              ),

          ),
          ),
          ListTile(
            leading:Icon(Icons.person),
            title: Text('My Profile'),
            onTap: () => onMenuTap(0),
          ),
          ListTile(
            leading:Icon(Icons.people),
            title: Text('Friends'),
            onTap: () => onMenuTap(1),       
            ),          
          ListTile(
            leading:Icon(Icons.favorite),
            title: Text('Favourite'),
            onTap: () => onMenuTap(2),          
            ),
          ListTile(
            leading:Icon(Icons.edit),
            title: Text('Edit Profile'),
            onTap: () => onMenuTap(3),         
            ),
          Divider(),
          ListTile(
            leading:Icon(Icons.share),
            title: Text('Share'),
            onTap: () {
              Navigator.pop(context); // đóng drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => SharePage()),
              );
            },          
            ),
          ListTile(
            leading:Icon(Icons.settings),
            title: Text('Setting'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => SettingsPage()),
              );
            },         
            ),
          ListTile(
            leading:Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => LogoutPage()),
              );
            },
                      
            )

        ],
      ),
    );
  }
}