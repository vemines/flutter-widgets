import 'package:flutter/material.dart';

class LongPressDraggableScreen extends StatelessWidget {
  const LongPressDraggableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LongPressDraggable Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("LongPressDraggable - Basic"),
              const SizedBox(height: 8),
              LongPressDraggable(
                data: "Draggable Item",
                feedback: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.blue.withValues(alpha: 255 * 0.5),
                  child: const Text("Dragging...", style: TextStyle(color: Colors.white)),
                ),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.blue,
                  child: const Text("Drag Me", style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 20),
              const Text("LongPressDraggable - Different Feedback"),
              const SizedBox(height: 8),
              LongPressDraggable(
                data: "Draggable Item 2",
                feedback: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.green.withValues(alpha: 255 * 0.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.drag_handle, color: Colors.white, size: 30),
                ),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.green,
                  child: const Text("Drag Icon", style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 20),
              const Text("LongPressDraggable - Custom Child When Dragging"),
              const SizedBox(height: 8),
              LongPressDraggable(
                data: "Draggable Item 3",
                feedback: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.orange.withValues(alpha: 255 * 0.5),
                  child: const Text("Dragging...", style: TextStyle(color: Colors.white)),
                ),
                childWhenDragging: Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.grey[300],
                  child: const Text("Dragging...", style: TextStyle(color: Colors.black)),
                ),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.orange,
                  child:
                      const Text("Drag Me (Custom Child)", style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 20),
              const Text("LongPressDraggable - With a different drag anchor"),
              const SizedBox(height: 8),
              LongPressDraggable(
                data: "Draggable Item 4",
                dragAnchorStrategy: pointerDragAnchorStrategy,
                feedback: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.purple.withValues(alpha: 255 * 0.5),
                  child: const Text("Dragging...", style: TextStyle(color: Colors.white)),
                ),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.purple,
                  child: const Text("Drag Me (Anchor)", style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 20),
              const Text("LongPressDraggable - With a custom axis"),
              const SizedBox(height: 8),
              LongPressDraggable(
                data: "Draggable Item 5",
                axis: Axis.horizontal,
                feedback: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.red.withValues(alpha: 255 * 0.5),
                  child: const Text("Dragging...", style: TextStyle(color: Colors.white)),
                ),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.red,
                  child: const Text("Drag Me (Horizontal)", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
