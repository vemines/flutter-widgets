import 'package:flutter/material.dart';

class OffstageScreen extends StatelessWidget {
  const OffstageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Offstage Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Offstage - Default (Visible)", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Offstage(
              offstage: false,
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(20),
                child: Text("Visible Content", style: TextStyle(color: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Offstage - Hidden", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Offstage(
              offstage: true,
              child: Container(
                color: Colors.red,
                padding: EdgeInsets.all(20),
                child: Text("Hidden Content", style: TextStyle(color: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Offstage - Hidden with SizedBox", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Offstage(
              offstage: true,
              child: SizedBox(
                width: 100,
                height: 100,
                child: Container(
                  color: Colors.green,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Offstage - Visible with Opacity", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Offstage(
              offstage: false,
              child: Opacity(
                opacity: 0.5,
                child: Container(
                  color: Colors.yellow,
                  padding: EdgeInsets.all(20),
                  child: Text("Semi-Transparent Content", style: TextStyle(color: Colors.black)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Offstage - Hidden with different size", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Offstage(
              offstage: true,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.purple,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Offstage - Visible with different size", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Offstage(
              offstage: false,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
