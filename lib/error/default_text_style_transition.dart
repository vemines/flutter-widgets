import 'package:flutter/material.dart';

class DefaultTextStyleTransitionScreen extends StatelessWidget {
  const DefaultTextStyleTransitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DefaultTextStyleTransition Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("DefaultTextStyleTransition Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildVariation(
                    "DefaultTextStyleTransition - Basic",
                    DefaultTextStyleTransition(
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                      child: const Text("Hello, World!"),
                    ),
                  ),
                  _buildVariation(
                    "DefaultTextStyleTransition - Animated Size",
                    DefaultTextStyleTransition(
                      style: const TextStyle(fontSize: 24, color: Colors.blue),
                      child: const Text("Animated Text"),
                    ),
                  ),
                  _buildVariation(
                    "DefaultTextStyleTransition - Animated Color",
                    DefaultTextStyleTransition(
                      style: const TextStyle(fontSize: 16, color: Colors.red),
                      child: const Text("Color Change"),
                    ),
                  ),
                  _buildVariation(
                    "DefaultTextStyleTransition - Animated Style",
                    DefaultTextStyleTransition(
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                      child: const Text("Styled Text"),
                    ),
                  ),
                  _buildVariation(
                    "DefaultTextStyleTransition - With Container",
                    DefaultTextStyleTransition(
                      style: const TextStyle(fontSize: 14, color: Colors.green),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.grey[200],
                        child: const Text("Text in Container"),
                      ),
                    ),
                  ),
                  _buildVariation(
                    "DefaultTextStyleTransition - With Padding",
                    DefaultTextStyleTransition(
                      style: const TextStyle(fontSize: 16, color: Colors.purple),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text("Text with Padding"),
                      ),
                    ),
                  ),
                  _buildVariation(
                    "DefaultTextStyleTransition - With Align",
                    DefaultTextStyleTransition(
                      style: const TextStyle(fontSize: 16, color: Colors.orange),
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text("Aligned Text"),
                      ),
                    ),
                  ),
                  _buildVariation(
                    "DefaultTextStyleTransition - With Opacity",
                    DefaultTextStyleTransition(
                      style: const TextStyle(fontSize: 16, color: Colors.brown),
                      child: const Opacity(
                        opacity: 0.7,
                        child: Text("Opacity Text"),
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

  Widget _buildVariation(String name, Widget widget) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tooltip(message: name, child: Text(name, style: const TextStyle(fontWeight: FontWeight.bold))),
        const SizedBox(height: 8),
        widget,
      ],
    );
  }
}
