import 'package:flutter/material.dart';

class ElevatedButtonScreen extends StatelessWidget {
  const ElevatedButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ElevatedButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            children: [
              Column(
                children: [
                  Text("ElevatedButton - Default"),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Button"),
                  ),
                ],
              ),
              Column(
                children: [
                  Text("ElevatedButton - Blue Background"),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: Text("Button", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              Column(
                children: [
                  Text("ElevatedButton - Large Padding"),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    ),
                    child: Text("Button"),
                  ),
                ],
              ),
              Column(
                children: [
                  Text("ElevatedButton - Rounded Corners"),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text("Button"),
                  ),
                ],
              ),
              Column(
                children: [
                  Text("ElevatedButton - With Icon"),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    label: Text("Add"),
                  ),
                ],
              ),
              Column(
                children: [
                  Text("ElevatedButton - Disabled"),
                  ElevatedButton(
                    onPressed: null,
                    child: Text("Button"),
                  ),
                ],
              ),
              Column(
                children: [
                  Text("ElevatedButton - Custom Text Style"),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Button", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
