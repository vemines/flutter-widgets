import 'package:flutter/material.dart';

class MergeSemanticsScreen extends StatelessWidget {
  const MergeSemanticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MergeSemantics Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("MergeSemantics - Default"),
              MergeSemantics(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.grey[200],
                  child: const Text("Default MergeSemantics"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("MergeSemantics - With Container"),
              MergeSemantics(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.blue[100],
                  child: const Text("MergeSemantics with Container"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("MergeSemantics - With Multiple Children"),
              MergeSemantics(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.green[100],
                      child: const Text("Child 1"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.yellow[100],
                      child: const Text("Child 2"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
