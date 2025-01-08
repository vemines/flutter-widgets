import 'package:flutter/material.dart';

class RenderIgnorePointerScreen extends StatelessWidget {
  const RenderIgnorePointerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RenderIgnorePointer Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RenderIgnorePointer Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildVariation(
                    "Ignore Pointer - Enabled",
                    const IgnorePointer(
                      ignoring: true,
                      child:  ColoredBox(
                        color: Colors.blue,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text("Tap Me (Ignored)", style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                  _buildVariation(
                    "Ignore Pointer - Disabled",
                    const IgnorePointer(
                      ignoring: false,
                      child: ColoredBox(
                        color: Colors.green,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text("Tap Me (Enabled)", style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                  _buildVariation(
                    "Ignore Pointer - With Container",
                    IgnorePointer(
                      ignoring: true,
                      child: Container(
                        color: Colors.orange,
                        padding: const EdgeInsets.all(20),
                        child: const Text("Container Wrapped (Ignored)", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  _buildVariation(
                    "Ignore Pointer - With Text",
                    IgnorePointer(
                      ignoring: false,
                      child: const Text("Text Wrapped (Enabled)", style: TextStyle(fontSize: 16, color: Colors.black)),
                    ),
                  ),
                  _buildVariation(
                    "Ignore Pointer - With Opacity",
                    IgnorePointer(
                      ignoring: true,
                      child: Opacity(
                        opacity: 0.5,
                        child: Container(
                          color: Colors.purple,
                          padding: const EdgeInsets.all(20),
                          child: const Text("Opacity Wrapped (Ignored)", style: TextStyle(color: Colors.white)),
                        ),
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

  Widget _buildVariation(String label, Widget widget) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(message: label, child: widget),
        const SizedBox(height: 8),
        Text(label, textAlign: TextAlign.center, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
