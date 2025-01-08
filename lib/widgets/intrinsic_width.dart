import 'package:flutter/material.dart';

class IntrinsicWidthScreen extends StatelessWidget {
  const IntrinsicWidthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IntrinsicWidth Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("IntrinsicWidth Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildIntrinsicWidthVariation(
                    'Default',
                    IntrinsicWidth(
                      child: Container(
                        color: Colors.blue.shade100,
                        padding: const EdgeInsets.all(8),
                        child: const Text('Default Width'),
                      ),
                    ),
                  ),
                  _buildIntrinsicWidthVariation(
                    'With Max Width',
                    IntrinsicWidth(
                      child: Container(
                        color: Colors.green.shade100,
                        padding: const EdgeInsets.all(8),
                        child: const Text('Longer Text to Test Max Width'),
                      ),
                    ),
                  ),
                  _buildIntrinsicWidthVariation(
                    'With Child Alignment',
                    IntrinsicWidth(
                      child: Container(
                        color: Colors.orange.shade100,
                        padding: const EdgeInsets.all(8),
                        alignment: Alignment.centerRight,
                        child: const Text('Right Aligned'),
                      ),
                    ),
                  ),
                  _buildIntrinsicWidthVariation(
                    'With Padding',
                    IntrinsicWidth(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          color: Colors.purple.shade100,
                          padding: const EdgeInsets.all(8),
                          child: const Text('With Padding'),
                        ),
                      ),
                    ),
                  ),
                  _buildIntrinsicWidthVariation(
                    'With Margin',
                    IntrinsicWidth(
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        color: Colors.teal.shade100,
                        padding: const EdgeInsets.all(8),
                        child: const Text('With Margin'),
                      ),
                    ),
                  ),
                  _buildIntrinsicWidthVariation(
                    'With Border',
                    IntrinsicWidth(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red, width: 2),
                        ),
                        color: Colors.yellow.shade100,
                        padding: const EdgeInsets.all(8),
                        child: const Text('With Border'),
                      ),
                    ),
                  ),
                  _buildIntrinsicWidthVariation(
                    'With BorderRadius',
                    IntrinsicWidth(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pink.shade100,
                        ),
                        padding: const EdgeInsets.all(8),
                        child: const Text('With BorderRadius'),
                      ),
                    ),
                  ),
                  _buildIntrinsicWidthVariation(
                    'Wrapping Text',
                    IntrinsicWidth(
                      child: const Text('This is a long text to test wrapping'),
                    ),
                  ),
                  _buildIntrinsicWidthVariation(
                    'Wrapping Container',
                    IntrinsicWidth(
                      child: Container(
                        color: Colors.grey.shade200,
                        child: const Text('Container Wrapped'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIntrinsicWidthVariation(String name, Widget widget) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        widget,
      ],
    );
  }
}
