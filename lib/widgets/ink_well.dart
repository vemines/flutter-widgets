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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("InkWell Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildInkWellVariation(
                    label: "Basic InkWell",
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        color: Colors.grey[200],
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
                        color: Colors.grey[200],
                        child: const Text("Tap Me"),
                      ),
                    ),
                  ),
                  _buildInkWellVariation(
                    label: "InkWell with Custom Highlight Color",
                    child: InkWell(
                      onTap: () {},
                      highlightColor: Colors.green.withValues(alpha: 255 * 0.5),
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        color: Colors.grey[200],
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
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text("Tap Me"),
                      ),
                    ),
                  ),
                  _buildInkWellVariation(
                    label: "InkWell with Custom Border",
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
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
                        color: Colors.grey[200],
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
                        color: Colors.grey[200],
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
                        color: Colors.grey[200],
                        child: const Text("Tap Me",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  _buildInkWellVariation(
                    label: "InkWell with a Container Child",
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 100,
                        height: 50,
                        color: Colors.blue,
                        child: const Center(
                            child: Text("Tap Me", style: TextStyle(color: Colors.white))),
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
