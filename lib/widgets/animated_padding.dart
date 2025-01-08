import 'package:flutter/material.dart';

class AnimatedPaddingScreen extends StatelessWidget {
  const AnimatedPaddingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedPadding Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("AnimatedPadding Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("AnimatedPadding - Basic Padding"),
              AnimatedPadding(
                padding: const EdgeInsets.all(20),
                duration: const Duration(seconds: 1),
                child: Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              const Text("AnimatedPadding - Different Padding"),
              AnimatedPadding(
                padding: const EdgeInsets.only(left: 50, right: 10, top: 30, bottom: 5),
                duration: const Duration(seconds: 1),
                child: Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              const Text("AnimatedPadding - Zero Padding"),
              AnimatedPadding(
                padding: EdgeInsets.zero,
                duration: const Duration(seconds: 1),
                child: Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              const Text("AnimatedPadding - With Curve"),
              AnimatedPadding(
                padding: const EdgeInsets.all(20),
                duration: const Duration(seconds: 1),
                curve: Curves.bounceInOut,
                child: Container(
                  color: Colors.orange,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              const Text("AnimatedPadding - Wrapping a Text Widget"),
              AnimatedPadding(
                padding: const EdgeInsets.all(10),
                duration: const Duration(seconds: 1),
                child: const Text("Wrapped Text", style: TextStyle(fontSize: 16)),
              ),
              const SizedBox(height: 20),
              const Text("AnimatedPadding - Wrapping a Container"),
              AnimatedPadding(
                padding: const EdgeInsets.all(10),
                duration: const Duration(seconds: 1),
                child: Container(
                  color: Colors.purple,
                  width: 50,
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
