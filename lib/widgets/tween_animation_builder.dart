import 'package:flutter/material.dart';

class TweenAnimationBuilderScreen extends StatelessWidget {
  const TweenAnimationBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TweenAnimationBuilder Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("TweenAnimationBuilder - Basic Example", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 0, end: 1),
                duration: const Duration(seconds: 2),
                builder: (BuildContext context, double value, Widget? child) {
                  return Opacity(
                    opacity: value,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              const Text("TweenAnimationBuilder - Animated Size", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 50, end: 150),
                duration: const Duration(seconds: 2),
                builder: (BuildContext context, double value, Widget? child) {
                  return Container(
                    width: value,
                    height: value,
                    color: Colors.green,
                  );
                },
              ),
              const SizedBox(height: 20),
              const Text("TweenAnimationBuilder - Animated Color", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              TweenAnimationBuilder<Color?>(
                tween: ColorTween(begin: Colors.red, end: Colors.yellow),
                duration: const Duration(seconds: 2),
                builder: (BuildContext context, Color? color, Widget? child) {
                  return Container(
                    width: 100,
                    height: 100,
                    color: color,
                  );
                },
              ),
              const SizedBox(height: 20),
              const Text("TweenAnimationBuilder - Custom Curve", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 0, end: 1),
                duration: const Duration(seconds: 2),
                curve: Curves.easeInOut,
                builder: (BuildContext context, double value, Widget? child) {
                  return Transform.scale(
                    scale: value,
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.purple,
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              const Text("TweenAnimationBuilder - With Child Widget", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 0, end: 1),
                duration: const Duration(seconds: 2),
                builder: (BuildContext context, double value, Widget? child) {
                  return Opacity(
                    opacity: value,
                    child: child,
                  );
                },
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
