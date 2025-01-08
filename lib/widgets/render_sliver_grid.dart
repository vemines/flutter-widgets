import 'package:flutter/material.dart';

class RenderSliverGridScreen extends StatelessWidget {
  const RenderSliverGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RenderSliverGrid Showcase'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('RenderSliverGrid Variations', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _buildGridVariation(
                  'Basic Grid',
                  SliverGrid(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.center,
                          color: Colors.blue[100 * (index % 9 + 1)],
                          child: Text('Item $index'),
                        );
                      },
                      childCount: 9,
                    ),
                  ),
                  'A basic grid with 3 columns.',
                ),
                _buildGridVariation(
                  'Grid with Max Extent',
                  SliverGrid(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 150,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 1.0,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.center,
                          color: Colors.green[100 * (index % 9 + 1)],
                          child: Text('Item $index'),
                        );
                      },
                      childCount: 9,
                    ),
                  ),
                  'Grid with max cross axis extent of 150.',
                ),
                _buildGridVariation(
                  'Grid with Custom Spacing',
                  SliverGrid(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 20.0,
                      crossAxisSpacing: 10.0,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.center,
                          color: Colors.red[100 * (index % 9 + 1)],
                          child: Text('Item $index'),
                        );
                      },
                      childCount: 12,
                    ),
                  ),
                  'Grid with custom main and cross axis spacing.',
                ),
                _buildGridVariation(
                  'Grid with Different Aspect Ratio',
                  SliverGrid(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2.0,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.center,
                          color: Colors.orange[100 * (index % 9 + 1)],
                          child: Text('Item $index'),
                        );
                      },
                      childCount: 6,
                    ),
                  ),
                  'Grid with a child aspect ratio of 2.0.',
                ),
                _buildGridVariation(
                  'Grid with Different Child Count',
                  SliverGrid(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.center,
                          color: Colors.purple[100 * (index % 9 + 1)],
                          child: Text('Item $index'),
                        );
                      },
                      childCount: 15,
                    ),
                  ),
                  'Grid with a different number of children.',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridVariation(String name, SliverGrid grid, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tooltip(
          message: description,
          child: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 200,
          child: CustomScrollView(
            slivers: [
              grid,
            ],
          ),
        ),
      ],
    );
  }
}
