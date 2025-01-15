import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatelessWidget {
  const AnimatedContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedContainer Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("AnimatedContainer Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildAnimatedContainerVariation(
                    name: "AnimatedContainer",
                    description: "Default size and color.",
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                    ),
                  ),
                  _buildAnimatedContainerVariation(
                    name: "AnimatedContainer - Red Background",
                    description: "Red background color.",
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                  ),
                  _buildAnimatedContainerVariation(
                    name: "AnimatedContainer - Larger Size",
                    description: "Larger width and height.",
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: 150,
                      height: 150,
                      color: Colors.green,
                    ),
                  ),
                  _buildAnimatedContainerVariation(
                    name: "AnimatedContainer - Rounded Corners",
                    description: "Rounded corners with a border radius.",
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  _buildAnimatedContainerVariation(
                    name: "AnimatedContainer - Different Duration",
                    description: "Slower animation duration.",
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 2),
                      width: 100,
                      height: 100,
                      color: Colors.purple,
                    ),
                  ),
                  _buildAnimatedContainerVariation(
                    name: "AnimatedContainer - With Margin",
                    description: "Container with margin.",
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: 100,
                      height: 100,
                      color: Colors.teal,
                      margin: const EdgeInsets.all(20),
                    ),
                  ),
                  _buildAnimatedContainerVariation(
                    name: "AnimatedContainer - With Padding",
                    description: "Container with padding.",
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: 100,
                      height: 100,
                      color: Colors.lime,
                      padding: const EdgeInsets.all(10),
                      child: const Center(child: Text("Text")),
                    ),
                  ),
                  _buildAnimatedContainerVariation(
                    name: "AnimatedContainer - With Alignment",
                    description: "Container with alignment.",
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: 100,
                      height: 100,
                      color: Colors.amber,
                      alignment: Alignment.bottomRight,
                      child: const Icon(Icons.star, color: Colors.white),
                    ),
                  ),
                  _buildAnimatedContainerVariation(
                    name: "AnimatedContainer - With Curve",
                    description: "Container with a curve animation.",
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut,
                      width: 100,
                      height: 100,
                      color: Colors.brown,
                    ),
                  ),
                  _buildAnimatedContainerVariation(
                    name: "AnimatedContainer - With Box Shadow",
                    description: "Container with a box shadow.",
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 255 * 0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedContainerVariation(
      {required String name, required String description, required Widget child}) {
    return Tooltip(
      message: "$name: $description",
      child: Column(
        children: [
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          child,
        ],
      ),
    );
  }
}
