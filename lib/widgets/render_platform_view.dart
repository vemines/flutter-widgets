import 'package:flutter/material.dart';

class RenderPlatformViewScreen extends StatelessWidget {
  const RenderPlatformViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RenderPlatformView Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RenderPlatformView Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              const Text("RenderPlatformView - Example"),
              const SizedBox(height: 8),
              SizedBox(
                height: 200,
                width: 200,
                child: PlatformViewExample(),
              ),
              const SizedBox(height: 16),
              const Text("RenderPlatformView - With Background Color"),
              const SizedBox(height: 8),
              Container(
                color: Colors.blue.shade100,
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: PlatformViewExample(),
                ),
              ),
              const SizedBox(height: 16),
              const Text("RenderPlatformView - With Border"),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 2),
                ),
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: PlatformViewExample(),
                ),
              ),
              const SizedBox(height: 16),
              const Text("RenderPlatformView - With Padding"),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: PlatformViewExample(),
                ),
              ),
              const SizedBox(height: 16),
              const Text("RenderPlatformView - With Margin"),
              const SizedBox(height: 8),
              Container(
                margin: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: PlatformViewExample(),
                ),
              ),
              const SizedBox(height: 16),
              const Text("RenderPlatformView - With Different Size"),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                width: 100,
                child: PlatformViewExample(),
              ),
              const SizedBox(height: 16),
              const Text("RenderPlatformView - With Different Size 2"),
              const SizedBox(height: 8),
              SizedBox(
                height: 300,
                width: 300,
                child: PlatformViewExample(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlatformViewExample extends StatelessWidget {
  const PlatformViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Platform View Placeholder");
  }
}
