import 'package:flutter/material.dart';

class LayoutIdScreen extends StatelessWidget {
  const LayoutIdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LayoutId Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("LayoutId Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildLayoutIdVariation(
                    "LayoutId - Basic",
                    LayoutId(
                      id: 'first',
                      child: Container(
                        color: Colors.blue,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  _buildLayoutIdVariation(
                    "LayoutId - Different Id",
                    LayoutId(
                      id: 'second',
                      child: Container(
                        color: Colors.green,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  _buildLayoutIdVariation(
                    "LayoutId - Larger Container",
                    LayoutId(
                      id: 'third',
                      child: Container(
                        color: Colors.red,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  _buildLayoutIdVariation(
                    "LayoutId - Text Child",
                    LayoutId(
                      id: 'fourth',
                      child: const Text("Text", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  _buildLayoutIdVariation(
                    "LayoutId - Padded Container",
                    LayoutId(
                      id: 'fifth',
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.orange,
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                  ),
                  _buildLayoutIdVariation(
                    "LayoutId - Aligned Container",
                    LayoutId(
                      id: 'sixth',
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          color: Colors.purple,
                          width: 50,
                          height: 50,
                        ),
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

  Widget _buildLayoutIdVariation(String name, LayoutId layoutId) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(message: name, child: layoutId),
        Text(name, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

class LayoutId extends StatelessWidget {
  final String id;
  final Widget child;

  const LayoutId({super.key, required this.id, required this.child});

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
