import 'package:flutter/material.dart';

class AnimatedSwitcherScreen extends StatelessWidget {
  const AnimatedSwitcherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedSwitcher Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("AnimatedSwitcher - Basic Usage", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Tooltip(message: "Basic AnimatedSwitcher with a Container"),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: Container(
                  key: const ValueKey(1),
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              const Text("AnimatedSwitcher - Changing Child", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Tooltip(message: "AnimatedSwitcher with a button to change the child"),
              _AnimatedSwitcherChangeChild(),
              const SizedBox(height: 20),
              const Text("AnimatedSwitcher - Different Transitions", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Tooltip(message: "AnimatedSwitcher with different transition types"),
              _AnimatedSwitcherTransitions(),
              const SizedBox(height: 20),
              const Text("AnimatedSwitcher - Custom Transition", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Tooltip(message: "AnimatedSwitcher with a custom transition"),
              _AnimatedSwitcherCustomTransition(),
            ],
          ),
        ),
      ),
    );
  }
}

class _AnimatedSwitcherChangeChild extends StatefulWidget {
  @override
  _AnimatedSwitcherChangeChildState createState() => _AnimatedSwitcherChangeChildState();
}

class _AnimatedSwitcherChangeChildState extends State<_AnimatedSwitcherChangeChild> {
  bool _showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: _showFirst
              ? Container(
                  key: const ValueKey(1),
                  width: 100,
                  height: 100,
                  color: Colors.green,
                )
              : Container(
                  key: const ValueKey(2),
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _showFirst = !_showFirst;
            });
          },
          child: const Text('Toggle Child'),
        ),
      ],
    );
  }
}

class _AnimatedSwitcherTransitions extends StatefulWidget {
  @override
  _AnimatedSwitcherTransitionsState createState() => _AnimatedSwitcherTransitionsState();
}

class _AnimatedSwitcherTransitionsState extends State<_AnimatedSwitcherTransitions> {
  int _transitionIndex = 0;
  final List<Widget Function(Widget, Animation<double>)> _transitions = [
    (child, animation) => FadeTransition(opacity: animation, child: child),
    (child, animation) => ScaleTransition(scale: animation, child: child),
    (child, animation) => RotationTransition(turns: animation, child: child),
    (child, animation) => SizeTransition(sizeFactor: animation, axis: Axis.horizontal, child: child),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) => _transitions[_transitionIndex](child, animation),
          child: Container(
            key: ValueKey(_transitionIndex),
            width: 100,
            height: 100,
            color: Colors.orange,
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 8,
          children: List.generate(_transitions.length, (index) => ElevatedButton(
            onPressed: () {
              setState(() {
                _transitionIndex = index;
              });
            },
            child: Text('Transition ${index + 1}'),
          )),
        ),
      ],
    );
  }
}

class _AnimatedSwitcherCustomTransition extends StatefulWidget {
  @override
  _AnimatedSwitcherCustomTransitionState createState() => _AnimatedSwitcherCustomTransitionState();
}

class _AnimatedSwitcherCustomTransitionState extends State<_AnimatedSwitcherCustomTransition> {
  bool _showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (child, animation) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(animation),
              child: FadeTransition(opacity: animation, child: child),
            );
          },
          child: _showFirst
              ? Container(
                  key: const ValueKey(1),
                  width: 100,
                  height: 100,
                  color: Colors.purple,
                )
              : Container(
                  key: const ValueKey(2),
                  width: 100,
                  height: 100,
                  color: Colors.teal,
                ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _showFirst = !_showFirst;
            });
          },
          child: const Text('Toggle Child'),
        ),
      ],
    );
  }
}
