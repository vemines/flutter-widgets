import 'package:flutter/material.dart';

class VerticalDividerScreen extends StatelessWidget {
  const VerticalDividerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("VerticalDivider Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("VerticalDivider - Default"),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Text("Left"),
                  VerticalDivider(),
                  Text("Right"),
                ],
              ),
              const SizedBox(height: 20),
              const Text("VerticalDivider - Color and Thickness"),
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
              const SizedBox(height: 20),
              const Text("VerticalDivider - Indent and EndIndent"),
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
              const SizedBox(height: 20),
              const Text("VerticalDivider - Width"),
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
              const SizedBox(height: 20),
              const Text("VerticalDivider - Combined Properties"),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Text("Left"),
                  const VerticalDivider(
                    color: Colors.blue,
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                    width: 30,
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
