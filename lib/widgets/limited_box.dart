import 'package:flutter/material.dart';

class LimitedBoxScreen extends StatelessWidget {
  const LimitedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LimitedBox Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("LimitedBox Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildLimitedBoxVariation(
                    "LimitedBox - Max Width 100",
                    const LimitedBox(
                      maxWidth: 100,
                      child: ColoredBox(color: Colors.blue, child: SizedBox(width: 200, height: 50, child: Center(child: Text("Width 200", style: TextStyle(color: Colors.white))))),
                    ),
                  ),
                  _buildLimitedBoxVariation(
                    "LimitedBox - Max Height 50",
                    const LimitedBox(
                      maxHeight: 50,
                      child: ColoredBox(color: Colors.green, child: SizedBox(width: 50, height: 100, child: Center(child: Text("Height 100", style: TextStyle(color: Colors.white))))),
                    ),
                  ),
                  _buildLimitedBoxVariation(
                    "LimitedBox - Max Width 150, Max Height 75",
                    const LimitedBox(
                      maxWidth: 150,
                      maxHeight: 75,
                      child: ColoredBox(color: Colors.orange, child: SizedBox(width: 200, height: 100, child: Center(child: Text("200x100", style: TextStyle(color: Colors.white))))),
                    ),
                  ),
                  _buildLimitedBoxVariation(
                    "LimitedBox - No Constraints (Should take parent size)",
                    const LimitedBox(
                      child: ColoredBox(color: Colors.red, child: SizedBox(width: 200, height: 100, child: Center(child: Text("200x100", style: TextStyle(color: Colors.white))))),
                    ),
                  ),
                  _buildLimitedBoxVariation(
                    "LimitedBox - With a Container",
                    LimitedBox(
                      maxWidth: 100,
                      child: Container(
                        color: Colors.purple,
                        width: 200,
                        height: 50,
                        child: const Center(child: Text("Container", style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ),
                  _buildLimitedBoxVariation(
                    "LimitedBox - With a Text",
                    LimitedBox(
                      maxWidth: 100,
                      child: Text("This is a long text that should be limited in width", style: TextStyle(fontSize: 16)),
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

  Widget _buildLimitedBoxVariation(String label, Widget widget) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tooltip(message: label, child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold))),
        const SizedBox(height: 8),
        widget,
      ],
    );
  }
}
