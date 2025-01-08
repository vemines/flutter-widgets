import 'package:flutter/material.dart';

class ChipScreen extends StatelessWidget {
  const ChipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chip Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Basic Chip", style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                children: [
                  Chip(label: Text("Basic Chip")),
                ],
              ),
              SizedBox(height: 20),
              Text("Chip with Avatar", style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                children: [
                  Chip(
                    avatar: CircleAvatar(child: Text('A')),
                    label: Text("Chip with Avatar"),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Chip with Delete Icon", style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                children: [
                  Chip(
                    label: Text("Deletable Chip"),
                    onDeleted: () {},
                    deleteIcon: Icon(Icons.cancel),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Chip with Custom Colors", style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                children: [
                  Chip(
                    label: Text("Custom Colors"),
                    backgroundColor: Colors.blue[100],
                    labelStyle: TextStyle(color: Colors.black),
                    deleteIconColor: Colors.red,
                    onDeleted: () {},
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Chip with Custom Padding", style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                children: [
                  Chip(
                    label: Text("Custom Padding"),
                    padding: EdgeInsets.all(10),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Chip with Custom Shape", style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                children: [
                  Chip(
                    label: Text("Custom Shape"),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Chip with Disabled State", style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                children: [
                  Chip(
                    label: Text("Disabled Chip"),
                    onDeleted: null,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Chip with Elevation", style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                children: [
                  Chip(
                    label: Text("Elevated Chip"),
                    elevation: 5,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Chip with Shadow", style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                children: [
                  Chip(
                    label: Text("Shadowed Chip"),
                    shadowColor: Colors.grey,
                    elevation: 5,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Chip with Label Style", style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                children: [
                  Chip(
                    label: Text("Styled Label", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
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
