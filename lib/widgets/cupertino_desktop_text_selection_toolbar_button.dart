import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDesktopTextSelectionToolbarButtonScreen extends StatelessWidget {
  const CupertinoDesktopTextSelectionToolbarButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoDesktopTextSelectionToolbarButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Default Button:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  Tooltip(
                    message: "Default Button",
                    child: CupertinoButton(
                      onPressed: () {},
                      child: const Text('Default'),
                    ),
                  ),
                  Tooltip(
                    message: "Button with Custom Color",
                    child: CupertinoButton(
                      onPressed: () {},
                      color: Colors.blue,
                      child: const Text('Custom Color', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Tooltip(
                    message: "Button with Custom Padding",
                    child: CupertinoButton(
                      onPressed: () {},
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: const Text('Custom Padding'),
                    ),
                  ),
                  Tooltip(
                    message: "Button with Custom Border Radius",
                    child: CupertinoButton(
                      onPressed: () {},
                      borderRadius: BorderRadius.circular(10),
                      child: const Text('Custom Radius'),
                    ),
                  ),
                  Tooltip(
                    message: "Button with Custom Text Style",
                    child: CupertinoButton(
                      onPressed: () {},
                      child: const Text('Custom Text', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Tooltip(
                    message: "Button with Icon",
                    child: CupertinoButton(
                      onPressed: () {},
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.add, size: 16,),
                          SizedBox(width: 4),
                          Text('Icon Button'),
                        ],
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "Button with Icon and Custom Color",
                    child: CupertinoButton(
                      onPressed: () {},
                      color: Colors.green,
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.check, size: 16, color: Colors.white,),
                          SizedBox(width: 4),
                          Text('Icon Button', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text("Button Wrapping a Container:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoButton(
                onPressed: () {},
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.grey[200],
                  child: const Text('Wrapped Container'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
