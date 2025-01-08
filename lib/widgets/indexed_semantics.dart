import 'package:flutter/material.dart';

class IndexedSemanticsScreen extends StatelessWidget {
  const IndexedSemanticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IndexedSemantics Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("IndexedSemantics Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildIndexedSemanticsVariation(
                    "Default IndexedSemantics",
                    IndexedSemantics(
                      index: 0,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        color: Colors.grey[200],
                        child: const Text("Item 1"),
                      ),
                    ),
                  ),
                  _buildIndexedSemanticsVariation(
                    "IndexedSemantics with index 1",
                    IndexedSemantics(
                      index: 1,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        color: Colors.grey[300],
                        child: const Text("Item 2"),
                      ),
                    ),
                  ),
                  _buildIndexedSemanticsVariation(
                    "IndexedSemantics with index 2",
                    IndexedSemantics(
                      index: 2,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        color: Colors.grey[400],
                        child: const Text("Item 3"),
                      ),
                    ),
                  ),
                  _buildIndexedSemanticsVariation(
                    "IndexedSemantics with different child",
                    IndexedSemantics(
                      index: 3,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Button"),
                      ),
                    ),
                  ),
                  _buildIndexedSemanticsVariation(
                    "IndexedSemantics with index 4 and a different child",
                    IndexedSemantics(
                      index: 4,
                      child: const Icon(Icons.star, size: 30, color: Colors.amber),
                    ),
                  ),
                  _buildIndexedSemanticsVariation(
                    "IndexedSemantics with index 5 and a different child",
                    IndexedSemantics(
                      index: 5,
                      child: const SizedBox(width: 50, height: 50, child: ColoredBox(color: Colors.blue)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIndexedSemanticsVariation(String label, Widget widget) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(message: label, child: widget),
        const SizedBox(height: 5),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
