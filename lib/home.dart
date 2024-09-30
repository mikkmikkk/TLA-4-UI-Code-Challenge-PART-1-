import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

 const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counseling Monitoring system')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: const Colors.blue,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text('Referral Form'),
              onTap: () {
                Navigator.pushNamed(context, '/Referral Form');
              },
            ),
            // Add more items here as needed
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Text(
            'Welcome to the Home Screen!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}