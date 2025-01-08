import 'package:flutter/material.dart';

class BackButtonScreen extends StatelessWidget {
  const BackButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BackButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("BackButton Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  Column(
                    children: [
                      const Tooltip(message: "BackButton - Default"),
                      const BackButton(),
                    ],
                  ),
                  Column(
                    children: [
                      const Tooltip(message: "BackButton - Color"),
                      const BackButton(
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Tooltip(message: "BackButton - Icon Size"),
                      BackButton(
                        style: ButtonStyle(iconSize: WidgetStatePropertyAll(30)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Tooltip(message: "BackButton - Disabled"),
                      const BackButton(
                        onPressed: null,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Tooltip(message: "BackButton - With Container"),
                      Container(
                        color: Colors.grey[200],
                        child: const BackButton(),
                      ),
                    ],
                  ),
                  // BackButton does not wrap another widget, so this is not applicable
                  // Column(
                  //   children: [
                  //     const Tooltip(message: "BackButton - Wrapped with Text"),
                  //     const BackButton(
                  //       child: Text("Back"),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
