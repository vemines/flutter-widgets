import 'package:flutter/material.dart';

class AnimatedRotationScreen extends StatelessWidget {
  const AnimatedRotationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedRotation Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("AnimatedRotation Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  Column(
                    children: [
                      const Text("AnimatedRotation - Default"),
                      AnimatedRotation(
                        turns: 0.5,
                        duration: const Duration(seconds: 1),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("AnimatedRotation - Different Turns"),
                      AnimatedRotation(
                        turns: 1,
                        duration: const Duration(seconds: 2),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("AnimatedRotation - Different Duration"),
                      AnimatedRotation(
                        turns: 0.25,
                        duration: const Duration(milliseconds: 500),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("AnimatedRotation - With Alignment"),
                      AnimatedRotation(
                        turns: 0.75,
                        duration: const Duration(seconds: 1),
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("AnimatedRotation - With Child Text"),
                      AnimatedRotation(
                        turns: 0.5,
                        duration: const Duration(seconds: 1),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.purple,
                          child: const Center(child: Text("Rotate Me", style: TextStyle(color: Colors.white))),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("AnimatedRotation - With Different Child Size"),
                      AnimatedRotation(
                        turns: 0.5,
                        duration: const Duration(seconds: 1),
                        child: Container(
                          width: 50,
                          height: 50,
                          color: Colors.teal,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("AnimatedRotation - With Different Child Shape"),
                      AnimatedRotation(
                        turns: 0.5,
                        duration: const Duration(seconds: 1),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.brown,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
