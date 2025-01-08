import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MultiChildRenderObjectElementScreen extends StatelessWidget {
  const MultiChildRenderObjectElementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MultiChildRenderObjectElement Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CustomMultiChildRenderObject - Default"),
              const SizedBox(height: 8),
              CustomMultiChildRenderObject(
                children: [
                  Container(width: 50, height: 50, color: Colors.red),
                  Container(width: 70, height: 70, color: Colors.green),
                  Container(width: 30, height: 30, color: Colors.blue),
                ],
              ),
              const SizedBox(height: 20),
              const Text("CustomMultiChildRenderObject - Spaced"),
              const SizedBox(height: 8),
              CustomMultiChildRenderObject(
                spacing: 20,
                children: [
                  Container(width: 50, height: 50, color: Colors.orange),
                  Container(width: 70, height: 70, color: Colors.purple),
                  Container(width: 30, height: 30, color: Colors.cyan),
                ],
              ),
              const SizedBox(height: 20),
              const Text("CustomMultiChildRenderObject - Different Sizes"),
              const SizedBox(height: 8),
              CustomMultiChildRenderObject(
                children: [
                  Container(width: 20, height: 80, color: Colors.pink),
                  Container(width: 100, height: 30, color: Colors.lime),
                  Container(width: 60, height: 60, color: Colors.teal),
                ],
              ),
              const SizedBox(height: 20),
              const Text("CustomMultiChildRenderObject - Aligned"),
              const SizedBox(height: 8),
              CustomMultiChildRenderObject(
                alignment: Alignment.bottomRight,
                children: [
                  Container(width: 50, height: 50, color: Colors.brown),
                  Container(width: 70, height: 70, color: Colors.grey),
                  Container(width: 30, height: 30, color: Colors.indigo),
                ],
              ),
              const SizedBox(height: 20),
              const Text("CustomMultiChildRenderObject - With Padding"),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(10),
                child: CustomMultiChildRenderObject(
                  children: [
                    Container(width: 50, height: 50, color: Colors.amber),
                    Container(width: 70, height: 70, color: Colors.deepOrange),
                    Container(width: 30, height: 30, color: Colors.deepPurple),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("CustomMultiChildRenderObject - With Margin"),
              const SizedBox(height: 8),
              Container(
                margin: const EdgeInsets.all(10),
                child: CustomMultiChildRenderObject(
                  children: [
                    Container(width: 50, height: 50, color: Colors.lightGreen),
                    Container(width: 70, height: 70, color: Colors.lightBlue),
                    Container(width: 30, height: 30, color: Colors.lightGreenAccent),
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

class CustomMultiChildRenderObject extends MultiChildRenderObjectWidget {
  final double spacing;
  final Alignment alignment;

  const CustomMultiChildRenderObject({
    super.key,
    this.spacing = 0,
    this.alignment = Alignment.topLeft,
    required super.children,
  });

  @override
  RenderCustomMultiChildObject createRenderObject(BuildContext context) {
    return RenderCustomMultiChildObject(spacing: spacing, alignment: alignment);
  }

  @override
  void updateRenderObject(BuildContext context, RenderCustomMultiChildObject renderObject) {
    renderObject.spacing = spacing;
    renderObject.alignment = alignment;
  }
}

class RenderCustomMultiChildObject extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, MultiChildLayoutParentData>,
        RenderBoxContainerDefaultsMixin<RenderBox, MultiChildLayoutParentData> {
  double _spacing;
  Alignment _alignment;

  RenderCustomMultiChildObject({double spacing = 0, Alignment alignment = Alignment.topLeft})
      : _spacing = spacing,
        _alignment = alignment;

  double get spacing => _spacing;
  set spacing(double value) {
    if (_spacing == value) return;
    _spacing = value;
    markNeedsLayout();
  }

  Alignment get alignment => _alignment;
  set alignment(Alignment value) {
    if (_alignment == value) return;
    _alignment = value;
    markNeedsLayout();
  }

  @override
  void setupParentData(RenderBox child) {
    if (child.parentData is! MultiChildLayoutParentData) {
      child.parentData = MultiChildLayoutParentData();
    }
  }

  @override
  Size computeDryLayout(BoxConstraints constraints) {
    double width = 0;
    double height = 0;
    RenderBox? child = firstChild;
    while (child != null) {
      final Size childSize = child.getDryLayout(constraints);
      width = width + childSize.width;
      height = height > childSize.height ? height : childSize.height;
      child = childAfter(child);
    }
    width = width + (childCount - 1) * spacing;
    return constraints.constrain(Size(width, height));
  }

  @override
  void performLayout() {
    double width = 0;
    double height = 0;
    RenderBox? child = firstChild;
    while (child != null) {
      final Size childSize = child.getDryLayout(constraints);
      width = width + childSize.width;
      height = height > childSize.height ? height : childSize.height;
      child = childAfter(child);
    }
    width = width + (childCount - 1) * spacing;
    size = constraints.constrain(Size(width, height));

    double currentX = 0;
    child = firstChild;
    while (child != null) {
      final MultiChildLayoutParentData childParentData =
          child.parentData as MultiChildLayoutParentData;
      final Size childSize = child.getDryLayout(constraints);
      childParentData.offset = Offset(
          currentX, alignment.resolve(TextDirection.ltr).y * (size.height - childSize.height));
      child.layout(constraints, parentUsesSize: true);
      currentX = currentX + childSize.width + spacing;
      child = childAfter(child);
    }
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    defaultPaint(context, offset);
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    return defaultHitTestChildren(result, position: position);
  }
}
