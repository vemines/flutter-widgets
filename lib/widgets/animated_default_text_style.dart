import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleScreen extends StatelessWidget {
  const AnimatedDefaultTextStyleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedDefaultTextStyle Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("AnimatedDefaultTextStyle Variations:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              _buildVariation(
                "- Default Style",
                AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 300),
                  style: const TextStyle(fontSize: 20),
                  child: const Text("Hello World"),
                ),
              ),
              const SizedBox(height: 16),
              _buildVariation(
                "Color Change",
                AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 300),
                  style: const TextStyle(fontSize: 20, color: Colors.blue),
                  child: const Text("Hello World"),
                ),
              ),
              const SizedBox(height: 16),
              _buildVariation(
                "Font Size Change",
                AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 300),
                  style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  child: const Text("Hello World"),
                ),
              ),
              const SizedBox(height: 16),
              _buildVariation(
                "Font Family Change",
                AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 300),
                  style: const TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                  child: const Text("Hello World"),
                ),
              ),
              const SizedBox(height: 16),
              _buildVariation(
                "Multiple Style Changes",
                AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 300),
                  style: const TextStyle(
                      fontSize: 25, color: Colors.green, fontWeight: FontWeight.w500),
                  child: const Text("Hello World"),
                ),
              ),
              const SizedBox(height: 16),
              _buildVariation(
                "With Container",
                AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 300),
                  style: const TextStyle(fontSize: 20),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.grey[200],
                    child: const Text("Hello World"),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              _buildVariation(
                "With Align",
                AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 300),
                  style: const TextStyle(fontSize: 20),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: const Text("Hello World"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVariation(String title, Widget widget) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        widget,
        const SizedBox(height: 8),
        const Divider(),
      ],
    );
  }
}
