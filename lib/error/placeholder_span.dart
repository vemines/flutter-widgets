import 'package:flutter/material.dart';

class PlaceholderSpanScreen extends StatelessWidget {
  const PlaceholderSpanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PlaceholderSpan Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("PlaceholderSpan Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildPlaceholderSpanVariation(
                    "Default PlaceholderSpan",
                    PlaceholderSpan(
                      child: Container(
                        width: 20,
                        height: 20,
                        color: Colors.grey,
                      ),
                      alignment: PlaceholderAlignment.bottom,
                      baseline: TextBaseline.alphabetic,
                    ),
                  ),
                  _buildPlaceholderSpanVariation(
                    "PlaceholderSpan - Top Alignment",
                    PlaceholderSpan(
                      child: Container(
                        width: 30,
                        height: 30,
                        color: Colors.blue,
                      ),
                      alignment: PlaceholderAlignment.top,
                      baseline: TextBaseline.alphabetic,
                    ),
                  ),
                  _buildPlaceholderSpanVariation(
                    "PlaceholderSpan - Middle Alignment",
                    PlaceholderSpan(
                      child: Container(
                        width: 40,
                        height: 40,
                        color: Colors.green,
                      ),
                      alignment: PlaceholderAlignment.middle,
                      baseline: TextBaseline.alphabetic,
                    ),
                  ),
                  _buildPlaceholderSpanVariation(
                    "PlaceholderSpan - Baseline Alignment",
                    PlaceholderSpan(
                      child: Container(
                        width: 25,
                        height: 25,
                        color: Colors.red,
                      ),
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                    ),
                  ),
                  _buildPlaceholderSpanVariation(
                    "PlaceholderSpan - Different Baseline",
                    PlaceholderSpan(
                      child: Container(
                        width: 35,
                        height: 35,
                        color: Colors.orange,
                      ),
                      alignment: PlaceholderAlignment.bottom,
                      baseline: TextBaseline.ideographic,
                    ),
                  ),
                  _buildPlaceholderSpanVariation(
                    "PlaceholderSpan - Larger Container",
                    PlaceholderSpan(
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.purple,
                      ),
                      alignment: PlaceholderAlignment.bottom,
                      baseline: TextBaseline.alphabetic,
                    ),
                  ),
                  _buildPlaceholderSpanVariation(
                    "PlaceholderSpan - Smaller Container",
                    PlaceholderSpan(
                      child: Container(
                        width: 10,
                        height: 10,
                        color: Colors.teal,
                      ),
                      alignment: PlaceholderAlignment.bottom,
                      baseline: TextBaseline.alphabetic,
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

  Widget _buildPlaceholderSpanVariation(String label, PlaceholderSpan span) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tooltip(message: label, child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold))),
        const SizedBox(height: 8),
        RichText(
          text: TextSpan(
            children: [
              const TextSpan(text: "Text before "),
              WidgetSpan(child: span),
              const TextSpan(text: " text after"),
            ],
          ),
        ),
      ],
    );
  }
}
