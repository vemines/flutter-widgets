import 'package:flutter/material.dart';

class RenderAnnotatedRegionScreen extends StatelessWidget {
  const RenderAnnotatedRegionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RenderAnnotatedRegion Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RenderAnnotatedRegion Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              const Text("RenderAnnotatedRegion - Default"),
              const SizedBox(height: 8),
              const RenderAnnotatedRegion(
                child: Text("Default Text"),
              ),
              const SizedBox(height: 16),
              const Text("RenderAnnotatedRegion - Red Background"),
              const SizedBox(height: 8),
              RenderAnnotatedRegion(
                background: Colors.red,
                child: const Text("Red Background Text"),
              ),
              const SizedBox(height: 16),
              const Text("RenderAnnotatedRegion - Blue Text"),
              const SizedBox(height: 8),
              RenderAnnotatedRegion(
                textStyle: const TextStyle(color: Colors.blue),
                child: const Text("Blue Text"),
              ),
              const SizedBox(height: 16),
              const Text("RenderAnnotatedRegion - Larger Padding"),
              const SizedBox(height: 8),
              RenderAnnotatedRegion(
                padding: const EdgeInsets.all(20),
                child: const Text("Larger Padding Text"),
              ),
              const SizedBox(height: 16),
              const Text("RenderAnnotatedRegion - Custom Border Radius"),
              const SizedBox(height: 8),
              RenderAnnotatedRegion(
                borderRadius: BorderRadius.circular(15),
                child: const Text("Custom Border Radius Text"),
              ),
              const SizedBox(height: 16),
              const Text("RenderAnnotatedRegion - With Container"),
              const SizedBox(height: 8),
              RenderAnnotatedRegion(
                child: Container(
                  color: Colors.yellow.withValues(alpha: 255 * 0.5),
                  padding: const EdgeInsets.all(10),
                  child: const Text("Wrapped in Container"),
                ),
              ),
              const SizedBox(height: 16),
              const Text("RenderAnnotatedRegion - With Text Style"),
              const SizedBox(height: 8),
              RenderAnnotatedRegion(
                textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                child: const Text("Styled Text"),
              ),
              const SizedBox(height: 16),
              const Text("RenderAnnotatedRegion - With Alignment"),
              const SizedBox(height: 8),
              RenderAnnotatedRegion(
                alignment: Alignment.centerRight,
                child: const Text("Aligned Right"),
              ),
              const SizedBox(height: 16),
              const Text("RenderAnnotatedRegion - With Margin"),
              const SizedBox(height: 8),
              RenderAnnotatedRegion(
                margin: const EdgeInsets.all(20),
                child: const Text("Margin Text"),
              ),
              const SizedBox(height: 16),
              const Text("RenderAnnotatedRegion - With Border"),
              const SizedBox(height: 8),
              RenderAnnotatedRegion(
                border: Border.all(color: Colors.green, width: 2),
                child: const Text("Border Text"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RenderAnnotatedRegion extends StatelessWidget {
  final Widget child;
  final Color? background;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? margin;
  final Border? border;

  const RenderAnnotatedRegion({
    super.key,
    required this.child,
    this.background,
    this.textStyle,
    this.padding,
    this.borderRadius,
    this.alignment,
    this.margin,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: background,
        borderRadius: borderRadius,
        border: border,
      ),
      alignment: alignment,
      child: DefaultTextStyle(
        style: textStyle ?? DefaultTextStyle.of(context).style,
        child: child,
      ),
    );
  }
}
