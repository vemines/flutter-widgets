import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTextSelectionToolbarButtonScreen extends StatelessWidget {
  const CupertinoTextSelectionToolbarButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoTextSelectionToolbarButton Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Button:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  Tooltip(
                    message: "Button",
                    child: CupertinoTextSelectionToolbarButton(
                      onPressed: () {},
                      child: const Text('Button'),
                    ),
                  ),
                  Tooltip(
                    message: "Button with Icon",
                    child: CupertinoTextSelectionToolbarButton(
                      onPressed: () {},
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(CupertinoIcons.add),
                          Text('Add'),
                        ],
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "Button with Custom Color",
                    child: CupertinoTextSelectionToolbarButton(
                      onPressed: () {},
                      child: const Text('Custom Color', style: TextStyle(color: Colors.blue)),
                    ),
                  ),
                  Tooltip(
                    message: "Button with Disabled State",
                    child: CupertinoTextSelectionToolbarButton(
                      onPressed: null,
                      child: const Text('Disabled'),
                    ),
                  ),
                  Tooltip(
                    message: "Button with Custom Text Style",
                    child: CupertinoTextSelectionToolbarButton(
                      onPressed: () {},
                      child: const Text('Custom Text Style',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Tooltip(
                    message: "Button with Custom Icon Color",
                    child: CupertinoTextSelectionToolbarButton(
                      onPressed: () {},
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(CupertinoIcons.heart, color: Colors.red),
                          Text('Heart Icon'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text("Button Wrapping a Container:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTextSelectionToolbarButton(
                onPressed: () {},
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.grey.shade200,
                  child: const Text('Wrapped Container'),
                ),
              ),
              const SizedBox(height: 20),
              // The following is commented out because it would cause an error.
              // CupertinoTextSelectionToolbarButton(
              //   onPressed: () {},
              // ),
              // The above would cause an error because the child is required.
            ],
          ),
        ),
      ),
    );
  }
}
