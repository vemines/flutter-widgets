import 'package:flutter/material.dart';

class SingleChildRenderObjectElementScreen extends StatelessWidget {
  const SingleChildRenderObjectElementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleChildRenderObjectElement Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RenderObjectElement - Usage",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text(
                  "RenderObjectElement is an abstract class and cannot be directly instantiated. It's the base class for elements that manage the render tree. This example shows a Container which uses RenderObjectElement internally."),
              const SizedBox(height: 16),
              const Text("Container - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.all(8),
                child: const Text("Default Container"),
              ),
              const SizedBox(height: 16),
              const Text("Container - Blue Background",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(8),
                child: const Text("Blue Container", style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 16),
              const Text("Container - Red Border", style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 2),
                ),
                padding: const EdgeInsets.all(8),
                child: const Text("Red Border Container"),
              ),
              const SizedBox(height: 16),
              const Text("Container - Rounded Corners",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                padding: const EdgeInsets.all(8),
                child: const Text("Rounded Container"),
              ),
              const SizedBox(height: 16),
              const Text("Container - With Margin", style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                margin: const EdgeInsets.all(20),
                color: Colors.green[100],
                padding: const EdgeInsets.all(8),
                child: const Text("Container with Margin"),
              ),
              const SizedBox(height: 16),
              const Text("Container - With Padding", style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                padding: const EdgeInsets.all(30),
                color: Colors.yellow[100],
                child: const Text("Container with Padding"),
              ),
              const SizedBox(height: 16),
              const Text("Container - With Height and Width",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                height: 100,
                width: 200,
                color: Colors.orange[100],
                alignment: Alignment.center,
                child: const Text("Fixed Size Container"),
              ),
              const SizedBox(height: 16),
              const Text("Container - With Alignment",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                height: 100,
                width: 200,
                color: Colors.purple[100],
                alignment: Alignment.bottomRight,
                child: const Text("Aligned Container"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
