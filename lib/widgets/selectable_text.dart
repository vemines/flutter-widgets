import 'package:flutter/material.dart';

class SelectableTextScreen extends StatelessWidget {
  const SelectableTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SelectableText Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("SelectableText Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildSelectableTextVariation(
                    "Default",
                    SelectableText("This is default selectable text."),
                  ),
                  _buildSelectableTextVariation(
                    "Styled Text",
                    SelectableText(
                      "Styled selectable text.",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  _buildSelectableTextVariation(
                    "Long Text",
                    SelectableText(
                      "This is a very long selectable text that should wrap to the next line if it exceeds the available width. This is to demonstrate how the selectable text behaves with longer content.",
                    ),
                  ),
                  _buildSelectableTextVariation(
                    "Custom Cursor",
                    SelectableText(
                      "Custom cursor color.",
                      cursorColor: Colors.red,
                    ),
                  ),
                  _buildSelectableTextVariation(
                    "Text with TextAlign.center",
                    SizedBox(
                      width: 200,
                      child: SelectableText(
                        "Centered Text",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  _buildSelectableTextVariation(
                    "Text with TextAlign.right",
                    SizedBox(
                      width: 200,
                      child: SelectableText(
                        "Right Aligned Text",
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  _buildSelectableTextVariation(
                    "Text with maxLines",
                    SizedBox(
                      width: 200,
                      child: SelectableText(
                        "This is a long text with maxLines set to 2. It should truncate after two lines.",
                        maxLines: 2,
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

  Widget _buildSelectableTextVariation(String label, Widget widget) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        widget,
        SizedBox(height: 16),
      ],
    );
  }
}
