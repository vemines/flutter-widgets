import 'package:flutter/material.dart';

class TextStyleScreen extends StatelessWidget {
  const TextStyleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextStyle Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("TextStyle Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  Column(
                    children: [
                      const Text("Default TextStyle"),
                      Text("This is default text.", style: const TextStyle()),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("TextStyle - Bold"),
                      Text("This is bold text.", style: const TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("TextStyle - Italic"),
                      Text("This is italic text.", style: const TextStyle(fontStyle: FontStyle.italic)),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("TextStyle - Color Red"),
                      Text("This is red text.", style: const TextStyle(color: Colors.red)),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("TextStyle - Size 24"),
                      Text("This is size 24 text.", style: const TextStyle(fontSize: 24)),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("TextStyle - Letter Spacing 5"),
                      Text("This is letter spaced text.", style: const TextStyle(letterSpacing: 5)),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("TextStyle - Line Height 2"),
                      Text("This is line height text.", style: const TextStyle(height: 2)),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("TextStyle - Underline"),
                      Text("This is underlined text.", style: const TextStyle(decoration: TextDecoration.underline)),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("TextStyle - Combination"),
                      Text("This is a combination.", style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 18, fontStyle: FontStyle.italic)),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("TextStyle - Font Family"),
                      Text("This is a custom font.", style: const TextStyle(fontFamily: 'Roboto')),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text("TextStyle as a Wrapper", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              // TextStyle without wrapping another widget is not applicable, it's a style object.
              // The TextStyle is used to style other widgets.
              const Text("TextStyle is not a widget, it's a style object. It's used to style other widgets like Text."),
              const SizedBox(height: 10),
              const Text("TextStyle wrapping a Text widget:"),
              Text("This text is styled.", style: const TextStyle(color: Colors.green, fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
