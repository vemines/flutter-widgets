import 'package:flutter/material.dart';

class RawImageScreen extends StatelessWidget {
  const RawImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RawImage Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RawImage - Basic"),
              const SizedBox(height: 8),
              // RawImage without a specific image is not very useful, so we'll show it with a placeholder.
              // In a real application, you would load an image from memory or a file.
              Container(
                width: 100,
                height: 100,
                color: Colors.grey[300],
                child: const Center(child: Text("Placeholder")),
              ),
              const SizedBox(height: 20),
              const Text("RawImage - With a specific image (placeholder)"),
              const SizedBox(height: 8),
              // This is a placeholder. In a real app, you would load an image from memory or a file.
              // For demonstration, we'll use a Container with a color as a placeholder.
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
              const Text("RawImage - With a specific image (placeholder) and different size"),
              const SizedBox(height: 8),
              Container(
                width: 50,
                height: 50,
                color: Colors.green,
              ),
              const SizedBox(height: 20),
              const Text("RawImage - With a specific image (placeholder) and different size and alignment"),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 75,
                  height: 75,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 20),
              const Text("RawImage - With a specific image (placeholder) and different size and alignment and padding"),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 60,
                    height: 60,
                    color: Colors.orange,
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
