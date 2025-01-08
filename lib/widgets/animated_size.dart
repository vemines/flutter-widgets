import 'package:flutter/material.dart';

class AnimatedSizeScreen extends StatelessWidget {
  const AnimatedSizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedSize Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("AnimatedSize Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("AnimatedSize - Basic Example", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              _AnimatedSizeExample(),
              const SizedBox(height: 20),
              const Text("AnimatedSize - With Container", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              _AnimatedSizeWithContainer(),
              const SizedBox(height: 20),
              const Text("AnimatedSize - Different Duration", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              _AnimatedSizeDuration(),
              const SizedBox(height: 20),
              const Text("AnimatedSize - Different Curve", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              _AnimatedSizeCurve(),
              const SizedBox(height: 20),
              const Text("AnimatedSize - Different Alignment", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              _AnimatedSizeAlignment(),
            ],
          ),
        ),
      ),
    );
  }
}

class _AnimatedSizeExample extends StatefulWidget {
  @override
  _AnimatedSizeExampleState createState() => _AnimatedSizeExampleState();
}

class _AnimatedSizeExampleState extends State<_AnimatedSizeExample> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: const Text("Toggle Size"),
        ),
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          child: Container(
            height: _isExpanded ? 100 : 50,
            width: 100,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}

class _AnimatedSizeWithContainer extends StatefulWidget {
  @override
  _AnimatedSizeWithContainerState createState() => _AnimatedSizeWithContainerState();
}

class _AnimatedSizeWithContainerState extends State<_AnimatedSizeWithContainer> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: const Text("Toggle Size"),
        ),
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          child: Container(
            height: _isExpanded ? 150 : 75,
            width: 150,
            color: Colors.green,
            child: const Center(child: Text("Content", style: TextStyle(color: Colors.white))),
          ),
        ),
      ],
    );
  }
}

class _AnimatedSizeDuration extends StatefulWidget {
  @override
  _AnimatedSizeDurationState createState() => _AnimatedSizeDurationState();
}

class _AnimatedSizeDurationState extends State<_AnimatedSizeDuration> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: const Text("Toggle Size"),
        ),
        AnimatedSize(
          duration: const Duration(seconds: 1),
          child: Container(
            height: _isExpanded ? 100 : 50,
            width: 100,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}

class _AnimatedSizeCurve extends StatefulWidget {
  @override
  _AnimatedSizeCurveState createState() => _AnimatedSizeCurveState();
}

class _AnimatedSizeCurveState extends State<_AnimatedSizeCurve> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: const Text("Toggle Size"),
        ),
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          curve: Curves.bounceInOut,
          child: Container(
            height: _isExpanded ? 100 : 50,
            width: 100,
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}

class _AnimatedSizeAlignment extends StatefulWidget {
  @override
  _AnimatedSizeAlignmentState createState() => _AnimatedSizeAlignmentState();
}

class _AnimatedSizeAlignmentState extends State<_AnimatedSizeAlignment> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: const Text("Toggle Size"),
        ),
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          alignment: Alignment.bottomRight,
          child: Container(
            height: _isExpanded ? 100 : 50,
            width: 100,
            color: Colors.purple,
          ),
        ),
      ],
    );
  }
}
