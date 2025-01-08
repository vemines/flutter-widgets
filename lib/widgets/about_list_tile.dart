import 'package:flutter/material.dart';

class AboutListTileScreen extends StatelessWidget {
  const AboutListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AboutListTile Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Default AboutListTile", style: TextStyle(fontWeight: FontWeight.bold)),
              AboutListTile(
                applicationName: 'My App',
                applicationVersion: '1.0.0',
                applicationIcon: Icon(Icons.info),
                aboutBoxChildren: [
                  Text('Additional info here'),
                ],
              ),
              SizedBox(height: 20),
              Text("AboutListTile - Custom Colors", style: TextStyle(fontWeight: FontWeight.bold)),
              AboutListTile(
                applicationName: 'My App',
                applicationVersion: '1.0.0',
                applicationIcon: Icon(Icons.info, color: Colors.white),
                aboutBoxChildren: [
                  Text('Additional info here', style: TextStyle(color: Colors.white)),
                ],
              ),
              SizedBox(height: 20),
              Text("AboutListTile - Custom Icon and Text",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              AboutListTile(
                applicationName: 'Custom App Name',
                applicationVersion: '2.0.0',
                applicationIcon: Icon(Icons.settings, size: 30, color: Colors.green),
                aboutBoxChildren: [
                  Text('More custom info'),
                ],
              ),
              SizedBox(height: 20),
              Text("AboutListTile - Custom Application Legalese",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              AboutListTile(
                applicationName: 'My App',
                applicationVersion: '1.0.0',
                applicationIcon: Icon(Icons.info),
                applicationLegalese: '© 2024 My Company',
                aboutBoxChildren: [
                  Text('Additional info here'),
                ],
              ),
              SizedBox(height: 20),
              Text("AboutListTile - Custom Application Version",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              AboutListTile(
                applicationName: 'My App',
                applicationVersion: 'Version 3.0.0-beta',
                applicationIcon: Icon(Icons.info),
                aboutBoxChildren: [
                  Text('Additional info here'),
                ],
              ),
              SizedBox(height: 20),
              Text("AboutListTile - With a custom onpress",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              AboutListTile(
                applicationName: 'My App',
                applicationVersion: '1.0.0',
                applicationIcon: Icon(Icons.info),
                aboutBoxChildren: [
                  Text('Additional info here'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
