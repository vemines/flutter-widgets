import 'package:flutter/material.dart';

class ModalBarrierScreen extends StatelessWidget {
  const ModalBarrierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ModalBarrier Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ModalBarrier Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("ModalBarrier - Default"),
              const SizedBox(height: 8),
              Center(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.grey[300],
                      ),
                      const ModalBarrier(),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ModalBarrier - Color Red"),
              const SizedBox(height: 8),
              Center(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.grey[300],
                      ),
                      const ModalBarrier(color: Colors.red),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ModalBarrier - Dismissible True"),
              const SizedBox(height: 8),
              Center(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.grey[300],
                      ),
                      const ModalBarrier(dismissible: true),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ModalBarrier - Dismissible False"),
              const SizedBox(height: 8),
              Center(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.grey[300],
                      ),
                      const ModalBarrier(dismissible: false),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ModalBarrier - Opacity 0.5"),
              const SizedBox(height: 8),
              Center(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.grey[300],
                      ),
                      ModalBarrier(color: Colors.black54.withAlpha((0.5 * 255).floor())),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                  "ModalBarrier - With a child (Not applicable, ModalBarrier doesn't take a child)"),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
