import 'package:flutter/material.dart';

class AnimatedListScreen extends StatelessWidget {
  const AnimatedListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedList Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("AnimatedList - Example", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: _buildAnimatedListBasic(),
              ),
              SizedBox(height: 20),
              Text("AnimatedList - With Custom Animation",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: _buildAnimatedListCustomAnimation(),
              ),
              SizedBox(height: 20),
              Text("AnimatedList - With Different Item Heights",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: _buildAnimatedListDifferentHeights(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedListBasic() {
    final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
    List<String> items = ['Item 1', 'Item 2', 'Item 3'];

    void addItem() {
      final newIndex = items.length;
      items.add('Item ${newIndex + 1}');
      listKey.currentState?.insertItem(newIndex);
    }

    void removeItem(int index) {
      final removedItem = items.removeAt(index);
      listKey.currentState?.removeItem(
        index,
        (context, animation) => SizeTransition(
          sizeFactor: animation,
          child: Card(
            margin: EdgeInsets.all(4),
            color: Colors.red.shade100,
            child: ListTile(
              title: Text(removedItem),
            ),
          ),
        ),
        duration: const Duration(milliseconds: 300),
      );
    }

    return Column(
      children: [
        ElevatedButton(onPressed: addItem, child: Text("Add Item")),
        Expanded(
          child: AnimatedList(
            key: listKey,
            initialItemCount: items.length,
            itemBuilder: (context, index, animation) {
              return SizeTransition(
                sizeFactor: animation,
                child: Card(
                  margin: EdgeInsets.all(4),
                  child: ListTile(
                    title: Text(items[index]),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () => removeItem(index),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildAnimatedListCustomAnimation() {
    final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
    List<String> items = ['Item A', 'Item B', 'Item C'];

    void addItem() {
      final newIndex = items.length;
      items.add('Item ${String.fromCharCode(65 + newIndex)}');
      listKey.currentState?.insertItem(newIndex, duration: const Duration(milliseconds: 500));
    }

    void removeItem(int index) {
      final removedItem = items.removeAt(index);
      listKey.currentState?.removeItem(
        index,
        (context, animation) => FadeTransition(
          opacity: animation,
          child: Card(
            margin: EdgeInsets.all(4),
            color: Colors.orange.shade100,
            child: ListTile(
              title: Text(removedItem),
            ),
          ),
        ),
        duration: const Duration(milliseconds: 500),
      );
    }

    return Column(
      children: [
        ElevatedButton(onPressed: addItem, child: Text("Add Item")),
        Expanded(
          child: AnimatedList(
            key: listKey,
            initialItemCount: items.length,
            itemBuilder: (context, index, animation) {
              return FadeTransition(
                opacity: animation,
                child: Card(
                  margin: EdgeInsets.all(4),
                  child: ListTile(
                    title: Text(items[index]),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () => removeItem(index),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildAnimatedListDifferentHeights() {
    final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
    List<double> itemHeights = [50.0, 80.0, 60.0];
    List<String> items = ['Item X', 'Item Y', 'Item Z'];

    void addItem() {
      final newIndex = items.length;
      items.add('Item ${String.fromCharCode(88 + newIndex)}');
      itemHeights.add(50.0 + (newIndex * 10.0));
      listKey.currentState?.insertItem(newIndex, duration: const Duration(milliseconds: 400));
    }

    void removeItem(int index) {
      final removedItem = items.removeAt(index);
      itemHeights.removeAt(index);
      listKey.currentState?.removeItem(
        index,
        (context, animation) => SizeTransition(
          sizeFactor: animation,
          child: Card(
            margin: EdgeInsets.all(4),
            color: Colors.green.shade100,
            child: ListTile(
              title: Text(removedItem),
            ),
          ),
        ),
        duration: const Duration(milliseconds: 400),
      );
    }

    return Column(
      children: [
        ElevatedButton(onPressed: addItem, child: Text("Add Item")),
        Expanded(
          child: AnimatedList(
            key: listKey,
            initialItemCount: items.length,
            itemBuilder: (context, index, animation) {
              return SizeTransition(
                sizeFactor: animation,
                child: Card(
                  margin: EdgeInsets.all(4),
                  child: SizedBox(
                    height: itemHeights[index],
                    child: ListTile(
                      title: Text(items[index]),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => removeItem(index),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
