import 'package:flutter/material.dart';

class SliverChildListDelegateScreen extends StatelessWidget {
  const SliverChildListDelegateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverChildListDelegate Showcase'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("SliverChildListDelegate Variations:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _buildDelegateVariation(
                  "Default Delegate",
                  SliverChildListDelegate(
                    [
                      Container(height: 50, width: 100, color: Colors.blue),
                      Container(height: 50, width: 100, color: Colors.green),
                      Container(height: 50, width: 100, color: Colors.red),
                    ],
                  ),
                  "Default SliverChildListDelegate with colored containers."
                ),
                _buildDelegateVariation(
                  "Delegate with Different Heights",
                  SliverChildListDelegate(
                    [
                      Container(height: 30, width: 100, color: Colors.orange),
                      Container(height: 70, width: 100, color: Colors.purple),
                      Container(height: 50, width: 100, color: Colors.teal),
                    ],
                  ),
                  "SliverChildListDelegate with containers of varying heights."
                ),
                _buildDelegateVariation(
                  "Delegate with Text",
                  SliverChildListDelegate(
                    [
                      const Text("Item 1", style: TextStyle(fontSize: 20)),
                      const Text("Item 2", style: TextStyle(fontSize: 16)),
                      const Text("Item 3", style: TextStyle(fontSize: 24)),
                    ],
                  ),
                  "SliverChildListDelegate with text widgets."
                ),
                _buildDelegateVariation(
                  "Delegate with Padding",
                  SliverChildListDelegate(
                    [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(height: 50, width: 100, color: Colors.yellow),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(height: 50, width: 100, color: Colors.brown),
                      ),
                    ],
                  ),
                  "SliverChildListDelegate with padded containers."
                ),
                _buildDelegateVariation(
                  "Delegate with SizedBox",
                  SliverChildListDelegate(
                    [
                      const SizedBox(height: 50, width: 100, child: ColoredBox(color: Colors.pink)),
                      const SizedBox(height: 70, width: 120, child: ColoredBox(color: Colors.lime)),
                    ],
                  ),
                  "SliverChildListDelegate with SizedBox widgets."
                ),
                _buildDelegateVariation(
                  "Delegate with Alignment",
                  SliverChildListDelegate(
                    [
                      Align(alignment: Alignment.topLeft, child: Container(height: 30, width: 50, color: Colors.cyan)),
                      Align(alignment: Alignment.center, child: Container(height: 30, width: 50, color: Colors.indigo)),
                      Align(alignment: Alignment.bottomRight, child: Container(height: 30, width: 50, color: Colors.amber)),
                    ],
                  ),
                  "SliverChildListDelegate with aligned containers."
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDelegateVariation(String title, SliverChildListDelegate delegate, String description) {
    return Tooltip(
      message: description,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(
            height: 150,
            child: CustomScrollView(
              slivers: [
                SliverList(delegate: delegate),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
