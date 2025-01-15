import 'package:flutter/material.dart';

class AnimatedPositionedScreen extends StatelessWidget {
  const AnimatedPositionedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedPositioned Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("AnimatedPositioned - Example", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              AnimatedPositionedExample(),
              SizedBox(height: 20),
              Text("AnimatedPositioned - Different Duration",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              AnimatedPositionedExample(duration: Duration(seconds: 2)),
              SizedBox(height: 20),
              Text("AnimatedPositioned - Different Curve",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              AnimatedPositionedExample(curve: Curves.bounceOut),
              SizedBox(height: 20),
              Text("AnimatedPositioned - Different Top and Left",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              AnimatedPositionedExample(top: 100, left: 100),
              SizedBox(height: 20),
              Text("AnimatedPositioned - Different Width and Height",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              AnimatedPositionedExample(width: 150, height: 150),
              SizedBox(height: 20),
              Text("AnimatedPositioned - With Container",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              AnimatedPositionedWithContainer(),
              SizedBox(height: 20),
              // AnimatedPositioned without a child is not valid, so we don't show it
              // Text("AnimatedPositioned - No Child (Invalid)", style: TextStyle(fontWeight: FontWeight.bold)),
              // SizedBox(height: 8),
              // AnimatedPositionedExample(child: null),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimatedPositionedExample extends StatefulWidget {
  final Duration duration;
  final Curve curve;
  final double? top;
  final double? left;
  final double? width;
  final double? height;

  const AnimatedPositionedExample({
    super.key,
    this.duration = const Duration(milliseconds: 500),
    this.curve = Curves.linear,
    this.top,
    this.left,
    this.width,
    this.height,
  });

  @override
  AnimatedPositionedExampleState createState() => AnimatedPositionedExampleState();
}

class AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selected = !_selected;
        });
      },
      child: Container(
        width: 200,
        height: 200,
        color: Colors.grey[300],
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: widget.duration,
              curve: widget.curve,
              top: _selected ? (widget.top ?? 50) : 10,
              left: _selected ? (widget.left ?? 50) : 10,
              width: widget.width ?? 50,
              height: widget.height ?? 50,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedPositionedWithContainer extends StatefulWidget {
  const AnimatedPositionedWithContainer({super.key});

  @override
  AnimatedPositionedWithContainerState createState() => AnimatedPositionedWithContainerState();
}

class AnimatedPositionedWithContainerState extends State<AnimatedPositionedWithContainer> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selected = !_selected;
        });
      },
      child: Container(
        width: 200,
        height: 200,
        color: Colors.grey[300],
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              curve: Curves.linear,
              top: _selected ? 50 : 10,
              left: _selected ? 50 : 10,
              width: 100,
              height: 100,
              child: Container(
                color: Colors.green,
                child: Center(child: Text("Hello", style: TextStyle(color: Colors.white))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
