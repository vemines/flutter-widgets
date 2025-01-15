import 'package:flutter/material.dart';

class InkWellScreen extends StatelessWidget {
  const InkWellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("InkWell Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              _buildInkWellVariation(
                label: "InkWell",
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: const Text("Tap Me"),
                  ),
                ),
              ),
              _buildInkWellVariation(
                label: "InkWell with Custom Splash Color",
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors.blue.withValues(alpha: 255 * 0.5),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: const Text("Tap Me"),
                  ),
                ),
              ),
              _buildInkWellVariation(
                label: "InkWell with Custom Highlight Color",
                child: InkWell(
                  onTap: () {},
                  highlightColor: Colors.green[200],
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: const Text("Tap Me"),
                  ),
                ),
              ),
              _buildInkWellVariation(
                label: "InkWell with Radius",
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text("Tap Me"),
                  ),
                ),
              ),
              _buildInkWellVariation(
                label: "InkWell with Child have BorderRadius (both should have same radius)",
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.red, width: 2),
                    ),
                    child: const Text("Tap Me"),
                  ),
                ),
              ),
              _buildInkWellVariation(
                label: "InkWell with Child Alignment",
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    alignment: Alignment.center,
                    child: const Text("Tap Me"),
                  ),
                ),
              ),
              _buildInkWellVariation(
                label: "InkWell with Larger Padding",
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                    child: const Text("Tap Me"),
                  ),
                ),
              ),
              _buildInkWellVariation(
                label: "InkWell with Different Text Style",
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: const Text("Tap Me",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInkWellVariation({required String label, required Widget child}) {
    return Column(
      children: [
        Tooltip(
            message: label,
            child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold))),
        const SizedBox(height: 8),
        child,
      ],
    );
  }
}
