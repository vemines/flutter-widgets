import 'package:flutter/material.dart';

class ColorSchemeScreen extends StatelessWidget {
  const ColorSchemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ColorScheme Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ColorScheme - Default"),
              const SizedBox(height: 8),
              ColorSchemeExample(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
              ),
              const SizedBox(height: 20),
              const Text("ColorScheme - Custom Primary Color"),
              const SizedBox(height: 8),
              ColorSchemeExample(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.green, primary: Colors.red),
              ),
              const SizedBox(height: 20),
              const Text("ColorScheme - Custom Secondary Color"),
              const SizedBox(height: 8),
              ColorSchemeExample(
                colorScheme:
                    ColorScheme.fromSeed(seedColor: Colors.purple, secondary: Colors.orange),
              ),
              const SizedBox(height: 20),
              const Text("ColorScheme - Dark Theme"),
              const SizedBox(height: 8),
              ColorSchemeExample(
                colorScheme:
                    ColorScheme.fromSeed(seedColor: Colors.blue, brightness: Brightness.dark),
              ),
              const SizedBox(height: 20),
              const Text("ColorScheme - Custom Error Color"),
              const SizedBox(height: 8),
              ColorSchemeExample(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow, error: Colors.brown),
              ),
              const SizedBox(height: 20),
              const Text("ColorScheme - Custom Surface Color"),
              const SizedBox(height: 8),
              ColorSchemeExample(
                colorScheme:
                    ColorScheme.fromSeed(seedColor: Colors.teal, surface: Colors.grey[300]!),
              ),
              const SizedBox(height: 20),
              const Text("ColorScheme - Custom Background Color"),
              const SizedBox(height: 8),
              ColorSchemeExample(
                colorScheme:
                    ColorScheme.fromSeed(seedColor: Colors.pink, surface: Colors.lightBlue[100]!),
              ),
              const SizedBox(height: 20),
              const Text("ColorScheme - Custom OnPrimary Color"),
              const SizedBox(height: 8),
              ColorSchemeExample(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber, onPrimary: Colors.black),
              ),
              const SizedBox(height: 20),
              const Text("ColorScheme - Custom OnSecondary Color"),
              const SizedBox(height: 8),
              ColorSchemeExample(
                colorScheme:
                    ColorScheme.fromSeed(seedColor: Colors.indigo, onSecondary: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ColorSchemeExample extends StatelessWidget {
  final ColorScheme colorScheme;

  const ColorSchemeExample({super.key, required this.colorScheme});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(colorScheme: colorScheme),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            color: colorScheme.primary,
            child: Text('Primary Color', style: TextStyle(color: colorScheme.onPrimary)),
          ),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.all(8),
            color: colorScheme.secondary,
            child: Text('Secondary Color', style: TextStyle(color: colorScheme.onSecondary)),
          ),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.all(8),
            color: colorScheme.surface,
            child: Text('Surface Color', style: TextStyle(color: colorScheme.onSurface)),
          ),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.all(8),
            color: colorScheme.surface,
            child: Text('Background Color', style: TextStyle(color: colorScheme.onSurface)),
          ),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.all(8),
            color: colorScheme.error,
            child: Text('Error Color', style: TextStyle(color: colorScheme.onError)),
          ),
          const SizedBox(height: 4),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Elevated Button'),
          ),
          const SizedBox(height: 4),
          Text('Text with primary color', style: TextStyle(color: colorScheme.primary)),
          const SizedBox(height: 4),
          Icon(Icons.favorite, color: colorScheme.secondary),
        ],
      ),
    );
  }
}
