import 'package:flutter/material.dart';

class FractionalTranslationScreen extends StatelessWidget {
  const FractionalTranslationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FractionalTranslation Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("FractionalTranslation - Default"),
              const SizedBox(height: 8),
              FractionalTranslation(
                translation: const Offset(0.2, 0.2),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              const Text("FractionalTranslation - Negative Offset"),
              const SizedBox(height: 8),
              FractionalTranslation(
                translation: const Offset(-0.2, -0.2),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 20),
              const Text("FractionalTranslation - Larger Offset"),
              const SizedBox(height: 8),
              FractionalTranslation(
                translation: const Offset(0.5, 0.5),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 20),
              const Text("FractionalTranslation - Different Offset Values"),
              const SizedBox(height: 8),
              FractionalTranslation(
                translation: const Offset(0.3, -0.1),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 20),
              const Text("FractionalTranslation - With Text"),
              const SizedBox(height: 8),
              FractionalTranslation(
                translation: const Offset(0.1, 0.1),
                child: const Text("Translated Text", style: TextStyle(fontSize: 20)),
              ),
              const SizedBox(height: 20),
              const Text("FractionalTranslation - With a different child size"),
              const SizedBox(height: 8),
              FractionalTranslation(
                translation: const Offset(0.2, 0.2),
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.purple,
                ),
              ),
              const SizedBox(height: 20),
              const Text("FractionalTranslation - With a different child size and offset"),
              const SizedBox(height: 8),
              FractionalTranslation(
                translation: const Offset(-0.3, 0.3),
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.brown,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
