import 'package:flutter/material.dart';

class SliverOpacityScreen extends StatelessWidget {
  const SliverOpacityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SliverOpacity Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("SliverOpacity Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _buildSliverOpacityVariation(
                  "SliverOpacity - Opacity 0.5",
                  SliverOpacity(
                    opacity: 0.5,
                    sliver: SliverToBoxAdapter(
                      child: Container(
                        height: 100,
                        color: Colors.blue,
                        child: Center(child: Text("Opacity 0.5", style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ),
                ),
                _buildSliverOpacityVariation(
                  "SliverOpacity - Opacity 0.8",
                  SliverOpacity(
                    opacity: 0.8,
                    sliver: SliverToBoxAdapter(
                      child: Container(
                        height: 100,
                        color: Colors.green,
                        child: Center(child: Text("Opacity 0.8", style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ),
                ),
                _buildSliverOpacityVariation(
                  "SliverOpacity - Opacity 1.0",
                  SliverOpacity(
                    opacity: 1.0,
                    sliver: SliverToBoxAdapter(
                      child: Container(
                        height: 100,
                        color: Colors.red,
                        child: Center(child: Text("Opacity 1.0", style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ),
                ),
                _buildSliverOpacityVariation(
                  "SliverOpacity - Opacity 0.2",
                  SliverOpacity(
                    opacity: 0.2,
                    sliver: SliverToBoxAdapter(
                      child: Container(
                        height: 100,
                        color: Colors.orange,
                        child: Center(child: Text("Opacity 0.2", style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ),
                ),
                _buildSliverOpacityVariation(
                  "SliverOpacity - Opacity 0.9 with different height",
                  SliverOpacity(
                    opacity: 0.9,
                    sliver: SliverToBoxAdapter(
                      child: Container(
                        height: 150,
                        color: Colors.purple,
                        child: Center(child: Text("Opacity 0.9, Height 150", style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ),
                ),
                _buildSliverOpacityVariation(
                  "SliverOpacity - Opacity 0.6 with different text",
                  SliverOpacity(
                    opacity: 0.6,
                    sliver: SliverToBoxAdapter(
                      child: Container(
                        height: 100,
                        color: Colors.teal,
                        child: Center(child: Text("Opacity 0.6, Different Text", style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSliverOpacityVariation(String label, SliverOpacity sliverOpacity) {
    return Column(
      children: [
        Tooltip(message: label, child: Text(label, style: TextStyle(fontSize: 12))),
        SizedBox(height: 5),
        SizedBox(
          width: 200,
          height: 150,
          child: CustomScrollView(
            slivers: [
              sliverOpacity,
            ],
          ),
        ),
      ],
    );
  }
}
