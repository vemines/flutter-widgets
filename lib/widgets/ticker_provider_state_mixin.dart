import 'package:flutter/material.dart';

class TickerProviderStateMixinScreen extends StatelessWidget {
  const TickerProviderStateMixinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TickerProviderStateMixin Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("TickerProviderStateMixin - Usage (Not directly visible)",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text(
                  "TickerProviderStateMixin is a mixin, not a widget. It's used to provide Ticker objects for animations. This example shows a StatefulWidget that uses it."),
              const SizedBox(height: 16),
              const Text("Example StatefulWidget using TickerProviderStateMixin:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _TickerProviderExample(),
            ],
          ),
        ),
      ),
    );
  }
}

class _TickerProviderExample extends StatefulWidget {
  const _TickerProviderExample();

  @override
  _TickerProviderExampleState createState() => _TickerProviderExampleState();
}

class _TickerProviderExampleState extends State<_TickerProviderExample>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 300).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Animation Value: ${_animation.value.toStringAsFixed(0)}"),
        Container(
          width: _animation.value,
          height: _animation.value,
          color: Colors.blue,
        ),
      ],
    );
  }
}
