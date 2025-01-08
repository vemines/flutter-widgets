import 'package:flutter/material.dart';

class ColoredBoxScreen extends StatelessWidget {
  const ColoredBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ColoredBox Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ColoredBox Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildColoredBoxVariation(
                    name: "ColoredBox - Red Background",
                    description: "A ColoredBox with a red background.",
                    child: ColoredBox(
                      color: Colors.red,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: const Text("Red Box", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  _buildColoredBoxVariation(
                    name: "ColoredBox - Green Background with Margin",
                    description: "A ColoredBox with a green background and margin.",
                    child: ColoredBox(
                      color: Colors.green,
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(10),
                        child: const Text("Green Box", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  _buildColoredBoxVariation(
                    name: "ColoredBox - Yellow Background with Alignment",
                    description: "A ColoredBox with a yellow background and alignment.",
                    child: ColoredBox(
                      color: Colors.yellow,
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(20),
                        child: const Text("Yellow Box", style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ),
                  _buildColoredBoxVariation(
                    name: "ColoredBox - Cyan Background with Different Size",
                    description: "A ColoredBox with a cyan background and different size.",
                    child: ColoredBox(
                      color: Colors.cyan,
                      child: SizedBox(
                        width: 100,
                        height: 50,
                        child: Container(
                          alignment: Alignment.center,
                          child: const Text("Cyan Box", style: TextStyle(color: Colors.black)),
                        ),
                      ),
                    ),
                  ),
                  _buildColoredBoxVariation(
                    name: "ColoredBox - Grey Background with No Child",
                    description: "A ColoredBox with a grey background and no child.",
                    child: const ColoredBox(
                      color: Colors.grey,
                    ),
                  ),
                  _buildColoredBoxVariation(
                    name: "ColoredBox - Purple Background with Opacity",
                    description: "A ColoredBox with a purple background and opacity.",
                    child: ColoredBox(
                      color: Colors.purple.withValues(alpha: 255 * 0.5),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: const Text("Purple Box", style: TextStyle(color: Colors.white)),
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

  Widget _buildColoredBoxVariation(
      {required String name, required String description, required Widget child}) {
    return Tooltip(
      message: description,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          child,
        ],
      ),
    );
  }
}
