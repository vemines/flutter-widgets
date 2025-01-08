import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Container Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                Tooltip(
                  message: "Container - Default",
                  child: const Center(child: Text("Default")),
                ),
                Tooltip(
                  message: "Container - Red Background",
                  child: Container(
                    color: Colors.red,
                    child: const Center(child: Text("Red Background")),
                  ),
                ),
                Tooltip(
                  message: "Container - Blue Background with Padding",
                  child: Container(
                    color: Colors.blue,
                    padding: const EdgeInsets.all(20),
                    child: const Center(
                        child: Text("Blue Background with Padding",
                            style: TextStyle(color: Colors.white))),
                  ),
                ),
                Tooltip(
                  message: "Container - Green Border",
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 3),
                    ),
                    child: const Center(child: Text("Green Border")),
                  ),
                ),
                Tooltip(
                  message: "Container - Rounded Corners",
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                        child: Text("Rounded Corners", style: TextStyle(color: Colors.white))),
                  ),
                ),
                Tooltip(
                  message: "Container - Specific Size",
                  child: Container(
                    width: 150,
                    height: 80,
                    color: Colors.purple,
                    child: const Center(
                        child: Text("Specific Size", style: TextStyle(color: Colors.white))),
                  ),
                ),
                Tooltip(
                  message: "Container - With Margin",
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    color: Colors.teal,
                    child: const Center(
                        child: Text("With Margin", style: TextStyle(color: Colors.white))),
                  ),
                ),
                Tooltip(
                  message: "Container - With Alignment",
                  child: Container(
                    alignment: Alignment.bottomRight,
                    color: Colors.brown,
                    child: const Text("Bottom Right", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Container as a Wrapper:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            // Container without wrapping another widget is not very useful, so we show it with a child.
            // Container(
            //   // This container is not very useful without a child.
            // ),
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(10),
              child: Container(
                color: Colors.yellow,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Wrapped Container"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
