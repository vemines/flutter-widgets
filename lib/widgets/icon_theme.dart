import 'package:flutter/material.dart';

class IconThemeScreen extends StatelessWidget {
  const IconThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IconTheme Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("IconTheme Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildIconThemeVariation(
                    "Default IconTheme",
                    IconTheme(
                      data: IconThemeData(),
                      child: Icon(Icons.star),
                    ),
                    "Default IconTheme with default values.",
                  ),
                  _buildIconThemeVariation(
                    "IconTheme - Color Red",
                    IconTheme(
                      data: IconThemeData(color: Colors.red),
                      child: Icon(Icons.star),
                    ),
                    "IconTheme with red color.",
                  ),
                  _buildIconThemeVariation(
                    "IconTheme - Size 40",
                    IconTheme(
                      data: IconThemeData(size: 40),
                      child: Icon(Icons.star),
                    ),
                    "IconTheme with size 40.",
                  ),
                  _buildIconThemeVariation(
                    "IconTheme - Color Blue, Size 30",
                    IconTheme(
                      data: IconThemeData(color: Colors.blue, size: 30),
                      child: Icon(Icons.star),
                    ),
                    "IconTheme with blue color and size 30.",
                  ),
                  _buildIconThemeVariation(
                    "IconTheme - Opacity 0.5",
                    IconTheme(
                      data: IconThemeData(opacity: 0.5),
                      child: Icon(Icons.star),
                    ),
                    "IconTheme with opacity 0.5.",
                  ),
                  _buildIconThemeVariation(
                    "IconTheme - Wrapped Container",
                    IconTheme(
                      data: IconThemeData(color: Colors.green),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.grey[200],
                        child: Icon(Icons.star),
                      ),
                    ),
                    "IconTheme wrapping a Container.",
                  ),
                  _buildIconThemeVariation(
                    "IconTheme - Wrapped Text",
                    IconTheme(
                      data: IconThemeData(color: Colors.purple, size: 20),
                      child: Text("Icon", style: TextStyle(fontSize: 20)),
                    ),
                    "IconTheme wrapping a Text widget. Note that IconTheme does not directly affect Text.",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconThemeVariation(String name, Widget widget, String description) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(
          message: description,
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
            ),
            child: widget,
          ),
        ),
        SizedBox(height: 5),
        Text(name, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
