import 'package:flutter/material.dart';

class PlaceholderScreen extends StatelessWidget {
  const PlaceholderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Placeholder Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Placeholder - Default"),
              const SizedBox(height: 8),
              const Placeholder(),
              const SizedBox(height: 16),
              const Text("Placeholder - Colored"),
              const SizedBox(height: 8),
              const Placeholder(color: Colors.blue, strokeWidth: 3,),
              const SizedBox(height: 16),
              const Text("Placeholder - Sized"),
              const SizedBox(height: 8),
              const Placeholder(fallbackWidth: 100, fallbackHeight: 50,),
              const SizedBox(height: 16),
              const Text("Placeholder - Different Stroke Width"),
              const SizedBox(height: 8),
              const Placeholder(strokeWidth: 5,),
              const SizedBox(height: 16),
              const Text("Placeholder - With Container"),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Placeholder(),
              ),
              const SizedBox(height: 16),
              const Text("Placeholder - With Text"),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text("This is some text with a placeholder: "),
              ),
              const SizedBox(height: 8),
              const Placeholder(),
            ],
          ),
        ),
      ),
    );
  }
}
