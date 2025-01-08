import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Card Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildCardVariation(
                    title: "Basic Card",
                    description: "Default card with no styling.",
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text("Basic Card Content"),
                      ),
                    ),
                  ),
                  _buildCardVariation(
                    title: "Card with Elevation",
                    description: "Card with increased elevation.",
                    child: Card(
                      elevation: 8,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text("Card with Elevation"),
                      ),
                    ),
                  ),
                  _buildCardVariation(
                    title: "Card with Custom Color",
                    description: "Card with a custom background color.",
                    child: Card(
                      color: Colors.blue[100],
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text("Custom Color Card"),
                      ),
                    ),
                  ),
                  _buildCardVariation(
                    title: "Card with Rounded Corners",
                    description: "Card with rounded corners.",
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text("Rounded Corners Card"),
                      ),
                    ),
                  ),
                  _buildCardVariation(
                    title: "Card with Border",
                    description: "Card with a custom border.",
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.red, width: 2),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text("Bordered Card"),
                      ),
                    ),
                  ),
                  _buildCardVariation(
                    title: "Card with Margin",
                    description: "Card with margin around it.",
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text("Card with Margin"),
                        ),
                      ),
                    ),
                  ),
                  _buildCardVariation(
                    title: "Card with Padding",
                    description: "Card with custom padding inside.",
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                        child: Text("Card with Padding"),
                      ),
                    ),
                  ),
                  _buildCardVariation(
                    title: "Card with Shadow",
                    description: "Card with a custom shadow.",
                    child: Card(
                      shadowColor: Colors.grey.withValues(alpha: 255 * 0.5),
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text("Card with Shadow"),
                      ),
                    ),
                  ),
                  _buildCardVariation(
                    title: "Card with Child Alignment",
                    description: "Card with child alignment.",
                    child: Card(
                      child: Container(
                        alignment: Alignment.center,
                        height: 100,
                        child: Text("Aligned Text"),
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

  Widget _buildCardVariation(
      {required String title, required String description, required Widget child}) {
    return Tooltip(
      message: description,
      child: Column(
        children: [
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          child,
        ],
      ),
    );
  }
}
