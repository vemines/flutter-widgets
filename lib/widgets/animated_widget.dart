import 'package:flutter/material.dart';

class AnimatedWidgetScreen extends StatelessWidget {
  const AnimatedWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedWidget Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("AnimatedWidget Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildAnimatedWidgetVariation("Default", AnimatedWidgetExample(),
                      "Default AnimatedWidget with no modifications."),
                  _buildAnimatedWidgetVariation(
                      "Custom Color",
                      AnimatedWidgetExample(color: Colors.blue),
                      "AnimatedWidget with a blue color."),
                  _buildAnimatedWidgetVariation("Custom Size", AnimatedWidgetExample(size: 100),
                      "AnimatedWidget with a larger size."),
                  _buildAnimatedWidgetVariation(
                      "Custom Duration",
                      AnimatedWidgetExample(duration: Duration(seconds: 2)),
                      "AnimatedWidget with a longer animation duration."),
                  _buildAnimatedWidgetVariation(
                      "Custom Curve",
                      AnimatedWidgetExample(curve: Curves.bounceIn),
                      "AnimatedWidget with a bounce-in animation curve."),
                  _buildAnimatedWidgetVariation(
                      "Custom Child",
                      AnimatedWidgetExample(child: Icon(Icons.star, size: 30, color: Colors.white)),
                      "AnimatedWidget with a custom child widget."),
                  _buildAnimatedWidgetVariation(
                      "Custom Border Radius",
                      AnimatedWidgetExample(borderRadius: BorderRadius.circular(20)),
                      "AnimatedWidget with a custom border radius."),
                  _buildAnimatedWidgetVariation(
                      "Custom Padding",
                      AnimatedWidgetExample(padding: EdgeInsets.all(20)),
                      "AnimatedWidget with custom padding."),
                  _buildAnimatedWidgetVariation(
                      "Custom Margin",
                      AnimatedWidgetExample(margin: EdgeInsets.all(20)),
                      "AnimatedWidget with custom margin."),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedWidgetVariation(String name, Widget widget, String description) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(
          message: description,
          child: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        const SizedBox(height: 8),
        widget,
      ],
    );
  }
}

class AnimatedWidgetExample extends StatefulWidget {
  final Color? color;
  final double? size;
  final Duration? duration;
  final Curve? curve;
  final Widget? child;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  const AnimatedWidgetExample({
    super.key,
    this.color,
    this.size,
    this.duration,
    this.curve,
    this.child,
    this.borderRadius,
    this.padding,
    this.margin,
  });

  @override
  AnimatedWidgetExampleState createState() => AnimatedWidgetExampleState();
}

class AnimatedWidgetExampleState extends State<AnimatedWidgetExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration ?? const Duration(seconds: 1),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: widget.curve ?? Curves.linear),
    );
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Container(
          margin: widget.margin,
          padding: widget.padding,
          decoration: BoxDecoration(
            color: widget.color ?? Colors.red,
            borderRadius: widget.borderRadius,
          ),
          width: widget.size ?? 50,
          height: widget.size ?? 50,
          alignment: Alignment.center,
          child: Transform.scale(
            scale: 1 + _animation.value * 0.2,
            child: widget.child ??
                const Text("A", style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
        );
      },
    );
  }
}
