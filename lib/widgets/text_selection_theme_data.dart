import 'package:flutter/material.dart';

class TextSelectionThemeDataScreen extends StatelessWidget {
  const TextSelectionThemeDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextSelectionThemeData Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("TextSelectionThemeData - Default"),
              const SizedBox(height: 8),
              _buildTextSelectionThemeData(
                TextSelectionThemeData(),
                "Default",
              ),
              const SizedBox(height: 20),
              const Text("TextSelectionThemeData - Custom Colors"),
              const SizedBox(height: 8),
              _buildTextSelectionThemeData(
                TextSelectionThemeData(
                  selectionColor: Colors.blue.withValues(alpha: 255 * 0.5),
                  cursorColor: Colors.red,
                  selectionHandleColor: Colors.green,
                ),
                "Custom Colors",
              ),
              const SizedBox(height: 20),
              const Text("TextSelectionThemeData - Custom Handle Color"),
              const SizedBox(height: 8),
              _buildTextSelectionThemeData(
                TextSelectionThemeData(
                  selectionHandleColor: Colors.orange,
                ),
                "Custom Handle Color",
              ),
              const SizedBox(height: 20),
              const Text("TextSelectionThemeData - Custom Cursor Color"),
              const SizedBox(height: 8),
              _buildTextSelectionThemeData(
                TextSelectionThemeData(
                  cursorColor: Colors.purple,
                ),
                "Custom Cursor Color",
              ),
              const SizedBox(height: 20),
              const Text("TextSelectionThemeData - Custom Selection Color"),
              const SizedBox(height: 8),
              _buildTextSelectionThemeData(
                TextSelectionThemeData(
                  selectionColor: Colors.yellow.withValues(alpha: 255 * 0.7),
                ),
                "Custom Selection Color",
              ),
              const SizedBox(height: 20),
              const Text("TextSelectionThemeData - Wrapped with TextField"),
              const SizedBox(height: 8),
              _buildTextSelectionThemeData(
                TextSelectionThemeData(
                  selectionColor: Colors.teal.withValues(alpha: 255 * 0.5),
                  cursorColor: Colors.brown,
                  selectionHandleColor: Colors.pink,
                ),
                "Wrapped with TextField",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextSelectionThemeData(TextSelectionThemeData themeData, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        Theme(
          data: ThemeData(textSelectionTheme: themeData),
          child: const TextField(
            decoration: InputDecoration(hintText: 'Select some text'),
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
