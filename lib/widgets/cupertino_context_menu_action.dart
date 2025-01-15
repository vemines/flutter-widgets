import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoContextMenuActionScreen extends StatelessWidget {
  const CupertinoContextMenuActionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoContextMenuAction Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoContextMenuAction",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  Tooltip(
                    message: "Default Action",
                    child: CupertinoContextMenuAction(
                      onPressed: () {},
                      child: const Text("Default"),
                    ),
                  ),
                  Tooltip(
                    message: "With Icon",
                    child: CupertinoContextMenuAction(
                      onPressed: () {},
                      trailingIcon: CupertinoIcons.add,
                      child: const Text("Add"),
                    ),
                  ),
                  Tooltip(
                    message: "Destructive Action",
                    child: CupertinoContextMenuAction(
                      onPressed: () {},
                      isDestructiveAction: true,
                      child: const Text("Delete"),
                    ),
                  ),
                  Tooltip(
                    message: "Disabled Action",
                    child: CupertinoContextMenuAction(
                      onPressed: null,
                      child: const Text("Disabled"),
                    ),
                  ),
                  Tooltip(
                    message: "Custom Color Action",
                    child: CupertinoContextMenuAction(
                      onPressed: () {},
                      child: const Text("Custom Color", style: TextStyle(color: Colors.blue)),
                    ),
                  ),
                  Tooltip(
                    message: "Custom Text Style",
                    child: CupertinoContextMenuAction(
                      onPressed: () {},
                      child: const Text("Text Style",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text("CupertinoContextMenuAction Wrapping a Widget",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              // CupertinoContextMenuAction without wrapping another widget is not applicable, it needs a child.
              // CupertinoContextMenuAction(onPressed: (){},), // This will cause an error
              Tooltip(
                message: "Wrapping a Container",
                child: CupertinoContextMenuAction(
                  onPressed: () {},
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.yellow[100],
                    child: const Text("Wrapped Container"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
