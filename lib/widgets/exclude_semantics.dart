import 'package:flutter/material.dart';

class ExcludeSemanticsScreen extends StatelessWidget {
  const ExcludeSemanticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ExcludeSemantics Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ExcludeSemantics - Default (with child)"),
              ExcludeSemantics(
                child: Container(
                  color: Colors.blue,
                  padding: const EdgeInsets.all(10),
                  child: const Text("Child Text", style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ExcludeSemantics - Excluding Semantics"),
              ExcludeSemantics(
                excluding: true,
                child: Container(
                  color: Colors.green,
                  padding: const EdgeInsets.all(10),
                  child: const Text("Child Text", style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ExcludeSemantics - Not Excluding Semantics"),
              ExcludeSemantics(
                excluding: false,
                child: Container(
                  color: Colors.orange,
                  padding: const EdgeInsets.all(10),
                  child: const Text("Child Text", style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ExcludeSemantics - With different child"),
              ExcludeSemantics(
                child: Icon(Icons.star, size: 40, color: Colors.purple),
              ),
              const SizedBox(height: 20),
              const Text("ExcludeSemantics - With different child and excluding semantics"),
              ExcludeSemantics(
                excluding: true,
                child: Icon(Icons.favorite, size: 40, color: Colors.red),
              ),
              const SizedBox(height: 20),
              const Text("ExcludeSemantics - With different child and not excluding semantics"),
              ExcludeSemantics(
                excluding: false,
                child: Icon(Icons.thumb_up, size: 40, color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
