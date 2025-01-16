import 'package:flutter/material.dart';

class ColorFilteredScreen extends StatelessWidget {
  const ColorFilteredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ColorFiltered Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ColorFiltered - Default"),
              const SizedBox(height: 8),
              ColorFiltered(
                colorFilter: const ColorFilter.mode(Colors.transparent, BlendMode.srcOver),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              const Text("ColorFiltered - Red Overlay"),
              const SizedBox(height: 8),
              ColorFiltered(
                colorFilter: const ColorFilter.mode(Colors.red, BlendMode.srcOver),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              const Text("ColorFiltered - Green Blend"),
              const SizedBox(height: 8),
              ColorFiltered(
                colorFilter: const ColorFilter.mode(Colors.green, BlendMode.multiply),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              const Text("ColorFiltered - With Image"),
              const SizedBox(height: 8),
              ColorFiltered(
                colorFilter: const ColorFilter.mode(Colors.yellow, BlendMode.modulate),
                child: Image.network(
                  'https://placehold.co/100x100',
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              const Text("ColorFiltered - With Text"),
              const SizedBox(height: 8),
              ColorFiltered(
                colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.saturation),
                child: const Text(
                  'Filtered Text',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ColorFiltered - With Opacity"),
              const SizedBox(height: 8),
              ColorFiltered(
                colorFilter: const ColorFilter.mode(Colors.black54, BlendMode.srcOver),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              const Text("ColorFiltered - Different Blend Mode"),
              const SizedBox(height: 8),
              ColorFiltered(
                colorFilter: const ColorFilter.mode(Colors.purple, BlendMode.color),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              const Text("ColorFiltered - With Container"),
              const SizedBox(height: 8),
              ColorFiltered(
                colorFilter: const ColorFilter.mode(Colors.orange, BlendMode.srcATop),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
