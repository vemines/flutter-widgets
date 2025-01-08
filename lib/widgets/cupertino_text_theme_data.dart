import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTextThemeDataScreen extends StatelessWidget {
  const CupertinoTextThemeDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoTextThemeData Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Default CupertinoTextThemeData", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildTextThemeVariation(
                "Default",
                CupertinoTextThemeData(),
                const Text("This is default text"),
              ),
              const SizedBox(height: 20),
              const Text("Variations with different styles", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildTextThemeVariation(
                "Primary Color",
                CupertinoTextThemeData(primaryColor: CupertinoColors.activeBlue),
                const Text("This text uses primary color"),
              ),
              const SizedBox(height: 8),
              _buildTextThemeVariation(
                "Text Color",
                CupertinoTextThemeData(textStyle: const TextStyle(color: CupertinoColors.destructiveRed)),
                const Text("This text is red"),
              ),
              const SizedBox(height: 8),
              _buildTextThemeVariation(
                "Bold Text",
                CupertinoTextThemeData(textStyle: const TextStyle(fontWeight: FontWeight.bold)),
                const Text("This text is bold"),
              ),
              const SizedBox(height: 8),
              _buildTextThemeVariation(
                "Large Text",
                CupertinoTextThemeData(textStyle: const TextStyle(fontSize: 20)),
                const Text("This text is large"),
              ),
              const SizedBox(height: 8),
              _buildTextThemeVariation(
                "Custom Font",
                CupertinoTextThemeData(textStyle: const TextStyle(fontFamily: 'Roboto')),
                const Text("This text uses Roboto font", style: TextStyle(fontFamily: 'Roboto')),
              ),
              const SizedBox(height: 8),
              _buildTextThemeVariation(
                "With Different Text Color and Size",
                CupertinoTextThemeData(textStyle: const TextStyle(color: CupertinoColors.systemGreen, fontSize: 18)),
                const Text("Green and larger text"),
              ),
              const SizedBox(height: 8),
              _buildTextThemeVariation(
                "With Different Text Color and Weight",
                CupertinoTextThemeData(textStyle: const TextStyle(color: CupertinoColors.systemOrange, fontWeight: FontWeight.w900)),
                const Text("Orange and bolder text"),
              ),
              const SizedBox(height: 8),
              _buildTextThemeVariation(
                "With Different Letter Spacing",
                CupertinoTextThemeData(textStyle: const TextStyle(letterSpacing: 5)),
                const Text("Text with letter spacing"),
              ),
              const SizedBox(height: 8),
              _buildTextThemeVariation(
                "With Different Line Height",
                CupertinoTextThemeData(textStyle: const TextStyle(height: 2)),
                const Text("Text with line height"),
              ),
              const SizedBox(height: 8),
              _buildTextThemeVariation(
                "With Different Font Style",
                CupertinoTextThemeData(textStyle: const TextStyle(fontStyle: FontStyle.italic)),
                const Text("Text with italic font style"),
              ),
              const SizedBox(height: 8),
              _buildTextThemeVariation(
                "With Different Text Decoration",
                CupertinoTextThemeData(textStyle: const TextStyle(decoration: TextDecoration.underline)),
                const Text("Text with underline decoration"),
              ),
              const SizedBox(height: 8),
              _buildTextThemeVariation(
                "With Different Text Decoration and Color",
                CupertinoTextThemeData(textStyle: const TextStyle(decoration: TextDecoration.lineThrough, decorationColor: CupertinoColors.systemPink)),
                const Text("Text with line through decoration and pink color"),
              ),
              const SizedBox(height: 8),
              _buildTextThemeVariation(
                "With Different Text Shadow",
                CupertinoTextThemeData(textStyle: const TextStyle(shadows: [Shadow(color: Colors.grey, offset: Offset(2,2), blurRadius: 3)])),
                const Text("Text with shadow"),
              ),
              const SizedBox(height: 8),
              _buildTextThemeVariation(
                "With Different Word Spacing",
                CupertinoTextThemeData(textStyle: const TextStyle(wordSpacing: 10)),
                const Text("Text with word spacing"),
              ),
              const SizedBox(height: 8),
              _buildTextThemeVariation(
                "With Different Background Color",
                CupertinoTextThemeData(textStyle: const TextStyle(backgroundColor: CupertinoColors.systemYellow)),
                const Text("Text with background color"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextThemeVariation(String name, CupertinoTextThemeData themeData, Widget child) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        CupertinoTheme(
          data: CupertinoThemeData(textTheme: themeData),
          child: child,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
