import 'package:flutter/material.dart';

class RenderObjectWidgetScreen extends StatelessWidget {
  const RenderObjectWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RenderObjectWidget Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RenderObjectWidget - Default",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Tooltip(
                message: "Default RenderObjectWidget",
                child: const RenderObjectWidgetExample(),
              ),
              const SizedBox(height: 20),
              const Text("RenderObjectWidget - With Container",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Tooltip(
                message: "RenderObjectWidget wrapping a Container",
                child: RenderObjectWidgetExample(
                  child: Container(
                    color: Colors.lightBlue,
                    padding: const EdgeInsets.all(10),
                    child: const Text("Wrapped Content"),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderObjectWidget - With Custom Size",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Tooltip(
                message: "RenderObjectWidget with custom size",
                child: SizedBox(
                  width: 200,
                  height: 100,
                  child: RenderObjectWidgetExample(
                    child: Container(
                      color: Colors.green.shade200,
                      alignment: Alignment.center,
                      child: const Text("Custom Size"),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderObjectWidget - With Padding",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Tooltip(
                message: "RenderObjectWidget with padding",
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: RenderObjectWidgetExample(
                    child: Container(
                      color: Colors.orange.shade200,
                      alignment: Alignment.center,
                      child: const Text("With Padding"),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderObjectWidget - With Margin",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Tooltip(
                message: "RenderObjectWidget with margin",
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: RenderObjectWidgetExample(
                    child: Container(
                      color: Colors.purple.shade200,
                      alignment: Alignment.center,
                      child: const Text("With Margin"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RenderObjectWidgetExample extends SingleChildRenderObjectWidget {
  const RenderObjectWidgetExample({super.key, super.child});

  @override
  RenderObject createRenderObject(BuildContext context) {
    return MyRenderObject();
  }
  @override
  void updateRenderObject(BuildContext context, MyRenderObject renderObject) {
    renderObject.markNeedsLayout();
  }
}

class MyRenderObject extends RenderBox {
  @override
  void performLayout() {
    size = constraints.biggest;
    if (child != null) {
      child!.layout(constraints, parentUsesSize: true);
    }
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final canvas = context.canvas;
    final rect = offset & size;
    final paint = Paint()..color = Colors.red;
    canvas.drawRect(rect, paint);
    if (child != null) {
      context.paintChild(child!, offset);
    }
  }
}
