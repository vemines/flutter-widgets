import 'package:flutter/material.dart';

class RenderObjectScreen extends StatelessWidget {
  const RenderObjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RenderObject Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RenderObject - Usage", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              // RenderObject is an abstract class and cannot be instantiated directly.
              // It's used as a base for other render objects.
              // The following code would cause an error:
              // RenderObject(),
              const Text(
                  "RenderObject is an abstract class and cannot be instantiated directly. It's used as a base for other render objects. This example shows how it's used indirectly through other widgets."),
              const SizedBox(height: 20),
              const Text("Container with RenderObject",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: const Center(child: Text("Container")),
              ),
              const SizedBox(height: 20),
              const Text("Text with RenderObject", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text("This is a text widget that uses a RenderObject internally."),
              const SizedBox(height: 20),
              const Text("Padding with RenderObject",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  color: Colors.green,
                  child: const Text("Padded Text"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Align with RenderObject", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  color: Colors.orange,
                  child: const Text("Aligned Text"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Center with RenderObject", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Center(
                child: Container(
                  color: Colors.purple,
                  child: const Text("Centered Text"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("SizedBox with RenderObject",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                width: 200,
                height: 50,
                child: Container(
                  color: Colors.teal,
                  child: const Center(child: Text("Sized Box")),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ConstrainedBox with RenderObject",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 150, maxHeight: 75),
                child: Container(
                  color: Colors.brown,
                  child: const Center(child: Text("Constrained Box")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
