import 'package:flutter/material.dart';

class MultiChildRenderObjectWidgetScreen extends StatelessWidget {
  const MultiChildRenderObjectWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MultiChildRenderObjectWidget Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Flow - Default"),
              SizedBox(
                height: 100,
                child: Flow(
                  delegate: TestFlowDelegate(),
                  children: [
                    Container(width: 50, height: 50, color: Colors.red),
                    Container(width: 50, height: 50, color: Colors.green),
                    Container(width: 50, height: 50, color: Colors.blue),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("Flow - Different Spacing"),
              SizedBox(
                height: 100,
                child: Flow(
                  delegate: TestFlowDelegate(spacing: 20),
                  children: [
                    Container(width: 50, height: 50, color: Colors.orange),
                    Container(width: 50, height: 50, color: Colors.purple),
                    Container(width: 50, height: 50, color: Colors.teal),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("Flow - Different Size Children"),
              SizedBox(
                height: 100,
                child: Flow(
                  delegate: TestFlowDelegate(),
                  children: [
                    Container(width: 30, height: 30, color: Colors.yellow),
                    Container(width: 60, height: 60, color: Colors.brown),
                    Container(width: 90, height: 90, color: Colors.pink),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("Flow - With Overflow"),
              SizedBox(
                height: 100,
                child: Flow(
                  delegate: TestFlowDelegate(),
                  children: [
                    Container(width: 100, height: 100, color: Colors.grey),
                    Container(width: 100, height: 100, color: Colors.lime),
                    Container(width: 100, height: 100, color: Colors.indigo),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("Flow - With Alignment"),
              SizedBox(
                height: 150,
                child: Flow(
                  delegate: TestFlowDelegate(alignment: Alignment.bottomRight),
                  children: [
                    Container(width: 50, height: 50, color: Colors.cyan),
                    Container(width: 50, height: 50, color: Colors.amber),
                    Container(width: 50, height: 50, color: Colors.deepOrange),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TestFlowDelegate extends FlowDelegate {
  final double spacing;
  final Alignment alignment;

  TestFlowDelegate({this.spacing = 0, this.alignment = Alignment.topLeft});

  @override
  void paintChildren(FlowPaintingContext context) {
    double x = 0;
    double y = 0;
    double maxChildHeight = 0;
    for (int i = 0; i < context.childCount; i++) {
      final childSize = context.getChildSize(i)!;
      final childX = x;
      final childY = y;
      context.paintChild(i, transform: Matrix4.translationValues(childX, childY, 0));
      x += childSize.width + spacing;
      maxChildHeight = childSize.height > maxChildHeight ? childSize.height : maxChildHeight;
      if (x > context.size.width) {
        x = 0;
        y += maxChildHeight + spacing;
        maxChildHeight = 0;
      }
    }
    if (alignment != Alignment.topLeft) {
      double contentWidth = 0;
      double contentHeight = 0;
      x = 0;
      y = 0;
      maxChildHeight = 0;
      for (int i = 0; i < context.childCount; i++) {
        final childSize = context.getChildSize(i)!;
        x += childSize.width + spacing;
        maxChildHeight = childSize.height > maxChildHeight ? childSize.height : maxChildHeight;
        if (x > context.size.width) {
          contentWidth = context.size.width;
          x = 0;
          y += maxChildHeight + spacing;
          maxChildHeight = 0;
        }
      }
      if(x > 0) {
        contentWidth = x - spacing;
      }
      contentHeight = y + maxChildHeight;
      final totalWidth = context.size.width;
      final totalHeight = context.size.height;
      final offsetX = alignment.x * (totalWidth - contentWidth) / 2;
      final offsetY = alignment.y * (totalHeight - contentHeight) / 2;
      x = 0;
      y = 0;
      maxChildHeight = 0;
      for (int i = 0; i < context.childCount; i++) {
        final childSize = context.getChildSize(i)!;
        final childX = x;
        final childY = y;
        context.paintChild(i, transform: Matrix4.translationValues(childX + offsetX, childY + offsetY, 0));
        x += childSize.width + spacing;
        maxChildHeight = childSize.height > maxChildHeight ? childSize.height : maxChildHeight;
        if (x > context.size.width) {
          x = 0;
          y += maxChildHeight + spacing;
          maxChildHeight = 0;
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return oldDelegate.spacing != spacing || oldDelegate.alignment != alignment;
  }
}
