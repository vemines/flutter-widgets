import 'package:flutter/material.dart';

class SliverFixedExtentListScreen extends StatelessWidget {
  const SliverFixedExtentListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverFixedExtentList Showcase'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('SliverFixedExtentList Variations', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _buildSliverFixedExtentListVariation(
                  'Default',
                  SliverFixedExtentList(
                    itemExtent: 50.0,
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.center,
                          color: Colors.lightBlue[100 * (index % 9 + 1)],
                          child: Text('Item $index'),
                        );
                      },
                      childCount: 5,
                    ),
                  ),
                  'Default SliverFixedExtentList with light blue colors',
                ),
                _buildSliverFixedExtentListVariation(
                  'Item Extent 80',
                  SliverFixedExtentList(
                    itemExtent: 80.0,
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.center,
                          color: Colors.green[100 * (index % 9 + 1)],
                          child: Text('Item $index'),
                        );
                      },
                      childCount: 5,
                    ),
                  ),
                  'SliverFixedExtentList with itemExtent 80 and green colors',
                ),
                _buildSliverFixedExtentListVariation(
                  'Item Extent 30',
                  SliverFixedExtentList(
                    itemExtent: 30.0,
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.center,
                          color: Colors.orange[100 * (index % 9 + 1)],
                          child: Text('Item $index'),
                        );
                      },
                      childCount: 5,
                    ),
                  ),
                  'SliverFixedExtentList with itemExtent 30 and orange colors',
                ),
                _buildSliverFixedExtentListVariation(
                  'Custom Delegate',
                  SliverFixedExtentList(
                    itemExtent: 60.0,
                    delegate: SliverChildListDelegate(
                      [
                        Container(
                          alignment: Alignment.center,
                          color: Colors.red[200],
                          child: const Text('Item 1'),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.red[300],
                          child: const Text('Item 2'),
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.red[400],
                          child: const Text('Item 3'),
                        ),
                      ],
                    ),
                  ),
                  'SliverFixedExtentList with custom SliverChildListDelegate and red colors',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSliverFixedExtentListVariation(String name, SliverFixedExtentList sliverList, String description) {
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
              sliverList,
            ],
          ),
        ),
      ],
    );
  }
}
