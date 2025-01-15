import 'package:flutter/material.dart';

class RotationTransitionScreen extends StatelessWidget {
  const RotationTransitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RotationTransition Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RotationTransition Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("RotationTransition - Rotation"),
              RotationTransition(
                turns: const AlwaysStoppedAnimation(0.5),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child:
                      const Center(child: Text("Rotate Me", style: TextStyle(color: Colors.white))),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RotationTransition - Animated Rotation"),
              RotationTransition(
                turns: Tween(begin: 0.0, end: 1.0).animate(
                  CurvedAnimation(
                    parent: AnimationController(
                      duration: const Duration(seconds: 2),
                      vsync: Navigator.of(context),
                    )..repeat(),
                    curve: Curves.linear,
                  ),
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  child:
                      const Center(child: Text("Animated", style: TextStyle(color: Colors.white))),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RotationTransition - Different Alignment"),
              RotationTransition(
                alignment: Alignment.bottomRight,
                turns: const AlwaysStoppedAnimation(0.25),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  child:
                      const Center(child: Text("Aligned", style: TextStyle(color: Colors.white))),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RotationTransition - With a Container"),
              RotationTransition(
                turns: const AlwaysStoppedAnimation(0.75),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: const Text("Wrapped Text"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RotationTransition - With a different child"),
              RotationTransition(
                turns: const AlwaysStoppedAnimation(0.25),
                child: const Icon(Icons.star, size: 50, color: Colors.amber),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
