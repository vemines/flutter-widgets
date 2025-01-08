import 'package:flutter/material.dart';

class IgnorePointerScreen extends StatelessWidget {
  const IgnorePointerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IgnorePointer Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("IgnorePointer Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  Column(
                    children: [
                      const Text("IgnorePointer - Enabled (Clickable)",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      IgnorePointer(
                        ignoring: false,
                        child: ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(content: Text("Button Clicked")));
                          },
                          child: const Text("Click Me"),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("IgnorePointer - Disabled (Unclickable)",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      IgnorePointer(
                        ignoring: true,
                        child: ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(content: Text("Button Clicked")));
                          },
                          child: const Text("Click Me"),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("IgnorePointer - With Container",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      IgnorePointer(
                        ignoring: true,
                        child: Container(
                          color: Colors.blue.withValues(alpha: 255 * 0.3),
                          padding: const EdgeInsets.all(20),
                          child: const Text("This is a container"),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("IgnorePointer - With Text",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      IgnorePointer(
                        ignoring: true,
                        child: const Text("This text is ignored"),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("IgnorePointer - Nested Enabled/Disabled",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      IgnorePointer(
                        ignoring: false,
                        child: IgnorePointer(
                          ignoring: true,
                          child: ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(content: Text("Button Clicked")));
                            },
                            child: const Text("Click Me"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("IgnorePointer - Nested Disabled/Enabled",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      IgnorePointer(
                        ignoring: true,
                        child: IgnorePointer(
                          ignoring: false,
                          child: ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(content: Text("Button Clicked")));
                            },
                            child: const Text("Click Me"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
