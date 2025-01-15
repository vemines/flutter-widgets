import 'package:flutter/material.dart';

class RepaintBoundaryScreen extends StatelessWidget {
  const RepaintBoundaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RepaintBoundary Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RepaintBoundary - Usage (wrapping Container)"),
              RepaintBoundary(
                child: Container(
                  color: Colors.blue.shade100,
                  padding: const EdgeInsets.all(20),
                  child: const Text("This is a container inside RepaintBoundary"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RepaintBoundary - With Key"),
              RepaintBoundary(
                key: const ValueKey("repaint_boundary_with_key"),
                child: Container(
                  color: Colors.green.shade100,
                  padding: const EdgeInsets.all(20),
                  child: const Text("This is a container inside RepaintBoundary with a key"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RepaintBoundary - With different child"),
              RepaintBoundary(
                child: const FlutterLogo(size: 100),
              ),
              const SizedBox(height: 20),
              const Text("RepaintBoundary - With a complex child"),
              RepaintBoundary(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("Complex Child"),
                      const SizedBox(height: 5),
                      ElevatedButton(onPressed: () {}, child: const Text("Button")),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // RepaintBoundary without a child is not useful and will not render anything visible.
              // const Text("RepaintBoundary - Without Child (Not Recommended)"),
              // RepaintBoundary(),
            ],
          ),
        ),
      ),
    );
  }
}
