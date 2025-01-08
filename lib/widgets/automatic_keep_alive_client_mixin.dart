import 'package:flutter/material.dart';

class AutomaticKeepAliveClientMixinScreen extends StatelessWidget {
  const AutomaticKeepAliveClientMixinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AutomaticKeepAliveClientMixin Showcase'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "AutomaticKeepAliveClientMixin is a mixin, not a widget. It's used to keep a stateful widget alive when it's part of a list or other scrollable view. It doesn't have visual properties itself. The following examples show how it might be used in a stateful widget."),
            ),
            _buildExample("Example 1: Basic Stateful Widget with AutomaticKeepAliveClientMixin",
                _ExampleWidget()),
            _buildExample(
                "Example 2: Stateful Widget with AutomaticKeepAliveClientMixin and different text",
                _ExampleWidget(text: "Different Text")),
            _buildExample(
                "Example 3: Stateful Widget with AutomaticKeepAliveClientMixin and a different color",
                _ExampleWidget(color: Colors.green)),
          ],
        ),
      ),
    );
  }

  Widget _buildExample(String title, Widget widget) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          widget,
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class _ExampleWidget extends StatefulWidget {
  final String text;
  final Color color;
  const _ExampleWidget({this.text = "Initial Text", this.color = Colors.blue});

  @override
  _ExampleWidgetState createState() => _ExampleWidgetState();
}

class _ExampleWidgetState extends State<_ExampleWidget> with AutomaticKeepAliveClientMixin {
  int _counter = 0;

  @override
  bool get wantKeepAlive => true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      padding: const EdgeInsets.all(16),
      color: widget.color.withValues(alpha: 255 * 0.2),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(widget.text, style: const TextStyle(fontSize: 16)),
          Text('Counter: $_counter', style: const TextStyle(fontSize: 20)),
          ElevatedButton(
            onPressed: _incrementCounter,
            child: const Text('Increment'),
          ),
        ],
      ),
    );
  }
}
