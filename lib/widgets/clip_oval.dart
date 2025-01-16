import 'package:flutter/material.dart';

class ClipOvalScreen extends StatelessWidget {
  const ClipOvalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ClipOval Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ClipOval Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  Column(
                    children: [
                      const Text("ClipOval - Basic"),
                      ClipOval(
                        child: Container(
                          color: Colors.blue,
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("ClipOval - Red Container"),
                      ClipOval(
                        child: Container(
                          color: Colors.red,
                          width: 80,
                          height: 120,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("ClipOval - Image"),
                      ClipOval(
                        child: Image.network(
                          'https://placehold.co/150x150',
                          width: 100,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("ClipOval - Different Size"),
                      ClipOval(
                        child: Container(
                          color: Colors.green,
                          width: 80,
                          height: 40,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("ClipOval - With Border"),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: ClipOval(
                          child: Container(
                            color: Colors.yellow,
                            width: 70,
                            height: 90,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("ClipOval - With Padding"),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: ClipOval(
                          child: Container(
                            color: Colors.purple,
                            width: 80,
                            height: 100,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("ClipOval - With Margin"),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        margin: const EdgeInsets.all(10),
                        child: ClipOval(
                          child: Container(
                            color: Colors.orange,
                            width: 90,
                            height: 60,
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
