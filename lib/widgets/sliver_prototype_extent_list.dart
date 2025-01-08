import 'package:flutter/material.dart';

class SliverPrototypeExtentListScreen extends StatelessWidget {
  const SliverPrototypeExtentListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverPrototypeExtentList Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('SliverPrototypeExtentList Variations', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              _buildVariation(
                'SliverPrototypeExtentList - Basic',
                SliverPrototypeExtentList(
                  prototypeItem: Container(
                    height: 50,
                    color: Colors.blue[100],
                    alignment: Alignment.center,
                    child: const Text('Item'),
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => Container(
                      height: 50,
                      color: Colors.blue[100 * ((index % 8) + 1)],
                      alignment: Alignment.center,
                      child: Text('Item $index'),
                    ),
                    childCount: 10,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildVariation(
                'SliverPrototypeExtentList - Different Height',
                SliverPrototypeExtentList(
                  prototypeItem: Container(
                    height: 80,
                    color: Colors.green[100],
                    alignment: Alignment.center,
                    child: const Text('Item'),
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => Container(
                      height: 80,
                      color: Colors.green[100 * ((index % 8) + 1)],
                      alignment: Alignment.center,
                      child: Text('Item $index'),
                    ),
                    childCount: 10,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildVariation(
                'SliverPrototypeExtentList - With Padding',
                SliverPrototypeExtentList(
                  prototypeItem: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      color: Colors.orange[100],
                      alignment: Alignment.center,
                      child: const Text('Item'),
                    ),
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        color: Colors.orange[100 * ((index % 8) + 1)],
                        alignment: Alignment.center,
                        child: Text('Item $index'),
                      ),
                    ),
                    childCount: 10,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildVariation(
                'SliverPrototypeExtentList - With Different Colors',
                SliverPrototypeExtentList(
                  prototypeItem: Container(
                    height: 50,
                    color: Colors.purple[100],
                    alignment: Alignment.center,
                    child: const Text('Item', style: TextStyle(color: Colors.white)),
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => Container(
                      height: 50,
                      color: Colors.purple[100 * ((index % 8) + 1)],
                      alignment: Alignment.center,
                      child: Text('Item $index', style: const TextStyle(color: Colors.white)),
                    ),
                    childCount: 10,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildVariation(
                'SliverPrototypeExtentList - With Custom Text Style',
                SliverPrototypeExtentList(
                  prototypeItem: Container(
                    height: 50,
                    color: Colors.teal[100],
                    alignment: Alignment.center,
                    child: const Text('Item', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => Container(
                      height: 50,
                      color: Colors.teal[100 * ((index % 8) + 1)],
                      alignment: Alignment.center,
                      child: Text('Item $index', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                    childCount: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVariation(String name, Widget widget) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        SizedBox(
          height: 200,
          child: CustomScrollView(
            slivers: [
              widget,
            ],
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
