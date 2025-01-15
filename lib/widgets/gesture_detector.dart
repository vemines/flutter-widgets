import 'package:flutter/material.dart';

class GestureDetectorScreen extends StatefulWidget {
  const GestureDetectorScreen({super.key});

  @override
  State<GestureDetectorScreen> createState() => _GestureDetectorScreenState();
}

class _GestureDetectorScreenState extends State<GestureDetectorScreen> {
  double dragOffset = 0; // use both vert and hori case
  double dragThreshold = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GestureDetector Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              _buildGestureDetectorVariation(
                name: "Simple GestureDetector",
                description: "GestureDetector with a Container.",
                child: GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Tapped!")));
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.blue[100],
                    child: Text("Tap Me", style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              _buildGestureDetectorVariation(
                name: "GestureDetector with Border",
                description: "GestureDetector with a border and rounded corners.",
                child: GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("Tapped with Border!")));
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      border: Border.all(color: Colors.green, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Tap Me", style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              _buildGestureDetectorVariation(
                name: "GestureDetector with Different Text Style",
                description: "GestureDetector with a different text style.",
                child: GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("Tapped with Style!")));
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.yellow[100],
                    child: Text("Tap Me",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                ),
              ),
              _buildGestureDetectorVariation(
                name: "GestureDetector with Larger Padding",
                description: "GestureDetector with larger padding.",
                child: GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("Tapped with Padding!")));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                    color: Colors.orange[100],
                    child: Text("Tap Me", style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              _buildGestureDetectorVariation(
                name: "GestureDetector with Long Press",
                description: "GestureDetector with a long press action.",
                child: GestureDetector(
                  onLongPress: () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("Long Pressed!")));
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.purple[100],
                    child: Text("Long Press Me", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              _buildGestureDetectorVariation(
                name: "GestureDetector with Double Tap",
                description: "GestureDetector with a double tap action.",
                child: GestureDetector(
                  onDoubleTap: () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("Double Tapped!")));
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.teal[100],
                    child: Text("Double Tap Me", style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              _buildGestureDetectorVariation(
                name: "GestureDetector with Vertical Drag > 50",
                description: "GestureDetector with a vertical drag action.",
                child: GestureDetector(
                  onTap: () {},
                  onVerticalDragStart: (details) {
                    dragOffset = details.localPosition.dy;
                  },
                  onVerticalDragEnd: (details) {
                    final dragEndOffset = details.localPosition.dy;
                    if (dragEndOffset - dragOffset > dragThreshold) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("Vertical Dragged!")));
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.pink[100],
                    child: Text("Drag Me Vertically", style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              _buildGestureDetectorVariation(
                name: "GestureDetector with Horizontal Drag > 50",
                description: "GestureDetector with a horizontal drag action.",
                child: GestureDetector(
                  onTap: () {},
                  onHorizontalDragStart: (details) {
                    dragOffset = details.localPosition.dx;
                  },
                  onHorizontalDragEnd: (details) {
                    final dragEndOffset = details.localPosition.dx;
                    if (dragEndOffset - dragOffset > dragThreshold) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("Horizontal Dragged!")));
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.blue[100],
                    child: Text("Drag Me Horizontally"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGestureDetectorVariation(
      {required String name, required String description, required Widget child}) {
    return Column(
      children: [
        Tooltip(
            message: description, child: Text(name, style: TextStyle(fontWeight: FontWeight.bold))),
        SizedBox(height: 8),
        child,
      ],
    );
  }
}
