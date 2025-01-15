import 'package:flutter/material.dart';

class AlignScreen extends StatelessWidget {
  const AlignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Align Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text("Align - Default Alignment", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Align(
              heightFactor: 2,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text("Align - Top Left Alignment", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Align(
              heightFactor: 2,
              alignment: Alignment.topLeft,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.green,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Align - Bottom Right Alignment",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Align(
              heightFactor: 2,
              alignment: Alignment.bottomRight,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text("Align - Center Alignment", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Align(
              heightFactor: 2,
              alignment: Alignment.center,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.orange,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Align - Center Left Alignment",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Align(
              heightFactor: 2,
              alignment: Alignment.centerLeft,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.purple,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Align - Center Right Alignment",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Align(
              heightFactor: 2,
              alignment: Alignment.centerRight,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.teal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Align - Top Center Alignment",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Align(
              heightFactor: 2,
              alignment: Alignment.topCenter,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.brown,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Align - Bottom Center Alignment",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Align(
              heightFactor: 2,
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.pink,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text("Align - Text bottomRight", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Align(
              heightFactor: 2,
              alignment: Alignment.bottomRight,
              child: Text("Aligned Text", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
