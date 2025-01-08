import 'package:flutter/material.dart';

class RenderViewportScreen extends StatelessWidget {
  const RenderViewportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RenderViewport Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("RenderViewport Variations:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                Tooltip(
                  message: "RenderViewport - Default",
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text("Default"),
                    ),
                  ),
                ),
                Tooltip(
                  message: "RenderViewport - Red Background",
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.red[200],
                    child: const Center(
                      child: Text("Red BG"),
                    ),
                  ),
                ),
                Tooltip(
                  message: "RenderViewport - Larger Size",
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.grey[300],
                    child: const Center(
                      child: Text("Large"),
                    ),
                  ),
                ),
                Tooltip(
                  message: "RenderViewport - With Border",
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2),
                      color: Colors.grey[200],
                    ),
                    child: const Center(
                      child: Text("Border"),
                    ),
                  ),
                ),
                Tooltip(
                  message: "RenderViewport - With Rounded Corners",
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: const Center(
                      child: Text("Rounded"),
                    ),
                  ),
                ),
                Tooltip(
                  message: "RenderViewport - With Padding",
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.grey[200],
                      child: const Center(
                        child: Text("Padding"),
                      ),
                    ),
                  ),
                ),
                Tooltip(
                  message: "RenderViewport - With Margin",
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text("Margin"),
                    ),
                  ),
                ),
                Tooltip(
                  message: "RenderViewport - With Alignment",
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.grey[200],
                      child: const Center(
                        child: Text("Aligned"),
                      ),
                    ),
                  ),
                ),
                Tooltip(
                  message: "RenderViewport - Wrapped with Container",
                  child: Container(
                    color: Colors.yellow[100],
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.grey[200],
                      child: const Center(
                        child: Text("Wrapped"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
