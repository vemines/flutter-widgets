import 'package:flutter/material.dart';

class CenterScreen extends StatelessWidget {
  const CenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Center Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Center - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Center(
                child: Container(
                  color: Colors.grey[200],
                  padding: const EdgeInsets.all(16),
                  child: const Text("Centered Text"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Center - With heightFactor, widthFactor",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                color: Colors.green[100],
                child: Center(
                  heightFactor: 2,
                  widthFactor: 2,
                  child: Container(
                    color: Colors.blue[100],
                    padding: const EdgeInsets.all(16),
                    child: const Text("Centered with heightFactor, widthFactor"),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Center - With Specific Child Size",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Center(
                child: SizedBox(
                  width: 200,
                  height: 100,
                  child: Container(
                    color: Colors.green[100],
                    alignment: Alignment.center,
                    child: const Text("Centered Text with Size"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
