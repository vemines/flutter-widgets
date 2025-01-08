import 'package:flutter/material.dart';

class FloatingActionButtonScreen extends StatelessWidget {
  const FloatingActionButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("FloatingActionButton Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  Column(
                    children: [
                      Tooltip(message: "FloatingActionButton - Default", child: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add))),
                      Text("Default"),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "FloatingActionButton - Blue Background", child: FloatingActionButton(onPressed: () {}, backgroundColor: Colors.blue, child: Icon(Icons.add))),
                      Text("Blue Background"),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "FloatingActionButton - Red Icon", child: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add, color: Colors.red))),
                      Text("Red Icon"),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "FloatingActionButton - Large Size", child: FloatingActionButton(onPressed: () {}, mini: false, shape: CircleBorder(), child: Icon(Icons.add),)),
                      Text("Large Size"),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "FloatingActionButton - Small Size", child: FloatingActionButton(onPressed: () {}, mini: true, child: Icon(Icons.add))),
                      Text("Small Size"),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "FloatingActionButton - Extended", child: FloatingActionButton.extended(onPressed: () {}, label: Text("Add"), icon: Icon(Icons.add))),
                      Text("Extended"),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "FloatingActionButton - Rounded Shape", child: FloatingActionButton(onPressed: () {}, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)), child: Icon(Icons.add))),
                      Text("Rounded Shape"),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "FloatingActionButton - Custom Elevation", child: FloatingActionButton(onPressed: () {}, elevation: 10, child: Icon(Icons.add))),
                      Text("Custom Elevation"),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "FloatingActionButton - Disabled", child: FloatingActionButton(onPressed: null, child: Icon(Icons.add))),
                      Text("Disabled"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
