import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Column - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Column(
                children: [
                  Container(height: 50, width: 50, color: Colors.red),
                  Container(height: 50, width: 50, color: Colors.green),
                  Container(height: 50, width: 50, color: Colors.blue),
                ],
              ),
              SizedBox(height: 20),
              Text("Column - MainAxisAlignment.spaceAround", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(height: 50, width: 50, color: Colors.red),
                  Container(height: 50, width: 50, color: Colors.green),
                  Container(height: 50, width: 50, color: Colors.blue),
                ],
              ),
              SizedBox(height: 20),
              Text("Column - MainAxisAlignment.spaceBetween", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(height: 50, width: 50, color: Colors.red),
                  Container(height: 50, width: 50, color: Colors.green),
                  Container(height: 50, width: 50, color: Colors.blue),
                ],
              ),
              SizedBox(height: 20),
              Text("Column - MainAxisAlignment.end", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(height: 50, width: 50, color: Colors.red),
                  Container(height: 50, width: 50, color: Colors.green),
                  Container(height: 50, width: 50, color: Colors.blue),
                ],
              ),
              SizedBox(height: 20),
              Text("Column - CrossAxisAlignment.center", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(height: 50, width: 50, color: Colors.red),
                  Container(height: 50, width: 100, color: Colors.green),
                  Container(height: 50, width: 75, color: Colors.blue),
                ],
              ),
              SizedBox(height: 20),
              Text("Column - CrossAxisAlignment.end", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(height: 50, width: 50, color: Colors.red),
                  Container(height: 50, width: 100, color: Colors.green),
                  Container(height: 50, width: 75, color: Colors.blue),
                ],
              ),
              SizedBox(height: 20),
              Text("Column - With Expanded", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Column(
                children: [
                  Expanded(child: Container(color: Colors.red)),
                  Container(height: 50, color: Colors.green),
                ],
              ),
              SizedBox(height: 20),
              Text("Column - With Flexible", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Column(
                children: [
                  Flexible(child: Container(color: Colors.blue)),
                  Container(height: 50, color: Colors.yellow),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
