import 'package:flutter/material.dart';

class DividerVerticalScreen extends StatelessWidget {
  const DividerVerticalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DividerVertical Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Divider - Default"),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Text("Left"),
                  VerticalDivider(),
                  Text("Right"),
                ],
              ),
              const SizedBox(height: 16),
              const Text("Divider - Color and Thickness"),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Text("Left"),
                  const VerticalDivider(
                    color: Colors.red,
                    thickness: 3,
                  ),
                  const Text("Right"),
                ],
              ),
              const SizedBox(height: 16),
              const Text("Divider - Indent and EndIndent"),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Text("Left"),
                  const VerticalDivider(
                    indent: 20,
                    endIndent: 20,
                  ),
                  const Text("Right"),
                ],
              ),
              const SizedBox(height: 16),
              const Text("Divider - Width"),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Text("Left"),
                  const VerticalDivider(
                    width: 50,
                  ),
                  const Text("Right"),
                ],
              ),
              const SizedBox(height: 16),
              const Text("Divider - Height (using SizedBox)"),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Text("Left"),
                  SizedBox(
                    height: 100,
                    child: VerticalDivider(
                      thickness: 2,
                      color: Colors.blue,
                    ),
                  ),
                  const Text("Right"),
                ],
              ),
              const SizedBox(height: 16),
              const Text("Divider - With Container"),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Text("Left"),
                  SizedBox(
                    height: 50,
                    child: const VerticalDivider(
                      thickness: 2,
                      color: Colors.green,
                    ),
                  ),
                  const Text("Right"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
