import 'package:flutter/material.dart';

class ElevatedButtonScreen extends StatelessWidget {
  const ElevatedButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ElevatedButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ElevatedButton Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  Column(
                    children: [
                      const Text("ElevatedButton - Default"),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Default Button"),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("ElevatedButton - Blue Background"),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                        child: const Text("Blue Button", style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("ElevatedButton - Rounded Corners"),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        ),
                        child: const Text("Rounded Button"),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("ElevatedButton - Large Padding"),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        ),
                        child: const Text("Padded Button"),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("ElevatedButton - With Icon"),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                        label: const Text("Add Item"),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("ElevatedButton - Custom Text Style"),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Styled Text", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("ElevatedButton - Disabled"),
                      ElevatedButton(
                        onPressed: null,
                        child: const Text("Disabled Button"),
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
