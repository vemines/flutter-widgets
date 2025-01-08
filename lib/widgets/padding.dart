import 'package:flutter/material.dart';

class PaddingScreen extends StatelessWidget {
  const PaddingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Padding Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Padding - Default"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue,
                width: 50,
                height: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              child: Text("Padding - Custom"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              child: Container(
                color: Colors.green,
                width: 50,
                height: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Text("Padding - Symmetric"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
              child: Text("Padding - FromLTRB"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
              child: Container(
                color: Colors.yellow,
                width: 50,
                height: 50,
              ),
            ),
            Padding(
              padding: EdgeInsets.zero,
              child: Text("Padding - Zero"),
            ),
            Padding(
              padding: EdgeInsets.zero,
              child: Container(
                color: Colors.purple,
                width: 50,
                height: 50,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text("Padding - Left Only"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Container(
                color: Colors.orange,
                width: 50,
                height: 50,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 50),
              child: Text("Padding - Right Only"),
            ),
            Padding(
              padding: EdgeInsets.only(right: 50),
              child: Container(
                color: Colors.teal,
                width: 50,
                height: 50,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text("Padding - Top Only"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Container(
                color: Colors.brown,
                width: 50,
                height: 50,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: Text("Padding - Bottom Only"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: Container(
                color: Colors.grey,
                width: 50,
                height: 50,
              ),
            ),
            // Padding without child is not very useful, so we are not showing it.
            // Padding(
            //   padding: EdgeInsets.all(16.0),
            // ),
          ],
        ),
      ),
    );
  }
}
