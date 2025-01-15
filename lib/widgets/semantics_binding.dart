import 'package:flutter/material.dart';

class SemanticsBindingScreen extends StatelessWidget {
  const SemanticsBindingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SemanticsBinding Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("SemanticsBinding - Usage (Not a visual widget)",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              // SemanticsBinding is not a visual widget, so we can't display it directly.
              // It's used to manage semantics for other widgets.
              // The following code would not display anything visually:
              // SemanticsBinding(
              //   child: Container(),
              // ),
              Text("SemanticsBinding - Wrapping a Container",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Semantics(
                label: 'Container with semantics',
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 20),
              Text("SemanticsBinding - Wrapping a Text Widget",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Semantics(
                label: 'Text with semantics',
                child: Text(
                  'Hello World',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              Text("SemanticsBinding - With custom properties",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Semantics(
                label: 'Custom semantics',
                hint: 'This is a hint',
                value: 'Custom Value',
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 20),
              Text("SemanticsBinding - With explicit properties",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Semantics(
                label: 'Explicit semantics',
                enabled: true,
                focusable: true,
                focused: false,
                child: Container(
                  width: 60,
                  height: 60,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
