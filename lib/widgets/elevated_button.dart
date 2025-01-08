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
              const Text("ElevatedButton - Default"),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Default Button"),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButton - Blue Background"),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: const Text("Blue Button", style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButton - Red Text"),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.red,
                ),
                child: const Text("Red Text Button"),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButton - Large Padding"),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                ),
                child: const Text("Large Padding Button"),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButton - Rounded Corners"),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text("Rounded Button"),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButton - With Icon"),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text("Icon Button"),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButton - Custom Text Style"),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Custom Style",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButton - Minimum Size"),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                ),
                child: const Text("Minimum Size Button"),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButton - Disabled"),
              ElevatedButton(
                onPressed: null,
                child: const Text("Disabled Button"),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButton - With Shadow"),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                ),
                child: const Text("Shadow Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
