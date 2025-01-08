import 'package:flutter/material.dart';

class CloseButtonScreen extends StatelessWidget {
  const CloseButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CloseButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("CloseButton Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  Column(
                    children: [
                      Tooltip(message: "CloseButton - Default", child: CloseButton()),
                      Text("Default"),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "CloseButton - Color Red", child: CloseButton(color: Colors.red)),
                      Text("Color Red"),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "CloseButton - Color Blue", child: CloseButton(color: Colors.blue)),
                      Text("Color Blue"),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "CloseButton - Large Size", child: SizedBox(width: 48, height: 48, child: CloseButton())),
                      Text("Large Size"),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "CloseButton - Small Size", child: SizedBox(width: 24, height: 24, child: CloseButton())),
                      Text("Small Size"),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "CloseButton - With onpressed", child: CloseButton(onPressed: (){})),
                      Text("With onPressed"),
                    ],
                  ),
                  // CloseButton does not wrap other widgets, so this is not applicable
                  // Column(
                  //   children: [
                  //     Tooltip(message: "CloseButton - Wrapped", child: CloseButton(child: Container(width: 20, height: 20, color: Colors.green))),
                  //     Text("Wrapped"),
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
