import 'package:flutter/material.dart';

class RenderSliverListScreen extends StatelessWidget {
  const RenderSliverListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RenderSliverList Showcase'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('RenderSliverList Variations', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _buildSliverListVariation(
                  'Default RenderSliverList',
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          color: Colors.blue[100 * (index % 9 + 1)],
                          alignment: Alignment.center,
                          child: Text('Item $index'),
                        );
                      },
                      childCount: 5,
                    ),
                  ),
                ),
                _buildSliverListVariation(
                  'RenderSliverList with Custom Item Height',
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          height: 80,
                          color: Colors.green[100 * (index % 9 + 1)],
                          alignment: Alignment.center,
                          child: Text('Item $index'),
                        );
                      },
                      childCount: 5,
                    ),
                  ),
                ),
                _buildSliverListVariation(
                  'RenderSliverList with Different Colors',
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          color: index % 2 == 0 ? Colors.red[200] : Colors.yellow[200],
                          alignment: Alignment.center,
                          child: Text('Item $index'),
                        );
                      },
                      childCount: 5,
                    ),
                  ),
                ),
                _buildSliverListVariation(
                  'RenderSliverList with Custom Item Count',
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          color: Colors.purple[100 * (index % 9 + 1)],
                          alignment: Alignment.center,
                          child: Text('Item $index'),
                        );
                      },
                      childCount: 10,
                    ),
                  ),
                ),
                _buildSliverListVariation(
                  'RenderSliverList with Different Text Styles',
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          color: Colors.orange[100 * (index % 9 + 1)],
                          alignment: Alignment.center,
                          child: Text('Item $index', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        );
                      },
                      childCount: 5,
                    ),
                  ),
                ),
                _buildSliverListVariation(
                  'RenderSliverList with Custom Item Widget',
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          color: Colors.teal[100 * (index % 9 + 1)],
                          alignment: Alignment.center,
                          child: Icon(Icons.star, color: Colors.white),
                        );
                      },
                      childCount: 5,
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

  Widget _buildSliverListVariation(String name, Widget sliverList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(
          height: 200,
          child: CustomScrollView(
            slivers: [
              sliverList,
            ],
          ),
        ),
      ],
    );
  }
}
