import 'package:flutter/material.dart';

class FittedBoxScreen extends StatelessWidget {
  const FittedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FittedBox Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("FittedBox Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildFittedBoxVariation(
                    "FittedBox - Default",
                    FittedBox(
                      child: Container(
                        color: Colors.blue,
                        width: 200,
                        height: 100,
                        child: Center(child: Text("Default", style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ),
                  _buildFittedBoxVariation(
                    "FittedBox - Contain",
                    FittedBox(
                      fit: BoxFit.contain,
                      child: Container(
                        color: Colors.green,
                        width: 200,
                        height: 100,
                        child: Center(child: Text("Contain", style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ),
                  _buildFittedBoxVariation(
                    "FittedBox - Cover",
                    FittedBox(
                      fit: BoxFit.cover,
                      child: Container(
                        color: Colors.orange,
                        width: 200,
                        height: 100,
                        child: Center(child: Text("Cover", style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ),
                  _buildFittedBoxVariation(
                    "FittedBox - Fill",
                    FittedBox(
                      fit: BoxFit.fill,
                      child: Container(
                        color: Colors.purple,
                        width: 200,
                        height: 100,
                        child: Center(child: Text("Fill", style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ),
                  _buildFittedBoxVariation(
                    "FittedBox - FitWidth",
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Container(
                        color: Colors.red,
                        width: 200,
                        height: 100,
                        child: Center(child: Text("FitWidth", style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ),
                  _buildFittedBoxVariation(
                    "FittedBox - FitHeight",
                    FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Container(
                        color: Colors.teal,
                        width: 200,
                        height: 100,
                        child: Center(child: Text("FitHeight", style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ),
                  _buildFittedBoxVariation(
                    "FittedBox - ScaleDown",
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Container(
                        color: Colors.brown,
                        width: 200,
                        height: 100,
                        child: Center(child: Text("ScaleDown", style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ),
                  _buildFittedBoxVariation(
                    "FittedBox - Alignment Top Left",
                    FittedBox(
                      alignment: Alignment.topLeft,
                      child: Container(
                        color: Colors.grey,
                        width: 200,
                        height: 100,
                        child: Center(child: Text("Top Left", style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ),
                  _buildFittedBoxVariation(
                    "FittedBox - Alignment Bottom Right",
                    FittedBox(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        color: Colors.black,
                        width: 200,
                        height: 100,
                        child: Center(child: Text("Bottom Right", style: TextStyle(color: Colors.white))),
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

  Widget _buildFittedBoxVariation(String label, Widget fittedBox) {
    return Column(
      children: [
        Tooltip(message: label, child: Text(label, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
        SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          width: 250,
          height: 150,
          child: fittedBox,
        ),
      ],
    );
  }
}
