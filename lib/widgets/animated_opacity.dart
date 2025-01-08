import 'package:flutter/material.dart';

class AnimatedOpacityScreen extends StatelessWidget {
  const AnimatedOpacityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedOpacity Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("AnimatedOpacity Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildAnimatedOpacityVariation(
                    label: "AnimatedOpacity - Fade In",
                    opacity: 1.0,
                    duration: const Duration(seconds: 1),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                    ),
                  ),
                  _buildAnimatedOpacityVariation(
                    label: "AnimatedOpacity - Fade Out",
                    opacity: 0.0,
                    duration: const Duration(seconds: 1),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                  ),
                  _buildAnimatedOpacityVariation(
                    label: "AnimatedOpacity - Fade In/Out",
                    opacity: 0.5,
                    duration: const Duration(milliseconds: 500),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    ),
                  ),
                  _buildAnimatedOpacityVariation(
                    label: "AnimatedOpacity - Different Child",
                    opacity: 0.8,
                    duration: const Duration(seconds: 2),
                    child: const Icon(Icons.star, size: 50, color: Colors.yellow),
                  ),
                  _buildAnimatedOpacityVariation(
                    label: "AnimatedOpacity - Small Container",
                    opacity: 0.3,
                    duration: const Duration(seconds: 1),
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.purple,
                    ),
                  ),
                  _buildAnimatedOpacityVariation(
                    label: "AnimatedOpacity - Large Container",
                    opacity: 0.7,
                    duration: const Duration(seconds: 1),
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.orange,
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

  Widget _buildAnimatedOpacityVariation({
    required String label,
    required double opacity,
    required Duration duration,
    required Widget child,
  }) {
    return Column(
      children: [
        Tooltip(message: label, child: Text(label, style: const TextStyle(fontSize: 14))),
        const SizedBox(height: 8),
        AnimatedOpacity(
          opacity: opacity,
          duration: duration,
          child: child,
        ),
      ],
    );
  }
}
