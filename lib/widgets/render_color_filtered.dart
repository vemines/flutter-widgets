import 'package:flutter/material.dart';

class RenderColorFilteredScreen extends StatelessWidget {
  const RenderColorFilteredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RenderColorFiltered Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RenderColorFiltered - Default",
                  style: TextStyle(fontWeight: FontWeight.bold)),
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
              const Text("RenderColorFiltered - Red Tint",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ColorFiltered(
                colorFilter: const ColorFilter.mode(Colors.red, BlendMode.srcATop),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderColorFiltered - Green Tint with Opacity",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ColorFiltered(
                colorFilter:
                    ColorFilter.mode(Colors.green.withValues(alpha: 255 * 0.5), BlendMode.srcATop),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderColorFiltered - Blend Mode Multiply",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ColorFiltered(
                colorFilter: const ColorFilter.mode(Colors.yellow, BlendMode.multiply),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderColorFiltered - Blend Mode Screen",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ColorFiltered(
                colorFilter: const ColorFilter.mode(Colors.white, BlendMode.screen),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderColorFiltered - Wrapping a Text Widget",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ColorFiltered(
                colorFilter: const ColorFilter.mode(Colors.red, BlendMode.srcATop),
                child: const Text("Filtered Text", style: TextStyle(fontSize: 20)),
              ),
              const SizedBox(height: 20),
              const Text("RenderColorFiltered - Wrapping a Container",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ColorFiltered(
                colorFilter: const ColorFilter.mode(Colors.green, BlendMode.srcATop),
                child: Container(
                  width: 150,
                  height: 50,
                  color: Colors.grey[300],
                  child: const Center(child: Text("Filtered Container")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
