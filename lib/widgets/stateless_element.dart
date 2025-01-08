import 'package:flutter/material.dart';

class StatelessElementScreen extends StatelessWidget {
  const StatelessElementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StatelessElement Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("StatelessElement - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const StatelessElement(),
              const SizedBox(height: 16),
              const Text("StatelessElement - With Custom Text", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const StatelessElement(text: "Custom Text"),
              const SizedBox(height: 16),
              const Text("StatelessElement - With Custom Color", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const StatelessElement(color: Colors.blue),
              const SizedBox(height: 16),
              const Text("StatelessElement - With Custom Size", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const StatelessElement(size: 60),
              const SizedBox(height: 16),
              const Text("StatelessElement - With Custom Border Radius", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const StatelessElement(borderRadius: 10),
              const SizedBox(height: 16),
              const Text("StatelessElement - With Custom Padding", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const StatelessElement(padding: 20),
              const SizedBox(height: 16),
              const Text("StatelessElement - With Custom Margin", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const StatelessElement(margin: 20),
              const SizedBox(height: 16),
              const Text("StatelessElement - With Custom Text Style", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const StatelessElement(textStyle: TextStyle(fontSize: 20, color: Colors.white)),
              const SizedBox(height: 16),
              const Text("StatelessElement - With Custom Alignment", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Align(alignment: Alignment.centerRight, child: StatelessElement()),
              const SizedBox(height: 16),
              const Text("StatelessElement - Wrapped in Container", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.all(10),
                child: const StatelessElement(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StatelessElement extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final double borderRadius;
  final double padding;
  final double margin;
  final TextStyle textStyle;

  const StatelessElement({
    super.key,
    this.text = "Default Text",
    this.color = Colors.green,
    this.size = 40,
    this.borderRadius = 0,
    this.padding = 0,
    this.margin = 0,
    this.textStyle = const TextStyle(color: Colors.black),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin),
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: SizedBox(
        width: size,
        height: size,
        child: Center(
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
