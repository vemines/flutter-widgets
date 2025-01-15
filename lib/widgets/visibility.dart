import 'package:flutter/material.dart';

class VisibilityScreen extends StatelessWidget {
  const VisibilityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Visibility Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Visibility - Default (Visible)"),
              const SizedBox(height: 8),
              Visibility(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.blue.shade100,
                  child: const Text("I am visible!"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Visibility - (Invisible)"),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(border: Border.all()),
                child: Visibility(
                  visible: false,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.red.shade100,
                    child: const Text("I am invisible!"),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                  "Visibility - Maintain Size (Invisible)\nmaintainSize, maintainAnimation, maintainState: true"),
              const SizedBox(height: 8),
              Visibility(
                visible: false,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.green.shade100,
                  child: const Text("I am invisible, but I take up space!"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Visibility - Replacement Widget (Invisible)"),
              const SizedBox(height: 8),
              Visibility(
                visible: false,
                replacement: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.grey.shade300,
                  child: const Text(
                      "I am the replacement, not invisible!\nI display when visible: false"),
                ),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.purple.shade100,
                  child: const Text("I am invisible!"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Visibility - With Alignment (Visible)"),
              const SizedBox(height: 8),
              Visibility(
                visible: true,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.teal.shade100,
                    child: const Text("Aligned to bottom right"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StatefulVisibilityExample extends StatefulWidget {
  const StatefulVisibilityExample({super.key});

  @override
  State<StatefulVisibilityExample> createState() => _StatefulVisibilityExampleState();
}

class _StatefulVisibilityExampleState extends State<StatefulVisibilityExample> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _incrementCounter,
      child: Container(
        padding: const EdgeInsets.all(10),
        color: Colors.yellow.shade100,
        child: Text("Counter: $_counter"),
      ),
    );
  }
}
