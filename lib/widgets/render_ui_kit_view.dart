import 'package:flutter/material.dart';

class RenderUiKitViewScreen extends StatelessWidget {
  const RenderUiKitViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RenderUiKitView Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RenderUiKitView - Basic Usage", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const RenderUiKitView(),
              const SizedBox(height: 20),
              const Text("RenderUiKitView - With Container", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.all(10),
                child: const RenderUiKitView(
                  child: Text("Wrapped Text"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderUiKitView - With Different Background Color", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                color: Colors.blue[100],
                padding: const EdgeInsets.all(10),
                child: const RenderUiKitView(
                  backgroundColor: Colors.blue,
                  child: Text("Blue Background", style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderUiKitView - With Custom Padding", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.all(10),
                child: const RenderUiKitView(
                  padding: EdgeInsets.all(20),
                  child: Text("Custom Padding"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderUiKitView - With Custom Border Radius", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.all(10),
                child: const RenderUiKitView(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Text("Rounded Corners"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderUiKitView - With Custom Border", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.all(10),
                child: const RenderUiKitView(
                  border: Border.fromBorderSide(BorderSide(color: Colors.red, width: 2)),
                  child: Text("Red Border"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderUiKitView - With Custom Width and Height", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.all(10),
                child: const RenderUiKitView(
                  width: 200,
                  height: 100,
                  child: Text("Custom Size"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RenderUiKitView extends StatelessWidget {
  final Widget? child;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final Border? border;
  final double? width;
  final double? height;

  const RenderUiKitView({
    super.key,
    this.child,
    this.backgroundColor,
    this.padding,
    this.borderRadius,
    this.border,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
        border: border,
      ),
      child: child,
    );
  }
}
