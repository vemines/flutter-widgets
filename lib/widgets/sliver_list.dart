import 'package:flutter/material.dart';

class SliverListScreen extends StatelessWidget {
  const SliverListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverList Showcase'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('SliverList Variations',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _buildSliverListVariation(
                  'SliverList',
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
                  'SliverList with different heights',
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          height: 30 + (index * 10),
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
                  'SliverList with custom padding',
                  SliverPadding(
                    padding: const EdgeInsets.all(20),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Container(
                            height: 50,
                            color: Colors.red[100 * (index % 9 + 1)],
                            alignment: Alignment.center,
                            child: Text('Item $index'),
                          );
                        },
                        childCount: 5,
                      ),
                    ),
                  ),
                ),
                _buildSliverListVariation(
                  'SliverList with fixed extent',
                  SliverFixedExtentList(
                    itemExtent: 70.0,
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          color: Colors.orange[100 * (index % 9 + 1)],
                          alignment: Alignment.center,
                          child: Text('Item $index'),
                        );
                      },
                      childCount: 5,
                    ),
                  ),
                ),
                _buildSliverListVariation(
                  'SliverList with Separator',
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Column(
                          children: [
                            Container(
                              height: 50,
                              color: Colors.purple[100 * (index % 9 + 1)],
                              alignment: Alignment.center,
                              child: Text('Item $index'),
                            ),
                            if (index < 4) const Divider(height: 1, color: Colors.black),
                          ],
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

  Widget _buildSliverListVariation(String title, Widget sliverList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
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
