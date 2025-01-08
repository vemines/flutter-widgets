import 'package:flutter/material.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("AppBar - Default", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            AppBar(
              title: Text("Default AppBar"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("AppBar - Custom Background Color", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            AppBar(
              title: Text("Custom Background"),
              backgroundColor: Colors.blue,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("AppBar - Custom Text Style", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            AppBar(
              title: Text("Custom Text Style", style: TextStyle(color: Colors.white, fontSize: 20)),
              backgroundColor: Colors.green,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("AppBar - Leading Icon", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            AppBar(
              title: Text("Leading Icon"),
              leading: Icon(Icons.menu),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("AppBar - Actions", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            AppBar(
              title: Text("Actions"),
              actions: [
                IconButton(icon: Icon(Icons.search), onPressed: () {}),
                IconButton(icon: Icon(Icons.settings), onPressed: () {}),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("AppBar - Center Title", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            AppBar(
              title: Text("Centered Title"),
              centerTitle: true,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("AppBar - With Bottom Widget", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            AppBar(
              title: Text("Bottom Widget"),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(48.0),
                child: Container(
                  height: 48.0,
                  alignment: Alignment.center,
                  color: Colors.grey[700],
                  child: Text("Bottom Bar", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("AppBar - With Elevation", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            AppBar(
              title: Text("Elevation"),
              elevation: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("AppBar - With Shadow Color", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            AppBar(
              title: Text("Shadow Color"),
              elevation: 10.0,
              shadowColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
