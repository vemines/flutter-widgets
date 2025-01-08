import 'package:flutter/material.dart';

class NavigationDrawerScreen extends StatelessWidget {
  const NavigationDrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NavigationDrawer Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("NavigationDrawer - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Tooltip(
                message: "A basic NavigationDrawer with default styling.",
                child: Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Text("Open Drawer"),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("NavigationDrawer - Custom Background Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Tooltip(
                message: "NavigationDrawer with a custom background color.",
                child: Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: Text("Open Drawer", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("NavigationDrawer - Custom Text Color and Padding", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Tooltip(
                message: "NavigationDrawer with custom text color and padding.",
                child: Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    ),
                    child: Text("Open Drawer", style: TextStyle(color: Colors.green)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("NavigationDrawer - Custom Border Radius", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Tooltip(
                message: "NavigationDrawer with a custom border radius.",
                child: Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    child: Text("Open Drawer"),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("NavigationDrawer - With Drawer", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Tooltip(
                message: "NavigationDrawer with a drawer attached to the scaffold.",
                child: Builder(
                  builder: (context) => Scaffold(
                    drawer: Drawer(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          DrawerHeader(
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
                            title: Text('Item 1'),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text('Item 2'),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                    appBar: AppBar(title: Text("Drawer Example")),
                    body: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: Text("Open Drawer"),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
