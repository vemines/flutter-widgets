import 'package:flutter/material.dart';

class TransformScreen extends StatelessWidget {
  const TransformScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transform Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Transform - Default"),
              const SizedBox(height: 8),
              Transform(
                transform: Matrix4.identity(),
                child: Container(
                  color: Colors.blue,
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(height: 16),
              const Text("Transform - Rotated"),
              const SizedBox(height: 8),
              Transform(
                transform: Matrix4.rotationZ(0.5),
                child: Container(
                  color: Colors.green,
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(height: 16),
              const Text("Transform - Scaled"),
              const SizedBox(height: 8),
              Transform(
                transform: Matrix4.diagonal3Values(1.5, 1.5, 1.0),
                child: Container(
                  color: Colors.red,
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(height: 16),
              const Text("Transform - Translated"),
              const SizedBox(height: 8),
              Transform(
                transform: Matrix4.translationValues(20, 20, 0),
                child: Container(
                  color: Colors.orange,
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(height: 16),
              const Text("Transform - Skewed"),
              const SizedBox(height: 8),
              Transform(
                transform: Matrix4.skewX(0.3),
                child: Container(
                  color: Colors.purple,
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(height: 16),
              const Text("Transform - Combined"),
              const SizedBox(height: 8),
              Transform(
                transform: Matrix4.rotationZ(0.3) * Matrix4.translationValues(10, 10, 0) * Matrix4.diagonal3Values(1.2, 1.2, 1.0),
                child: Container(
                  color: Colors.teal,
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(height: 16),
              const Text("Transform - With Alignment (Center)"),
              const SizedBox(height: 8),
              Transform(
                transform: Matrix4.rotationZ(0.5),
                alignment: Alignment.center,
                child: Container(
                  color: Colors.brown,
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(height: 16),
              const Text("Transform - With Alignment (Top Left)"),
              const SizedBox(height: 8),
              Transform(
                transform: Matrix4.rotationZ(0.5),
                alignment: Alignment.topLeft,
                child: Container(
                  color: Colors.grey,
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
