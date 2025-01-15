import 'package:flutter/material.dart';

class GestureBindingScreen extends StatelessWidget {
  const GestureBindingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GestureBinding Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("GestureBinding - Example", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              // GestureBinding is an abstract class and cannot be instantiated directly.
              // It's used internally by other widgets like GestureDetector.
              // This example shows a GestureDetector which uses GestureBinding internally.
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text("Tapped!")));
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.blue.shade100,
                  child: const Text("Tap Me", style: TextStyle(color: Colors.black)),
                ),
              ),
              const SizedBox(height: 20),
              const Text("GestureBinding - With Different Background",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text("Tapped!")));
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.green.shade100,
                  child: const Text("Tap Me", style: TextStyle(color: Colors.black)),
                ),
              ),
              const SizedBox(height: 20),
              const Text("GestureBinding - With Padding",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text("Tapped!")));
                },
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.yellow.shade100,
                    child: const Text("Tap Me", style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("GestureBinding - With Border Radius",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text("Tapped!")));
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.red.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text("Tap Me", style: TextStyle(color: Colors.black)),
                ),
              ),
              const SizedBox(height: 20),
              const Text("GestureBinding - With Text Style",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text("Tapped!")));
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.purple.shade100,
                  child: const Text("Tap Me",
                      style: TextStyle(
                          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(height: 20),
              const Text("GestureBinding - Wrapping a Text Widget",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text("Tapped!")));
                },
                child: const Text("Tap Me Text", style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
