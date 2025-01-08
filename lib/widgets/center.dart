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
              const Text("Center - With Alignment", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Center(
                heightFactor: 2,
                widthFactor: 2,
                child: Container(
                  color: Colors.blue[100],
                  padding: const EdgeInsets.all(16),
                  child: const Text("Centered Text with Alignment"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Center - With Specific Child Size", style: TextStyle(fontWeight: FontWeight.bold)),
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
              const SizedBox(height: 20),
              const Text("Center - With Different Alignment", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Center(
                child: Container(
                  color: Colors.orange[100],
                  padding: const EdgeInsets.all(16),
                  child: const Text("Centered Text with Different Alignment"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Center - Wrapping a Container", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Center(
                child: Container(
                  color: Colors.purple[100],
                  padding: const EdgeInsets.all(16),
                  child: const Text("Wrapped Container"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Center - Without Child (Not Applicable)", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              // Center without a child is not applicable, it requires a child to center.
              // Center(), // This would cause an error
              const Text("Center requires a child to be centered. This example is commented out because it would cause an error.", style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}
