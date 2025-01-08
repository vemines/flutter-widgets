import 'package:flutter/material.dart';

class DraggableScreen extends StatelessWidget {
  const DraggableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Draggable Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Draggable - Basic"),
              const SizedBox(height: 8),
              Draggable<int>(
                data: 1,
                feedback: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue.withValues(alpha: 255 * 0.5),
                  child: const Center(child: Text("Dragging")),
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: const Center(child: Text("Drag Me")),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Draggable - Different Feedback"),
              const SizedBox(height: 8),
              Draggable<int>(
                data: 2,
                feedback: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.green.withValues(alpha: 255 * 0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(child: Icon(Icons.star, size: 40, color: Colors.white)),
                ),
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(child: Icon(Icons.star, size: 40, color: Colors.white)),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Draggable - Custom Child When Dragging"),
              const SizedBox(height: 8),
              Draggable<int>(
                data: 3,
                feedback: Container(
                  width: 80,
                  height: 80,
                  color: Colors.red.withValues(alpha: 255 * 0.5),
                  child: const Center(child: Text("Dragging")),
                ),
                childWhenDragging: Container(
                  width: 80,
                  height: 80,
                  color: Colors.grey[300],
                  child: const Center(child: Text("Dragging...")),
                ),
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.red,
                  child: const Center(child: Text("Drag Me")),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Draggable - With Axis Constraint"),
              const SizedBox(height: 8),
              Draggable<int>(
                data: 4,
                axis: Axis.horizontal,
                feedback: Container(
                  width: 100,
                  height: 100,
                  color: Colors.purple.withValues(alpha: 255 * 0.5),
                  child: const Center(child: Text("Dragging")),
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.purple,
                  child: const Center(child: Text("Drag Horizontally")),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Draggable - With Drag Started Callback"),
              const SizedBox(height: 8),
              Draggable<int>(
                data: 5,
                onDragStarted: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text("Drag Started")));
                },
                feedback: Container(
                  width: 100,
                  height: 100,
                  color: Colors.orange.withValues(alpha: 255 * 0.5),
                  child: const Center(child: Text("Dragging")),
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.orange,
                  child: const Center(child: Text("Drag Me")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
