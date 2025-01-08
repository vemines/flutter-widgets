import 'package:flutter/material.dart';

class InteractiveViewerScreen extends StatelessWidget {
  const InteractiveViewerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InteractiveViewer Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("InteractiveViewer - Basic"),
              InteractiveViewer(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                  child: const Center(child: Text("Drag Me", style: TextStyle(color: Colors.white))),
                ),
              ),
              const SizedBox(height: 20),
              const Text("InteractiveViewer - With Scale"),
              InteractiveViewer(
                minScale: 0.5,
                maxScale: 3.0,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,
                  child: const Center(child: Text("Pinch to Zoom", style: TextStyle(color: Colors.white))),
                ),
              ),
              const SizedBox(height: 20),
              const Text("InteractiveViewer - Constrained"),
              InteractiveViewer(
                constrained: false,
                child: Container(
                  width: 400,
                  height: 400,
                  color: Colors.red,
                  child: const Center(child: Text("Unconstrained", style: TextStyle(color: Colors.white))),
                ),
              ),
              const SizedBox(height: 20),
              const Text("InteractiveViewer - Alignment"),
              InteractiveViewer(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.orange,
                  child: const Center(child: Text("Bottom Right", style: TextStyle(color: Colors.white))),
                ),
              ),
              const SizedBox(height: 20),
              const Text("InteractiveViewer - Boundary"),
              InteractiveViewer(
                boundaryMargin: const EdgeInsets.all(50),
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.purple,
                  child: const Center(child: Text("Boundary Margin", style: TextStyle(color: Colors.white))),
                ),
              ),
              const SizedBox(height: 20),
              const Text("InteractiveViewer - Transformation Controller"),
              InteractiveViewer(
                transformationController: TransformationController(),
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.teal,
                  child: const Center(child: Text("Transformation Controller", style: TextStyle(color: Colors.white))),
                ),
              ),
              const SizedBox(height: 20),
              const Text("InteractiveViewer - Pan Enabled False"),
              InteractiveViewer(
                panEnabled: false,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.brown,
                  child: const Center(child: Text("Pan Disabled", style: TextStyle(color: Colors.white))),
                ),
              ),
              const SizedBox(height: 20),
              const Text("InteractiveViewer - Scale Enabled False"),
              InteractiveViewer(
                scaleEnabled: false,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.grey,
                  child: const Center(child: Text("Scale Disabled", style: TextStyle(color: Colors.white))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
