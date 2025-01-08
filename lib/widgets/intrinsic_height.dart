import 'package:flutter/material.dart';

class IntrinsicHeightScreen extends StatelessWidget {
  const IntrinsicHeightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IntrinsicHeight Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("IntrinsicHeight Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  Column(
                    children: [
                      const Text("IntrinsicHeight - Default"),
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            Container(color: Colors.red, width: 50, height: 100),
                            Container(color: Colors.blue, width: 50, height: 50),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("IntrinsicHeight - With different heights"),
                      IntrinsicHeight(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(color: Colors.green, width: 50, height: 150),
                            Container(color: Colors.yellow, width: 50, height: 75),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("IntrinsicHeight - With padding"),
                      IntrinsicHeight(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(color: Colors.orange, width: 50, height: 100),
                              Container(color: Colors.purple, width: 50, height: 50),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("IntrinsicHeight - With alignment"),
                      IntrinsicHeight(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(color: Colors.teal, width: 50, height: 100),
                            Container(color: Colors.pink, width: 50, height: 50),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("IntrinsicHeight - With different widths"),
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            Container(color: Colors.brown, width: 100, height: 50),
                            Container(color: Colors.grey, width: 25, height: 50),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("IntrinsicHeight - With a single child"),
                      IntrinsicHeight(
                        child: Container(color: Colors.cyan, width: 100, height: 100),
                      ),
                    ],
                  ),
                  // IntrinsicHeight without a child will cause an error.
                  // Column(
                  //   children: [
                  //     const Text("IntrinsicHeight - No child (Error)"),
                  //     IntrinsicHeight(),
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
