import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Row Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              const Text("Row - Default"),
              Row(
                children: [
                  Container(width: 50, height: 50, color: Colors.red),
                  Container(width: 50, height: 50, color: Colors.green),
                  Container(width: 50, height: 50, color: Colors.blue),
                ],
              ),
              const SizedBox(height: 16),
              const Text("Row - MainAxisAlignment.spaceAround"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(width: 50, height: 50, color: Colors.red),
                  Container(width: 50, height: 50, color: Colors.green),
                  Container(width: 50, height: 50, color: Colors.blue),
                ],
              ),
              const SizedBox(height: 16),
              const Text("Row - MainAxisAlignment.end"),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(width: 50, height: 50, color: Colors.red),
                  Container(width: 50, height: 50, color: Colors.green),
                  Container(width: 50, height: 50, color: Colors.blue),
                ],
              ),
              const SizedBox(height: 16),
              const Text("Row - CrossAxisAlignment.start"),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(width: 50, height: 50, color: Colors.red),
                  Container(width: 50, height: 100, color: Colors.green),
                  Container(width: 50, height: 50, color: Colors.blue),
                ],
              ),
              const SizedBox(height: 16),
              const Text("Row - CrossAxisAlignment.end"),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(width: 50, height: 100, color: Colors.red),
                  Container(width: 50, height: 50, color: Colors.green),
                  Container(width: 50, height: 100, color: Colors.blue),
                ],
              ),
              const SizedBox(height: 16),
              const Text("Row - With Expanded"),
              Row(
                children: [
                  Expanded(child: Container(height: 50, color: Colors.red)),
                  Container(width: 50, height: 50, color: Colors.green),
                ],
              ),
              const SizedBox(height: 16),
              const Text("Row - With Flexible"),
              Row(
                children: [
                  Flexible(child: Container(height: 50, color: Colors.red)),
                  Container(width: 50, height: 50, color: Colors.green),
                ],
              ),
              const SizedBox(height: 16),
              const Text("Row - With different sized children"),
              Row(
                children: [
                  Container(width: 20, height: 20, color: Colors.red),
                  Container(width: 40, height: 40, color: Colors.green),
                  Container(width: 60, height: 60, color: Colors.blue),
                ],
              ),
              const SizedBox(height: 16),
              const Text("Row - With Text"),
              Row(
                children: [
                  const Text("Item 1"),
                  const Text("Item 2"),
                  const Text("Item 3"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
