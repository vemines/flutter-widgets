import 'package:flutter/material.dart';

class ClipRectScreen extends StatelessWidget {
  const ClipRectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ClipRect Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ClipRect Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildClipRectVariation(
                    "ClipRect",
                    ClipRect(
                      child: Container(
                        color: Colors.blue,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  _buildClipRectVariation(
                    "ClipRect with BorderRadius",
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.green,
                        width: 100,
                        height: 100,
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

  Widget _buildClipRectVariation(String name, Widget widget) {
    return Column(
      children: [
        Tooltip(message: name, child: widget),
        Text(name, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
