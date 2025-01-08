import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoAdaptiveTextSelectionToolbarScreen extends StatelessWidget {
  const CupertinoAdaptiveTextSelectionToolbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoAdaptiveTextSelectionToolbar Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoAdaptiveTextSelectionToolbar Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),

              // Variation 1: Default with Text
              const Text("Default with Text:"),
              const SizedBox(height: 8),
              _buildToolbar(
                children: [
                  CupertinoButton(
                    onPressed: () {},
                    child: const Text('Copy'),
                  ),
                  CupertinoButton(
                    onPressed: () {},
                    child: const Text('Paste'),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Variation 2: With Custom Background Color
              const Text("Custom Background Color:"),
              const SizedBox(height: 8),
              _buildToolbar(
                backgroundColor: Colors.lightBlue[100],
                children: [
                  CupertinoButton(
                    onPressed: () {},
                    child: const Text('Copy'),
                  ),
                  CupertinoButton(
                    onPressed: () {},
                    child: const Text('Paste'),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Variation 3: With Custom Button Text Color
              const Text("Custom Button Text Color:"),
              const SizedBox(height: 8),
              _buildToolbar(
                children: [
                  CupertinoButton(
                    onPressed: () {},
                    child: const Text('Copy', style: TextStyle(color: Colors.red)),
                  ),
                  CupertinoButton(
                    onPressed: () {},
                    child: const Text('Paste', style: TextStyle(color: Colors.red)),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Variation 4: With Custom Button Padding
              const Text("Custom Button Padding:"),
              const SizedBox(height: 8),
              _buildToolbar(
                children: [
                  CupertinoButton(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    onPressed: () {},
                    child: const Text('Copy'),
                  ),
                  CupertinoButton(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    onPressed: () {},
                    child: const Text('Paste'),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Variation 5: With Custom Border Radius
              const Text("Custom Border Radius:"),
              const SizedBox(height: 8),
              _buildToolbar(
                borderRadius: BorderRadius.circular(15),
                children: [
                  CupertinoButton(
                    onPressed: () {},
                    child: const Text('Copy'),
                  ),
                  CupertinoButton(
                    onPressed: () {},
                    child: const Text('Paste'),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Variation 6: With Custom Elevation
              const Text("Custom Elevation:"),
              const SizedBox(height: 8),
              _buildToolbar(
                elevation: 5,
                children: [
                  CupertinoButton(
                    onPressed: () {},
                    child: const Text('Copy'),
                  ),
                  CupertinoButton(
                    onPressed: () {},
                    child: const Text('Paste'),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Variation 7: With Custom Shadow Color
              const Text("Custom Shadow Color:"),
              const SizedBox(height: 8),
              _buildToolbar(
                shadowColor: Colors.green,
                children: [
                  CupertinoButton(
                    onPressed: () {},
                    child: const Text('Copy'),
                  ),
                  CupertinoButton(
                    onPressed: () {},
                    child: const Text('Paste'),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Variation 8: Wrapped in a Container
              const Text("Wrapped in a Container:"),
              const SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.all(10),
                child: _buildToolbar(
                  children: [
                    CupertinoButton(
                      onPressed: () {},
                      child: const Text('Copy'),
                    ),
                    CupertinoButton(
                      onPressed: () {},
                      child: const Text('Paste'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _buildToolbar({
    List<Widget>? children,
    Color? backgroundColor,
    BorderRadius? borderRadius,
    double? elevation,
    Color? shadowColor,
  }) {
    return CupertinoTextSelectionToolbar(
      anchorAbove: Offset.zero,
      anchorBelow: Offset.zero,
      children: children ?? [],
    );
  }
}
