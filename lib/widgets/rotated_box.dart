import 'package:flutter/material.dart';

class RotatedBoxScreen extends StatelessWidget {
  const RotatedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RotatedBox Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("RotatedBox Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildRotatedBoxVariation(
                    "RotatedBox - 90 Degrees",
                    RotatedBox(
                      quarterTurns: 1,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.blue,
                        child: Text("Rotated 90", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  _buildRotatedBoxVariation(
                    "RotatedBox - 180 Degrees",
                    RotatedBox(
                      quarterTurns: 2,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.green,
                        child: Text("Rotated 180", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  _buildRotatedBoxVariation(
                    "RotatedBox - 270 Degrees",
                    RotatedBox(
                      quarterTurns: 3,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.orange,
                        child: Text("Rotated 270", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  _buildRotatedBoxVariation(
                    "RotatedBox - No Rotation",
                    RotatedBox(
                      quarterTurns: 0,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.red,
                        child: Text("No Rotation", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  _buildRotatedBoxVariation(
                    "RotatedBox - With Text",
                    RotatedBox(
                      quarterTurns: 1,
                      child: Text("Rotated Text", style: TextStyle(fontSize: 18)),
                    ),
                  ),
                  _buildRotatedBoxVariation(
                    "RotatedBox - With Icon",
                    RotatedBox(
                      quarterTurns: 2,
                      child: Icon(Icons.star, size: 40, color: Colors.amber),
                    ),
                  ),
                  _buildRotatedBoxVariation(
                    "RotatedBox - With Padding",
                    RotatedBox(
                      quarterTurns: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          color: Colors.purple,
                          child: Text("Padded", style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                  _buildRotatedBoxVariation(
                    "RotatedBox - With Margin",
                    RotatedBox(
                      quarterTurns: 3,
                      child: Container(
                        margin: const EdgeInsets.all(20.0),
                        color: Colors.teal,
                        child: Text("Margin", style: TextStyle(color: Colors.white)),
                      ),
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

  Widget _buildRotatedBoxVariation(String label, Widget rotatedBox) {
    return Column(
      children: [
        Tooltip(message: label, child: Text(label, style: TextStyle(fontWeight: FontWeight.bold))),
        SizedBox(height: 8),
        rotatedBox,
      ],
    );
  }
}
