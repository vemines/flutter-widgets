import 'package:flutter/material.dart';

class RenderPositionedBoxScreen extends StatelessWidget {
  const RenderPositionedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RenderPositionedBox Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RenderPositionedBox Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("RenderPositionedBox - Basic",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                height: 100,
                width: 100,
                color: Colors.grey[300],
                child: const RenderPositionedBox(
                  child: Text("Basic"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderPositionedBox - Top Left",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                height: 100,
                width: 100,
                color: Colors.grey[300],
                child: const RenderPositionedBox(
                  position: Alignment.topLeft,
                  child: Text("Top Left"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderPositionedBox - Bottom Right",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                height: 100,
                width: 100,
                color: Colors.grey[300],
                child: const RenderPositionedBox(
                  position: Alignment.bottomRight,
                  child: Text("Bottom Right"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderPositionedBox - Center",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                height: 100,
                width: 100,
                color: Colors.grey[300],
                child: const RenderPositionedBox(
                  position: Alignment.center,
                  child: Text("Center"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderPositionedBox - Custom Position",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                height: 100,
                width: 100,
                color: Colors.grey[300],
                child: const RenderPositionedBox(
                  position: Alignment(-0.5, 0.5),
                  child: Text("Custom"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderPositionedBox - With Container",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                height: 100,
                width: 100,
                color: Colors.grey[300],
                child: RenderPositionedBox(
                  child: Container(
                    color: Colors.blue,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RenderPositionedBox extends StatelessWidget {
  final Alignment position;
  final Widget child;

  const RenderPositionedBox({super.key, this.position = Alignment.center, required this.child});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: position,
      child: child,
    );
  }
}
