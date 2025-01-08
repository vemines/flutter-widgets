import 'package:flutter/material.dart';

class ScrollableScreen extends StatelessWidget {
  const ScrollableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scrollable Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("SingleChildScrollView - Basic"),
              const SizedBox(height: 8),
              Container(
                height: 200,
                color: Colors.grey[200],
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      for (int i = 0; i < 20; i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Item $i'),
                        ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("SingleChildScrollView - Horizontal"),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < 20; i++)
                        Container(
                          width: 100,
                          height: 100,
                          margin: const EdgeInsets.all(8.0),
                          color: Colors.blue[100 * (i % 9 + 1)],
                          child: Center(child: Text('Item $i')),
                        ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("SingleChildScrollView - With Padding"),
              const SizedBox(height: 8),
              Container(
                height: 200,
                color: Colors.grey[200],
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      for (int i = 0; i < 20; i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Item $i'),
                        ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("SingleChildScrollView - With Custom Scrollbar"),
              const SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: Scrollbar(
                  thumbVisibility: true,
                  trackVisibility: true,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        for (int i = 0; i < 20; i++)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Item $i'),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("SingleChildScrollView - With Reverse Direction"),
              const SizedBox(height: 8),
              Container(
                height: 200,
                color: Colors.grey[200],
                child: SingleChildScrollView(
                  reverse: true,
                  child: Column(
                    children: [
                      for (int i = 0; i < 20; i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Item $i'),
                        ),
                    ],
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
