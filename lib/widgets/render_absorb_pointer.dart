import 'package:flutter/material.dart';

class RenderAbsorbPointerScreen extends StatelessWidget {
  const RenderAbsorbPointerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RenderAbsorbPointer Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("AbsorbPointer - Basic Example", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              AbsorbPointer(
                absorbing: true,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Click Me (Absorbed)"),
                ),
              ),
              const SizedBox(height: 16),
              const Text("AbsorbPointer - Not Absorbing", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              AbsorbPointer(
                absorbing: false,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Click Me (Not Absorbed)"),
                ),
              ),
              const SizedBox(height: 16),
              const Text("AbsorbPointer - With Container", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              AbsorbPointer(
                absorbing: true,
                child: Container(
                  color: Colors.blue.shade100,
                  padding: const EdgeInsets.all(20),
                  child: const Text("Container (Absorbed)"),
                ),
              ),
              const SizedBox(height: 16),
              const Text("AbsorbPointer - With Opacity", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              AbsorbPointer(
                absorbing: true,
                child: Opacity(
                  opacity: 0.5,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Click Me (Absorbed and Opacity)"),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text("AbsorbPointer - With Different Child", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              AbsorbPointer(
                absorbing: true,
                child: const Icon(Icons.star, size: 50, color: Colors.orange),
              ),
              const SizedBox(height: 16),
              const Text("AbsorbPointer - With GestureDetector", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              AbsorbPointer(
                absorbing: true,
                child: GestureDetector(
                  onTap: () {
                    // This onTap will not be triggered because of AbsorbPointer
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Gesture Detected")));
                  },
                  child: Container(
                    color: Colors.green.shade100,
                    padding: const EdgeInsets.all(20),
                    child: const Text("Tap Me (Absorbed)"),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text("AbsorbPointer - With GestureDetector (Not Absorbed)", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              AbsorbPointer(
                absorbing: false,
                child: GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Gesture Detected")));
                  },
                  child: Container(
                    color: Colors.green.shade100,
                    padding: const EdgeInsets.all(20),
                    child: const Text("Tap Me (Not Absorbed)"),
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
