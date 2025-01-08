import 'package:flutter/material.dart';

class DecoratedBoxScreen extends StatelessWidget {
  const DecoratedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DecoratedBox Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("DecoratedBox Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  Column(
                    children: [
                      const Text("DecoratedBox - Red Background"),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                        child: const SizedBox(width: 100, height: 100),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("DecoratedBox - Blue Border"),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 5),
                        ),
                        child: const SizedBox(width: 100, height: 100),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("DecoratedBox - Rounded Corners"),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const SizedBox(width: 100, height: 100),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("DecoratedBox - Gradient Background"),
                      DecoratedBox(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.yellow, Colors.orange],
                          ),
                        ),
                        child: const SizedBox(width: 100, height: 100),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("DecoratedBox - With Shadow"),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withValues(alpha: 255 * 0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const SizedBox(width: 100, height: 100),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("DecoratedBox - With Image"),
                      DecoratedBox(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/100"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const SizedBox(width: 100, height: 100),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("DecoratedBox - With Padding"),
                      DecoratedBox(
                        decoration: const BoxDecoration(
                          color: Colors.lightBlue,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: SizedBox(width: 60, height: 60),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("DecoratedBox - Wrapping a Text"),
                      DecoratedBox(
                        decoration: const BoxDecoration(
                          color: Colors.purple,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Hello", style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                  // DecoratedBox without a child is not visually useful, so it's not included.
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
