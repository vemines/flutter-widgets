import 'package:flutter/material.dart';

class SliverAnimatedListScreen extends StatelessWidget {
  const SliverAnimatedListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SliverAnimatedList Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("SliverAnimatedList Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            _buildSliverAnimatedListVariations(),
          ],
        ),
      ),
    );
  }

  Widget _buildSliverAnimatedListVariations() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("SliverAnimatedList",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 200,
          child: _buildBasicSliverAnimatedList(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("SliverAnimatedList with Custom Item Builder",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 200,
          child: _buildCustomItemBuilderSliverAnimatedList(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("SliverAnimatedList with Initial Items",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 200,
          child: _buildInitialItemsSliverAnimatedList(),
        ),
      ],
    );
  }

  Widget _buildBasicSliverAnimatedList() {
    final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
    final List<int> items = [];

    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverAnimatedList(
                key: listKey,
                initialItemCount: items.length,
                itemBuilder: (context, index, animation) {
                  return SizeTransition(
                    sizeFactor: animation,
                    child: Card(
                      margin: EdgeInsets.all(4),
                      child: ListTile(
                        title: Text("Item ${index + 1}"),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            items.insert(0, items.length);
            listKey.currentState?.insertItem(0);
          },
          child: Text("Add Item"),
        ),
      ],
    );
  }

  Widget _buildCustomItemBuilderSliverAnimatedList() {
    final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
    final List<int> items = [];

    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverAnimatedList(
                key: listKey,
                initialItemCount: items.length,
                itemBuilder: (context, index, animation) {
                  return SizeTransition(
                    sizeFactor: animation,
                    child: Container(
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.blue.withValues(alpha: 255 * 0.2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.star, color: Colors.amber),
                        title: Text("Custom Item ${index + 1}",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            items.insert(0, items.length);
            listKey.currentState?.insertItem(0);
          },
          child: Text("Add Custom Item"),
        ),
      ],
    );
  }

  Widget _buildInitialItemsSliverAnimatedList() {
    final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
    final List<int> items = [1, 2, 3];

    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverAnimatedList(
                key: listKey,
                initialItemCount: items.length,
                itemBuilder: (context, index, animation) {
                  return SizeTransition(
                    sizeFactor: animation,
                    child: Card(
                      margin: EdgeInsets.all(4),
                      child: ListTile(
                        title: Text("Initial Item ${items[index]}"),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            items.insert(0, items.length + 1);
            listKey.currentState?.insertItem(0);
          },
          child: Text("Add Initial Item"),
        ),
      ],
    );
  }
}
