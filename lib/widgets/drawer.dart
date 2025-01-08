import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Drawer Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Drawer - Default"),
            ),
            Builder(
              builder: (context) => ElevatedButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                child: const Text("Open Drawer"),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Drawer - Custom Background Color"),
            ),
            Builder(
              builder: (context) => ElevatedButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                child: const Text("Open Drawer"),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Drawer - Custom Width"),
            ),
            Builder(
              builder: (context) => ElevatedButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                child: const Text("Open Drawer"),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Drawer - With Header and Footer"),
            ),
            Builder(
              builder: (context) => ElevatedButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                child: const Text("Open Drawer"),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Drawer - With List"),
            ),
            Builder(
              builder: (context) => ElevatedButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                child: const Text("Open Drawer"),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Drawer - With Theme"),
            ),
            Builder(
              builder: (context) => ElevatedButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                child: const Text("Open Drawer"),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Drawer - With Custom Elevation"),
            ),
            Builder(
              builder: (context) => ElevatedButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                child: const Text("Open Drawer"),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Drawer - With Custom Shape"),
            ),
            Builder(
              builder: (context) => ElevatedButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                child: const Text("Open Drawer"),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Drawer - With Custom Shadow"),
            ),
            Builder(
              builder: (context) => ElevatedButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                child: const Text("Open Drawer"),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Drawer - With Custom Text Style"),
            ),
            Builder(
              builder: (context) => ElevatedButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                child: const Text("Open Drawer"),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
