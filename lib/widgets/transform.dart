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
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(left: 16.0, bottom: 40),
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
              const Text("Transform - Matrix4.rotationZ 0.5"),
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
              const Text("Transform -  Matrix4.diagonal3 1.5, 1.5, 1.0"),
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
              const Text("Transform - Matrix4.translationValues 100, 20, 0"),
              const SizedBox(height: 8),
              Transform(
                transform: Matrix4.translationValues(100, 20, 0),
                child: Container(
                  color: Colors.orange,
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(height: 16),
              const Text("Transform - Matrix4.skewX 0.3"),
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
              const Text("Transform - Combined rotationZ*translationValues*diagonal3Values"),
              const SizedBox(height: 8),
              Transform(
                transform: Matrix4.rotationZ(0.3) *
                    Matrix4.translationValues(10, 10, 0) *
                    Matrix4.diagonal3Values(1.2, 1.2, 1.0),
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
              const SizedBox(height: 16),
              const Text("Transform - Rotation with Default Origin"),
              const SizedBox(height: 8),
              Transform(
                transform: Matrix4.rotationZ(0.5),
                child: Container(
                  color: Colors.amber,
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(height: 16),
              const Text("Transform - Rotation with Custom Origin 0, 0"),
              const SizedBox(height: 8),
              Transform(
                transform: Matrix4.rotationZ(0.5),
                origin: const Offset(0, 0),
                child: Container(
                  color: Colors.lightGreen,
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(height: 16),
              const Text("Transform - Rotation with Origin 20, 10"),
              const SizedBox(height: 8),
              Transform(
                transform: Matrix4.rotationZ(0.5),
                origin: const Offset(20, 10),
                child: Container(
                  color: Colors.lightGreen,
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
