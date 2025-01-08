import 'package:flutter/material.dart';

class RenderObjectElementScreen extends StatelessWidget {
  const RenderObjectElementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RenderObjectElement Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RenderObjectElement - Basic Usage (Not Directly Visible)"),
              const SizedBox(height: 8),
              // RenderObjectElement is an abstract class and cannot be directly instantiated.
              // It's a core part of Flutter's rendering pipeline and not a widget.
              // We can't directly show it. Instead, we'll show how it's used implicitly.
              // The following examples demonstrate widgets that use RenderObjectElement internally.
              const Text("RenderObjectElement - Implicit Usage with Container"),
              const SizedBox(height: 8),
              Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(20),
                child: const Text("Container with blue background"),
              ),
              const SizedBox(height: 16),
              const Text("RenderObjectElement - Implicit Usage with Padding"),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  color: Colors.green,
                  child: const Text("Container with padding"),
                ),
              ),
              const SizedBox(height: 16),
              const Text("RenderObjectElement - Implicit Usage with Align"),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  color: Colors.orange,
                  padding: const EdgeInsets.all(10),
                  child: const Text("Aligned Container"),
                ),
              ),
              const SizedBox(height: 16),
              const Text("RenderObjectElement - Implicit Usage with SizedBox"),
              const SizedBox(height: 8),
              SizedBox(
                width: 200,
                height: 100,
                child: Container(
                  color: Colors.purple,
                  child: const Center(child: Text("Sized Container")),
                ),
              ),
              const SizedBox(height: 16),
              const Text("RenderObjectElement - Implicit Usage with DecoratedBox"),
              const SizedBox(height: 8),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Decorated Container"),
                ),
              ),
              const SizedBox(height: 16),
              const Text("RenderObjectElement - Implicit Usage with Center"),
              const SizedBox(height: 8),
              Center(
                child: Container(
                  color: Colors.teal,
                  padding: const EdgeInsets.all(10),
                  child: const Text("Centered Container"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
