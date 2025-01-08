import 'package:flutter/material.dart';

class AnimatedAlignScreen extends StatelessWidget {
  const AnimatedAlignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedAlign Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("AnimatedAlign Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              const Text("AnimatedAlign - Default Alignment (Center)"),
              const SizedBox(height: 8),
              const AnimatedAlign(
                alignment: Alignment.center,
                duration: Duration(seconds: 1),
                child: FlutterLogo(size: 50),
              ),
              const SizedBox(height: 16),
              const Text("AnimatedAlign - Top Left Alignment"),
              const SizedBox(height: 8),
              AnimatedAlign(
                alignment: Alignment.topLeft,
                duration: const Duration(seconds: 1),
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 16),
              const Text("AnimatedAlign - Bottom Right Alignment"),
              const SizedBox(height: 8),
              AnimatedAlign(
                alignment: Alignment.bottomRight,
                duration: const Duration(seconds: 1),
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 16),
              const Text("AnimatedAlign - With Different Duration"),
              const SizedBox(height: 8),
              AnimatedAlign(
                alignment: Alignment.centerRight,
                duration: const Duration(milliseconds: 500),
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 16),
              const Text("AnimatedAlign - With Curve"),
              const SizedBox(height: 8),
              AnimatedAlign(
                alignment: Alignment.bottomLeft,
                duration: const Duration(seconds: 1),
                curve: Curves.easeIn,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 16),
              const Text("AnimatedAlign - Wrapping a Text Widget"),
              const SizedBox(height: 8),
              AnimatedAlign(
                alignment: Alignment.center,
                duration: const Duration(seconds: 1),
                child: const Text("Animated Text", style: TextStyle(fontSize: 16)),
              ),
              const SizedBox(height: 16),
              const Text("AnimatedAlign - Wrapping a Container"),
              const SizedBox(height: 8),
              AnimatedAlign(
                alignment: Alignment.center,
                duration: const Duration(seconds: 1),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
