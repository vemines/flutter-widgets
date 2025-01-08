import 'package:flutter/material.dart';

class RenderDecoratedBoxScreen extends StatelessWidget {
  const RenderDecoratedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RenderDecoratedBox Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("DecoratedBox Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildDecoratedBoxVariation(
                    "Default DecoratedBox",
                    const DecoratedBox(
                      decoration: BoxDecoration(color: Colors.grey),
                      child: SizedBox(width: 100, height: 100),
                    ),
                  ),
                  _buildDecoratedBoxVariation(
                    "DecoratedBox - Red Background",
                    DecoratedBox(
                      decoration: const BoxDecoration(color: Colors.red),
                      child: SizedBox(width: 100, height: 100),
                    ),
                  ),
                  _buildDecoratedBoxVariation(
                    "DecoratedBox - Border",
                    DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 2),
                      ),
                      child: SizedBox(width: 100, height: 100),
                    ),
                  ),
                  _buildDecoratedBoxVariation(
                    "DecoratedBox - Rounded Corners",
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SizedBox(width: 100, height: 100),
                    ),
                  ),
                  _buildDecoratedBoxVariation(
                    "DecoratedBox - Shadow",
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 255 * 0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: SizedBox(width: 100, height: 100),
                    ),
                  ),
                  _buildDecoratedBoxVariation(
                    "DecoratedBox - Gradient",
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.purple, Colors.pink],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: SizedBox(width: 100, height: 100),
                    ),
                  ),
                  _buildDecoratedBoxVariation(
                    "DecoratedBox - Image",
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://via.placeholder.com/100'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: SizedBox(width: 100, height: 100),
                    ),
                  ),
                  _buildDecoratedBoxVariation(
                    "DecoratedBox - With Padding",
                    DecoratedBox(
                      decoration: const BoxDecoration(color: Colors.teal),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(width: 60, height: 60, color: Colors.white),
                      ),
                    ),
                  ),
                  _buildDecoratedBoxVariation(
                    "DecoratedBox - With Margin",
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: DecoratedBox(
                        decoration: const BoxDecoration(color: Colors.orange),
                        child: Container(width: 60, height: 60, color: Colors.white),
                      ),
                    ),
                  ),
                  _buildDecoratedBoxVariation(
                    "DecoratedBox - With Shape",
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        color: Colors.cyan,
                        shape: BoxShape.circle,
                      ),
                      child: SizedBox(width: 100, height: 100),
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

  Widget _buildDecoratedBoxVariation(String label, Widget decoratedBox) {
    return Column(
      children: [
        Tooltip(message: label, child: decoratedBox),
        Text(label, textAlign: TextAlign.center),
      ],
    );
  }
}
