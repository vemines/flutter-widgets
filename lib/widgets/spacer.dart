import 'package:flutter/material.dart';

class SpacerScreen extends StatelessWidget {
  const SpacerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Spacer Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Spacer - Default"),
              Row(
                children: [
                  Container(width: 50, height: 50, color: Colors.red),
                  const Spacer(),
                  Container(width: 50, height: 50, color: Colors.blue),
                ],
              ),
              const SizedBox(height: 20),
              const Text("Spacer - Flex 2"),
              Row(
                children: [
                  Container(width: 50, height: 50, color: Colors.red),
                  const Spacer(flex: 2),
                  Container(width: 50, height: 50, color: Colors.blue),
                ],
              ),
              const SizedBox(height: 20),
              const Text("Spacer - Flex 2 between 2 Expanded"),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.red,
                    height: 50,
                  )),
                  const Spacer(flex: 3),
                  Expanded(
                      child: Container(
                    color: Colors.blue,
                    height: 50,
                  )),
                ],
              ),
              const SizedBox(height: 20),
              const Text("Spacer - flex 1 and flex 2"),
              Row(
                children: [
                  Container(width: 50, height: 50, color: Colors.red),
                  const Spacer(),
                  Container(width: 50, height: 50, color: Colors.green),
                  const Spacer(flex: 2),
                  Container(width: 50, height: 50, color: Colors.blue),
                ],
              ),
              const SizedBox(height: 20),
              const Text("Spacer - With different sized containers"),
              Row(
                children: [
                  Container(width: 20, height: 20, color: Colors.red),
                  const Spacer(),
                  Container(width: 80, height: 80, color: Colors.blue),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
