import 'package:flutter/material.dart';

class OpacityScreen extends StatelessWidget {
  const OpacityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Opacity Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Opacity Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  Column(
                    children: [
                      const Text("Opacity - blue 0.25"),
                      Opacity(
                        opacity: 0.25,
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
                      const Text("Opacity - green 0.5"),
                      Opacity(
                        opacity: 0.5,
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
                      const Text("Opacity - red 0.75"),
                      Opacity(
                        opacity: 0.75,
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
                      const Text("Opacity - 0.5 Text"),
                      Opacity(
                        opacity: 0.5,
                        child: const Text("Hello World", style: TextStyle(fontSize: 20)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("Opacity - 0.8 Icon"),
                      Opacity(
                        opacity: 0.8,
                        child: const Icon(Icons.star, size: 50, color: Colors.yellow),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("Opacity - 0.3 Padding"),
                      Opacity(
                        opacity: 0.3,
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          color: Colors.purple,
                          child: const Text("Padded Text", style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("Opacity - 0.6 with Bordered Container"),
                      Opacity(
                        opacity: 0.6,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Bordered", style: TextStyle(fontSize: 16)),
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
