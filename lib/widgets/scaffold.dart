import 'package:flutter/material.dart';

class ScaffoldScreen extends StatelessWidget {
  const ScaffoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Scaffold - Default", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 100,
              child: Scaffold(
                body: Center(child: Text("Default Scaffold Body")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Scaffold - With AppBar and Drawer",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 200,
              child: Scaffold(
                appBar: AppBar(title: Text("AppBar")),
                drawer: Drawer(child: Center(child: Text("Drawer"))),
                body: Center(child: Text("Scaffold with AppBar and Drawer")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Scaffold - With BottomNavigationBar",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 100,
              child: Scaffold(
                bottomNavigationBar: BottomNavigationBar(
                  items: [
                    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                    BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
                  ],
                ),
                body: Center(child: Text("Scaffold with BottomNavigationBar")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Scaffold - With FloatingActionButton",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 100,
              child: Scaffold(
                floatingActionButton: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
                body: Center(child: Text("Scaffold with FloatingActionButton")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text("Scaffold backgroundColor", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 100,
              child: Scaffold(
                backgroundColor: Colors.blue[100],
                body: Center(child: Text("Scaffold with Background Color")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Scaffold - With different appBar color",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 150,
              child: Scaffold(
                appBar: AppBar(
                  title: Text("AppBar with different color"),
                  backgroundColor: Colors.green,
                ),
                body: Center(child: Text("Scaffold with different AppBar color")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Scaffold - With a persistentFooterButtons",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 150,
              child: Scaffold(
                persistentFooterButtons: [
                  ElevatedButton(onPressed: () {}, child: Text("Button 1")),
                  ElevatedButton(onPressed: () {}, child: Text("Button 2")),
                ],
                body: Center(child: Text("Scaffold with persistent footer buttons")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
