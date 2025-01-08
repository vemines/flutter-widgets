import 'package:flutter/material.dart';

class RenderConstrainedBoxScreen extends StatelessWidget {
  const RenderConstrainedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RenderConstrainedBox Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ConstrainedBox Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildConstrainedBoxVariation(
                    "Default Constraints",
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 100, minHeight: 50),
                      child: Container(
                        color: Colors.blue,
                        padding: EdgeInsets.all(8),
                        child: Text("Default", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  _buildConstrainedBoxVariation(
                    "Max Width Constraint",
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 150),
                      child: Container(
                        color: Colors.green,
                        padding: EdgeInsets.all(8),
                        child: Text("Max Width", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  _buildConstrainedBoxVariation(
                    "Max Height Constraint",
                    ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 80),
                      child: Container(
                        color: Colors.orange,
                        padding: EdgeInsets.all(8),
                        child: Text("Max Height", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  _buildConstrainedBoxVariation(
                    "Min Width and Height",
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 120, minHeight: 60),
                      child: Container(
                        color: Colors.purple,
                        padding: EdgeInsets.all(8),
                        child: Text("Min Size", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  _buildConstrainedBoxVariation(
                    "Specific Width and Height",
                    ConstrainedBox(
                      constraints: BoxConstraints.tightFor(width: 100, height: 70),
                      child: Container(
                        color: Colors.red,
                        padding: EdgeInsets.all(8),
                        child: Text("Tight Size", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  _buildConstrainedBoxVariation(
                    "ConstrainedBox with child",
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 100, minHeight: 50),
                      child: Container(
                        color: Colors.teal,
                        child: Center(child: Text("Child", style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ),
                  _buildConstrainedBoxVariation(
                    "ConstrainedBox with different child",
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 100, minHeight: 50),
                      child: Icon(Icons.star, size: 30, color: Colors.yellow),
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

  Widget _buildConstrainedBoxVariation(String label, Widget constrainedBox) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        constrainedBox,
      ],
    );
  }
}
