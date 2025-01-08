import 'package:flutter/material.dart';

class WidgetSpanScreen extends StatelessWidget {
  const WidgetSpanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WidgetSpan Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("WidgetSpan Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildWidgetSpanVariation(
                    "Default WidgetSpan",
                    const WidgetSpan(
                      child: Icon(Icons.star, size: 24),
                    ),
                  ),
                  _buildWidgetSpanVariation(
                    "WidgetSpan with Alignment",
                    const WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Icon(Icons.favorite, size: 30, color: Colors.red),
                    ),
                  ),
                  _buildWidgetSpanVariation(
                    "WidgetSpan with different size",
                    const WidgetSpan(
                      child: Icon(Icons.circle, size: 40, color: Colors.blue),
                    ),
                  ),
                  _buildWidgetSpanVariation(
                    "WidgetSpan with padding",
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.green.withValues(alpha: 255 * 0.3),
                          child: const Icon(Icons.square, size: 20, color: Colors.green),
                        ),
                      ),
                    ),
                  ),
                  _buildWidgetSpanVariation(
                    "WidgetSpan with a Text Widget",
                    const WidgetSpan(
                      child: Text("Text", style: TextStyle(fontSize: 16, color: Colors.purple)),
                    ),
                  ),
                  _buildWidgetSpanVariation(
                    "WidgetSpan with a Container",
                    WidgetSpan(
                      child: Container(
                        width: 30,
                        height: 30,
                        color: Colors.orange,
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

  Widget _buildWidgetSpanVariation(String label, WidgetSpan widgetSpan) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        RichText(
          text: TextSpan(
            children: [
              const TextSpan(text: "Before "),
              widgetSpan,
              const TextSpan(text: " After"),
            ],
          ),
        ),
      ],
    );
  }
}
