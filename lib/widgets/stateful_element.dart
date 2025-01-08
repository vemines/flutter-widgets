import 'package:flutter/material.dart';

class StatefulElementScreen extends StatelessWidget {
  const StatefulElementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StatefulElement Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("StatefulElement - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const StatefulElement(),
              const SizedBox(height: 20),
              const Text("StatefulElement - With Custom Text", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const StatefulElement(text: "Custom Text"),
              const SizedBox(height: 20),
              const Text("StatefulElement - With Custom Color", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const StatefulElement(color: Colors.blue),
              const SizedBox(height: 20),
              const Text("StatefulElement - With Custom Size", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const StatefulElement(size: 100),
              const SizedBox(height: 20),
              const Text("StatefulElement - With Custom Border Radius", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const StatefulElement(borderRadius: 20),
              const SizedBox(height: 20),
              const Text("StatefulElement - With Custom Padding", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const StatefulElement(padding: 20),
              const SizedBox(height: 20),
              const Text("StatefulElement - With Custom Margin", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const StatefulElement(margin: 20),
              const SizedBox(height: 20),
              const Text("StatefulElement - With Custom Text Style", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const StatefulElement(textStyle: TextStyle(fontSize: 20, color: Colors.white)),
              const SizedBox(height: 20),
              const Text("StatefulElement - With Custom Alignment", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const StatefulElement(alignment: Alignment.centerRight),
              const SizedBox(height: 20),
              const Text("StatefulElement - With Custom Icon", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const StatefulElement(icon: Icon(Icons.star, color: Colors.yellow)),
              const SizedBox(height: 20),
              const Text("StatefulElement - With Custom Icon Size", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const StatefulElement(iconSize: 40),
              const SizedBox(height: 20),
              const Text("StatefulElement - With Custom Icon Color", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const StatefulElement(iconColor: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}

class StatefulElement extends StatefulWidget {
  final String text;
  final Color color;
  final double size;
  final double borderRadius;
  final double padding;
  final double margin;
  final TextStyle textStyle;
  final Alignment alignment;
  final Icon icon;
  final double iconSize;
  final Color iconColor;

  const StatefulElement({
    super.key,
    this.text = "Click Me",
    this.color = Colors.green,
    this.size = 80,
    this.borderRadius = 8,
    this.padding = 10,
    this.margin = 0,
    this.textStyle = const TextStyle(color: Colors.black),
    this.alignment = Alignment.center,
    this.icon = const Icon(Icons.add, color: Colors.white),
    this.iconSize = 24,
    this.iconColor = Colors.white,
  });

  @override
  State<StatefulElement> createState() => _StatefulElementState();
}

class _StatefulElementState extends State<StatefulElement> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(widget.margin),
      alignment: widget.alignment,
      child: ElevatedButton(
        onPressed: _incrementCounter,
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.color,
          padding: EdgeInsets.all(widget.padding),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
        ),
        child: SizedBox(
          width: widget.size,
          height: widget.size,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(widget.icon.icon, color: widget.iconColor, size: widget.iconSize),
                Text(
                  "${widget.text} $_counter",
                  style: widget.textStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
