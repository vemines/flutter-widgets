import 'package:flutter/material.dart';

class SliverChildBuilderDelegateScreen extends StatelessWidget {
  const SliverChildBuilderDelegateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverChildBuilderDelegate Showcase'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("SliverChildBuilderDelegate Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _buildDelegateVariation(
                  "Default Delegate",
                  SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        color: Colors.blue[100 * (index % 9 + 1)],
                        alignment: Alignment.center,
                        child: Text('Item $index'),
                      );
                    },
                    childCount: 10,
                  ),
                  "Default SliverChildBuilderDelegate with 10 items.",
                ),
                _buildDelegateVariation(
                  "Delegate with Infinite Items",
                  SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        color: Colors.green[100 * (index % 9 + 1)],
                        alignment: Alignment.center,
                        child: Text('Item $index'),
                      );
                    },
                  ),
                  "SliverChildBuilderDelegate with infinite items (scrollable).",
                ),
                _buildDelegateVariation(
                  "Delegate with Add AutomaticKeepAlives",
                  SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        color: Colors.red[100 * (index % 9 + 1)],
                        alignment: Alignment.center,
                        child: Text('Item $index'),
                      );
                    },
                    childCount: 5,
                    addAutomaticKeepAlives: true,
                  ),
                  "SliverChildBuilderDelegate with automatic keep alives.",
                ),
                _buildDelegateVariation(
                  "Delegate with Add RepaintBoundaries",
                  SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        color: Colors.orange[100 * (index % 9 + 1)],
                        alignment: Alignment.center,
                        child: Text('Item $index'),
                      );
                    },
                    childCount: 5,
                    addRepaintBoundaries: true,
                  ),
                  "SliverChildBuilderDelegate with repaint boundaries.",
                ),
                _buildDelegateVariation(
                  "Delegate with Add SemanticIndexes",
                  SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        color: Colors.purple[100 * (index % 9 + 1)],
                        alignment: Alignment.center,
                        child: Text('Item $index'),
                      );
                    },
                    childCount: 5,
                    addSemanticIndexes: true,
                  ),
                  "SliverChildBuilderDelegate with semantic indexes.",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDelegateVariation(String title, SliverChildBuilderDelegate delegate, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tooltip(
          message: description,
          child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 200,
          child: CustomScrollView(
            slivers: [
              SliverList(delegate: delegate),
            ],
          ),
        ),
      ],
    );
  }
}
