import 'package:flutter/material.dart';

class SizeTransitionScreen extends StatelessWidget {
  const SizeTransitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SizeTransition Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("SizeTransition Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("SizeTransition - Default (Wrapped in Container)"),
              SizeTransition(
                sizeFactor: const AlwaysStoppedAnimation(0.5),
                axis: Axis.vertical,
                axisAlignment: -1.0,
                child: Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              const Text("SizeTransition - Horizontal, Size Factor 0.8"),
              SizeTransition(
                sizeFactor: const AlwaysStoppedAnimation(0.8),
                axis: Axis.horizontal,
                axisAlignment: 0.0,
                child: Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              const Text("SizeTransition - Vertical, Size Factor 0.2, Alignment 1.0"),
              SizeTransition(
                sizeFactor: const AlwaysStoppedAnimation(0.2),
                axis: Axis.vertical,
                axisAlignment: 1.0,
                child: Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              const Text("SizeTransition - Horizontal, Size Factor 0.5, Alignment -1.0"),
              SizeTransition(
                sizeFactor: const AlwaysStoppedAnimation(0.5),
                axis: Axis.horizontal,
                axisAlignment: -1.0,
                child: Container(
                  color: Colors.orange,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              const Text("SizeTransition - Vertical, Size Factor 1.0, Alignment 0.0"),
              SizeTransition(
                sizeFactor: const AlwaysStoppedAnimation(1.0),
                axis: Axis.vertical,
                axisAlignment: 0.0,
                child: Container(
                  color: Colors.purple,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              const Text("SizeTransition - Horizontal, Size Factor 0.3, Alignment 1.0"),
              SizeTransition(
                sizeFactor: const AlwaysStoppedAnimation(0.3),
                axis: Axis.horizontal,
                axisAlignment: 1.0,
                child: Container(
                  color: Colors.teal,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              const Text("SizeTransition - Vertical, Size Factor 0.7, Alignment -1.0"),
              SizeTransition(
                sizeFactor: const AlwaysStoppedAnimation(0.7),
                axis: Axis.vertical,
                axisAlignment: -1.0,
                child: Container(
                  color: Colors.brown,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              const Text("SizeTransition - Horizontal, Size Factor 0.9, Alignment 0.0"),
              SizeTransition(
                sizeFactor: const AlwaysStoppedAnimation(0.9),
                axis: Axis.horizontal,
                axisAlignment: 0.0,
                child: Container(
                  color: Colors.grey,
                  width: 100,
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
