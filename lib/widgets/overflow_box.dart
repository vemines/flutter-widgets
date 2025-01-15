import 'package:flutter/material.dart';

class OverflowBoxScreen extends StatelessWidget {
  const OverflowBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OverflowBox Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("OverflowBox - Example", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              OverflowBox(
                maxWidth: 100,
                maxHeight: 100,
                child: Container(
                  color: Colors.blue,
                  width: 200,
                  height: 200,
                ),
              ),
              const SizedBox(height: 16),
              const Text("OverflowBox - Min Width/Height",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              OverflowBox(
                minWidth: 150,
                minHeight: 150,
                child: Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 16),
              const Text("OverflowBox - Alignment Top Left",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              OverflowBox(
                maxWidth: 100,
                maxHeight: 100,
                alignment: Alignment.topLeft,
                child: Container(
                  color: Colors.red,
                  width: 200,
                  height: 200,
                ),
              ),
              const SizedBox(height: 16),
              const Text("OverflowBox - Alignment Bottom Right",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              OverflowBox(
                maxWidth: 100,
                maxHeight: 100,
                alignment: Alignment.bottomRight,
                child: Container(
                  color: Colors.orange,
                  width: 200,
                  height: 200,
                ),
              ),
              const SizedBox(height: 16),
              const Text("OverflowBox - With different child size",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              OverflowBox(
                maxWidth: 100,
                maxHeight: 100,
                child: Container(
                  color: Colors.purple,
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(height: 16),
              const Text("OverflowBox - With different child size and alignment",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              OverflowBox(
                maxWidth: 100,
                maxHeight: 100,
                alignment: Alignment.center,
                child: Container(
                  color: Colors.teal,
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(height: 16),
              const Text("OverflowBox - No wrapping widget",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              // OverflowBox(
              //   maxWidth: 100,
              //   maxHeight: 100,
              // ), // This will cause an error because OverflowBox requires a child.
              const Text("OverflowBox requires a child, so this example is commented out."),
              const SizedBox(height: 16),
              const Text("OverflowBox - Wrapping a Text widget",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              OverflowBox(
                maxWidth: 100,
                maxHeight: 100,
                child: const Text("Overflowing Text", style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
