import 'package:flutter/material.dart';

class KeyedSubtreeScreen extends StatelessWidget {
  const KeyedSubtreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KeyedSubtree Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("KeyedSubtree - Basic Usage (Wrapping Container):"),
              const SizedBox(height: 8),
              KeyedSubtree(
                key: const ValueKey('container_key'),
                child: Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              const Text("KeyedSubtree - Basic Usage (Wrapping Text):"),
              const SizedBox(height: 8),
              KeyedSubtree(
                key: const ValueKey('text_key'),
                child: const Text("Wrapped Text", style: TextStyle(fontSize: 20)),
              ),
              const SizedBox(height: 20),
              const Text("KeyedSubtree - Different Keys (Container):"),
              const SizedBox(height: 8),
              Row(
                children: [
                  KeyedSubtree(
                    key: const ValueKey('container_key_1'),
                    child: Container(
                      color: Colors.red,
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const SizedBox(width: 10),
                  KeyedSubtree(
                    key: const ValueKey('container_key_2'),
                    child: Container(
                      color: Colors.green,
                      width: 50,
                      height: 50,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text("KeyedSubtree - Different Keys (Text):"),
              const SizedBox(height: 8),
              Row(
                children: [
                  KeyedSubtree(
                    key: const ValueKey('text_key_1'),
                    child: const Text("Text 1", style: TextStyle(fontSize: 16)),
                  ),
                  const SizedBox(width: 10),
                  KeyedSubtree(
                    key: const ValueKey('text_key_2'),
                    child: const Text("Text 2", style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text("KeyedSubtree - With Same Key (Container):"),
              const SizedBox(height: 8),
              Row(
                children: [
                  KeyedSubtree(
                    key: const ValueKey('same_key'),
                    child: Container(
                      color: Colors.orange,
                      width: 40,
                      height: 40,
                    ),
                  ),
                  const SizedBox(width: 10),
                  KeyedSubtree(
                    key: const ValueKey('same_key'),
                    child: Container(
                      color: Colors.purple,
                      width: 40,
                      height: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text("KeyedSubtree - With Same Key (Text):"),
              const SizedBox(height: 8),
              Row(
                children: [
                  KeyedSubtree(
                    key: const ValueKey('same_key_text'),
                    child: const Text("Same Key Text 1", style: TextStyle(fontSize: 14)),
                  ),
                  const SizedBox(width: 10),
                  KeyedSubtree(
                    key: const ValueKey('same_key_text'),
                    child: const Text("Same Key Text 2", style: TextStyle(fontSize: 14)),
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
