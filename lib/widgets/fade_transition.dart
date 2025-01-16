import 'package:flutter/material.dart';

class FadeTransitionScreen extends StatelessWidget {
  const FadeTransitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FadeTransition Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("FadeTransition Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildFadeTransitionVariation(
                    name: "FadeTransition - Simple Container",
                    description: "A simple container with a fade animation.",
                    child: FadeTransition(
                      opacity: const AlwaysStoppedAnimation(0.5),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  _buildFadeTransitionVariation(
                    name: "FadeTransition - Text with Animation",
                    description: "A text widget with a fade animation.",
                    child: FadeTransition(
                      opacity: const AlwaysStoppedAnimation(0.8),
                      child: const Text(
                        "Fading Text",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  _buildFadeTransitionVariation(
                    name: "FadeTransition - Image with Animation",
                    description: "An image with a fade animation.",
                    child: FadeTransition(
                      opacity: const AlwaysStoppedAnimation(0.3),
                      child: Image.network(
                        'https://placehold.co/100x100',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  _buildFadeTransitionVariation(
                    name: "FadeTransition - Animated Opacity",
                    description: "Fade transition with an animated opacity.",
                    child: TweenAnimationBuilder<double>(
                      tween: Tween<double>(begin: 0.0, end: 1.0),
                      duration: const Duration(seconds: 2),
                      builder: (context, value, child) {
                        return FadeTransition(
                          opacity: AlwaysStoppedAnimation(value),
                          child: child,
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  _buildFadeTransitionVariation(
                    name: "FadeTransition - Animated Opacity (Reverse)",
                    description: "Fade transition with an animated opacity (reverse).",
                    child: TweenAnimationBuilder<double>(
                      tween: Tween<double>(begin: 1.0, end: 0.0),
                      duration: const Duration(seconds: 2),
                      builder: (context, value, child) {
                        return FadeTransition(
                          opacity: AlwaysStoppedAnimation(value),
                          child: child,
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.red,
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

  Widget _buildFadeTransitionVariation({
    required String name,
    required String description,
    required Widget child,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tooltip(
          message: description,
          child: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        const SizedBox(height: 8),
        child,
      ],
    );
  }
}
