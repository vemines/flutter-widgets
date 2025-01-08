import 'package:flutter/material.dart';

class AnimatedListStateScreen extends StatelessWidget {
  const AnimatedListStateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedListState Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("AnimatedListState Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              _buildAnimatedListStateVariation(
                "Basic AnimatedListState",
                _BasicAnimatedListState(),
                "A basic AnimatedListState with default settings.",
              ),
              const SizedBox(height: 20),
              _buildAnimatedListStateVariation(
                "AnimatedListState with Custom Animation",
                _CustomAnimationAnimatedListState(),
                "AnimatedListState with a custom animation for item insertion and removal.",
              ),
              const SizedBox(height: 20),
              _buildAnimatedListStateVariation(
                "AnimatedListState with Different Item Size",
                _DifferentSizeAnimatedListState(),
                "AnimatedListState with items of varying sizes.",
              ),
              const SizedBox(height: 20),
              _buildAnimatedListStateVariation(
                "AnimatedListState with Initial Items",
                _InitialItemsAnimatedListState(),
                "AnimatedListState with initial items.",
              ),
              const SizedBox(height: 20),
              _buildAnimatedListStateVariation(
                "AnimatedListState with Global Key",
                _GlobalKeyAnimatedListState(),
                "AnimatedListState with a global key for external manipulation.",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedListStateVariation(String title, Widget widget, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        Tooltip(message: description, child: const Icon(Icons.info_outline, size: 16)),
        const SizedBox(height: 8),
        widget,
        const SizedBox(height: 16),
      ],
    );
  }
}

class _BasicAnimatedListState extends StatefulWidget {
  @override
  _BasicAnimatedListStateState createState() => _BasicAnimatedListStateState();
}

class _BasicAnimatedListStateState extends State<_BasicAnimatedListState> {
  final _listKey = GlobalKey<AnimatedListState>();
  final _items = [];

  void _addItem() {
    _items.insert(0, 'Item ${_items.length + 1}');
    _listKey.currentState?.insertItem(0, duration: const Duration(milliseconds: 300));
  }

  void _removeItem(int index) {
    final removedItem = _items.removeAt(index);
    _listKey.currentState?.removeItem(
      index,
      (context, animation) => SizeTransition(
        sizeFactor: animation,
        child: Card(
          margin: const EdgeInsets.all(4),
          child: ListTile(
            title: Text(removedItem),
          ),
        ),
      ),
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: _addItem, child: const Text("Add Item")),
        SizedBox(
          height: 200,
          child: AnimatedList(
            key: _listKey,
            initialItemCount: _items.length,
            itemBuilder: (context, index, animation) {
              return SizeTransition(
                sizeFactor: animation,
                child: Card(
                  margin: const EdgeInsets.all(4),
                  child: ListTile(
                    title: Text(_items[index]),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => _removeItem(index),
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

class _CustomAnimationAnimatedListState extends StatefulWidget {
  @override
  _CustomAnimationAnimatedListStateState createState() => _CustomAnimationAnimatedListStateState();
}

class _CustomAnimationAnimatedListStateState extends State<_CustomAnimationAnimatedListState> {
  final _listKey = GlobalKey<AnimatedListState>();
  final _items = [];

  void _addItem() {
    _items.insert(0, 'Item ${_items.length + 1}');
    _listKey.currentState?.insertItem(0, duration: const Duration(milliseconds: 500));
  }

  void _removeItem(int index) {
    final removedItem = _items.removeAt(index);
    _listKey.currentState?.removeItem(
      index,
      (context, animation) => FadeTransition(
        opacity: animation,
        child: Card(
          margin: const EdgeInsets.all(4),
          child: ListTile(
            title: Text(removedItem),
          ),
        ),
      ),
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: _addItem, child: const Text("Add Item")),
        SizedBox(
          height: 200,
          child: AnimatedList(
            key: _listKey,
            initialItemCount: _items.length,
            itemBuilder: (context, index, animation) {
              return FadeTransition(
                opacity: animation,
                child: Card(
                  margin: const EdgeInsets.all(4),
                  child: ListTile(
                    title: Text(_items[index]),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => _removeItem(index),
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

class _DifferentSizeAnimatedListState extends StatefulWidget {
  @override
  _DifferentSizeAnimatedListStateState createState() => _DifferentSizeAnimatedListStateState();
}

class _DifferentSizeAnimatedListStateState extends State<_DifferentSizeAnimatedListState> {
  final _listKey = GlobalKey<AnimatedListState>();
  final _items = [];

  void _addItem() {
    _items.insert(0, 'Item ${_items.length + 1}');
    _listKey.currentState?.insertItem(0, duration: const Duration(milliseconds: 300));
  }

  void _removeItem(int index) {
    final removedItem = _items.removeAt(index);
    _listKey.currentState?.removeItem(
      index,
      (context, animation) => SizeTransition(
        sizeFactor: animation,
        child: Card(
          margin: const EdgeInsets.all(4),
          child: SizedBox(
            height: (index % 2 == 0) ? 50 : 80,
            child: ListTile(
              title: Text(removedItem),
            ),
          ),
        ),
      ),
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: _addItem, child: const Text("Add Item")),
        SizedBox(
          height: 200,
          child: AnimatedList(
            key: _listKey,
            initialItemCount: _items.length,
            itemBuilder: (context, index, animation) {
              return SizeTransition(
                sizeFactor: animation,
                child: Card(
                  margin: const EdgeInsets.all(4),
                  child: SizedBox(
                    height: (index % 2 == 0) ? 50 : 80,
                    child: ListTile(
                      title: Text(_items[index]),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => _removeItem(index),
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

class _InitialItemsAnimatedListState extends StatefulWidget {
  @override
  _InitialItemsAnimatedListStateState createState() => _InitialItemsAnimatedListStateState();
}

class _InitialItemsAnimatedListStateState extends State<_InitialItemsAnimatedListState> {
  final _listKey = GlobalKey<AnimatedListState>();
  final _items = ['Item 1', 'Item 2', 'Item 3'];

  void _addItem() {
    _items.insert(0, 'Item ${_items.length + 1}');
    _listKey.currentState?.insertItem(0, duration: const Duration(milliseconds: 300));
  }

  void _removeItem(int index) {
    final removedItem = _items.removeAt(index);
    _listKey.currentState?.removeItem(
      index,
      (context, animation) => SizeTransition(
        sizeFactor: animation,
        child: Card(
          margin: const EdgeInsets.all(4),
          child: ListTile(
            title: Text(removedItem),
          ),
        ),
      ),
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: _addItem, child: const Text("Add Item")),
        SizedBox(
          height: 200,
          child: AnimatedList(
            key: _listKey,
            initialItemCount: _items.length,
            itemBuilder: (context, index, animation) {
              return SizeTransition(
                sizeFactor: animation,
                child: Card(
                  margin: const EdgeInsets.all(4),
                  child: ListTile(
                    title: Text(_items[index]),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => _removeItem(index),
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

class _GlobalKeyAnimatedListState extends StatefulWidget {
  @override
  _GlobalKeyAnimatedListStateState createState() => _GlobalKeyAnimatedListStateState();
}

class _GlobalKeyAnimatedListStateState extends State<_GlobalKeyAnimatedListState> {
  final _listKey = GlobalKey<AnimatedListState>();
  final _items = [];

  void _addItem() {
    _items.insert(0, 'Item ${_items.length + 1}');
    _listKey.currentState?.insertItem(0, duration: const Duration(milliseconds: 300));
  }

  void _removeItem(int index) {
    final removedItem = _items.removeAt(index);
    _listKey.currentState?.removeItem(
      index,
      (context, animation) => SizeTransition(
        sizeFactor: animation,
        child: Card(
          margin: const EdgeInsets.all(4),
          child: ListTile(
            title: Text(removedItem),
          ),
        ),
      ),
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: _addItem, child: const Text("Add Item")),
        SizedBox(
          height: 200,
          child: AnimatedList(
            key: _listKey,
            initialItemCount: _items.length,
            itemBuilder: (context, index, animation) {
              return SizeTransition(
                sizeFactor: animation,
                child: Card(
                  margin: const EdgeInsets.all(4),
                  child: ListTile(
                    title: Text(_items[index]),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => _removeItem(index),
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
