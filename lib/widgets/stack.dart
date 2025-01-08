import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Stack - Basic Example", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.green,
                ),
                Container(
                  width: 60,
                  height: 60,
                  color: Colors.blue,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Stack - Aligned Example", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.green,
                ),
                Container(
                  width: 60,
                  height: 60,
                  color: Colors.blue,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Stack - Positioned Example", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                    width: 80,
                    height: 80,
                    color: Colors.green,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    width: 60,
                    height: 60,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Stack - With Text", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.grey[300],
                ),
                Positioned(
                  top: 50,
                  left: 50,
                  child: Text("Overlay Text", style: TextStyle(fontSize: 18, color: Colors.black)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Stack - With Opacity", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 80,
                    height: 80,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
