import 'package:flutter/material.dart';

class ShaderScreen extends StatelessWidget {
  const ShaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shader Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Shader - Basic Example", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              // Shader widget without wrapping another widget.
              // This is not applicable as Shader requires a child.
              // Shader(), // This would cause an error.
              const SizedBox(height: 16),
              const Text("Shader - With Container Child", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    colors: [Colors.yellow, Colors.red],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcATop,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 16),
              const Text("Shader - With Text Child", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    colors: [Colors.green, Colors.blue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcATop,
                child: const Text(
                  'Shaded Text',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              const SizedBox(height: 16),
              const Text("Shader - Different Blend Mode", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const RadialGradient(
                    colors: [Colors.purple, Colors.orange],
                    center: Alignment.center,
                    radius: 0.5,
                  ).createShader(bounds);
                },
                blendMode: BlendMode.dstOut,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16),
              const Text("Shader - With Custom Gradient", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    colors: [Colors.pink, Colors.teal],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcATop,
                child: Container(
                  width: 150,
                  height: 50,
                  color: Colors.white,
                  child: const Center(child: Text("Gradient Text", style: TextStyle(color: Colors.black))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
