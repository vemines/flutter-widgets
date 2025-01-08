import 'package:flutter/material.dart';

class BaselineScreen extends StatelessWidget {
  const BaselineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Baseline Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Baseline - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Baseline(
                      baseline: 20,
                      baselineType: TextBaseline.alphabetic,
                      child: Text("Text", style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("Baseline - Different Baseline", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Baseline(
                      baseline: 30,
                      baselineType: TextBaseline.ideographic,
                      child: Text("Text", style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("Baseline - With Different Child", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Baseline(
                      baseline: 20,
                      baselineType: TextBaseline.alphabetic,
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("Baseline - With Different Child and Baseline", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Baseline(
                      baseline: 40,
                      baselineType: TextBaseline.ideographic,
                      child: Container(
                        width: 30,
                        height: 30,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("Baseline - With Text and Container", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Baseline(
                      baseline: 20,
                      baselineType: TextBaseline.alphabetic,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Text", style: TextStyle(fontSize: 16)),
                          SizedBox(width: 10),
                          Container(
                            width: 20,
                            height: 20,
                            color: Colors.red,
                          ),
                        ],
                      ),
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
