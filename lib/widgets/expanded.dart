import 'package:flutter/material.dart';

class ExpandedScreen extends StatelessWidget {
  const ExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Expanded - Default"),
              Container(
                color: Colors.grey[200],
                height: 100,
                child: Row(
                  children: [
                    Container(width: 50, color: Colors.red),
                    Expanded(child: Container(color: Colors.blue)),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("Expanded - Flex 2"),
              Container(
                color: Colors.grey[200],
                height: 100,
                child: Row(
                  children: [
                    Container(width: 50, color: Colors.red),
                    Expanded(flex: 2, child: Container(color: Colors.green)),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("Expanded - Flex 1, with another Expanded"),
              Container(
                color: Colors.grey[200],
                height: 100,
                child: Row(
                  children: [
                    Container(width: 50, color: Colors.red),
                    Expanded(flex: 1, child: Container(color: Colors.orange)),
                    Expanded(child: Container(color: Colors.purple)),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("Expanded - With a Text Widget"),
              Container(
                color: Colors.grey[200],
                height: 100,
                child: Row(
                  children: [
                    Container(width: 50, color: Colors.red),
                    Expanded(child: Center(child: Text("Expanded Text", style: TextStyle(color: Colors.white)))),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("Expanded - With a Container and Padding"),
              Container(
                color: Colors.grey[200],
                height: 100,
                child: Row(
                  children: [
                    Container(width: 50, color: Colors.red),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(color: Colors.yellow),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("Expanded - With a Container and Margin"),
              Container(
                color: Colors.grey[200],
                height: 100,
                child: Row(
                  children: [
                    Container(width: 50, color: Colors.red),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        color: Colors.teal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}