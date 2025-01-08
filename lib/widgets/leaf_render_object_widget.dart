import 'package:flutter/material.dart';

class LeafRenderObjectWidgetScreen extends StatelessWidget {
  const LeafRenderObjectWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LeafRenderObjectWidget Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("LeafRenderObjectWidget - Default",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const LeafRenderObjectWidget(),
              const SizedBox(height: 16),
              const Text("LeafRenderObjectWidget - With Color",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                color: Colors.blue.shade100,
                child: const LeafRenderObjectWidget(color: Colors.red),
              ),
              const SizedBox(height: 16),
              const Text("LeafRenderObjectWidget - With Size",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const SizedBox(
                width: 100,
                height: 100,
                child: LeafRenderObjectWidget(size: 50),
              ),
              const SizedBox(height: 16),
              const Text("LeafRenderObjectWidget - With Border",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 2),
                ),
                child: const LeafRenderObjectWidget(borderWidth: 5, borderColor: Colors.green),
              ),
              const SizedBox(height: 16),
              const Text("LeafRenderObjectWidget - With Radius",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const LeafRenderObjectWidget(borderRadius: 10),
              ),
              const SizedBox(height: 16),
              const Text("LeafRenderObjectWidget - With Padding",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(20),
                child: const LeafRenderObjectWidget(padding: 20),
              ),
              const SizedBox(height: 16),
              const Text("LeafRenderObjectWidget - With Margin",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                margin: const EdgeInsets.all(20),
                child: const LeafRenderObjectWidget(margin: 20),
              ),
              const SizedBox(height: 16),
              const Text("LeafRenderObjectWidget - With Alignment (Not Applicable)",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              // Alignment is not applicable to this widget, so we just show the default
              const LeafRenderObjectWidget(),
              const SizedBox(height: 16),
              const Text("LeafRenderObjectWidget - Wrapped in Container",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                color: Colors.grey.shade200,
                child: const LeafRenderObjectWidget(child: Text("Wrapped Text")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LeafRenderObjectWidget extends LeafRenderObjectWidgetBase {
  const LeafRenderObjectWidget({
    super.key,
    this.color = Colors.black,
    this.size = 20,
    this.borderWidth = 0,
    this.borderColor = Colors.transparent,
    this.borderRadius = 0,
    this.padding = 0,
    this.margin = 0,
    this.child,
  });

  final Color color;
  final double size;
  final double borderWidth;
  final Color borderColor;
  final double borderRadius;
  final double padding;
  final double margin;
  final Widget? child;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return LeafRenderObject(
      color: color,
      size: size,
      borderWidth: borderWidth,
      borderColor: borderColor,
      borderRadius: borderRadius,
      padding: padding,
      margin: margin,
    );
  }

  @override
  void updateRenderObject(BuildContext context, LeafRenderObject renderObject) {
    renderObject
      ..color = color
      ..size = Size(size, size)
      ..borderWidth = borderWidth
      ..borderColor = borderColor
      ..borderRadius = borderRadius
      ..padding = padding
      ..margin = margin;
  }

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      margin: EdgeInsets.all(margin),
      child: child,
    );
  }

  @override
  RenderObjectElement createElement() {
    return _LeafRenderObjectElement(this);
  }
}

abstract class LeafRenderObjectWidgetBase extends RenderObjectWidget {
  const LeafRenderObjectWidgetBase({super.key});
}

class LeafRenderObject extends RenderBox {
  LeafRenderObject({
    required Color color,
    required double size,
    required double borderWidth,
    required Color borderColor,
    required double borderRadius,
    required double padding,
    required double margin,
  })  : _color = color,
        _size = size,
        _borderWidth = borderWidth,
        _borderColor = borderColor,
        _borderRadius = borderRadius,
        _padding = padding,
        _margin = margin;

  Color _color;
  final double _size;
  double _borderWidth;
  Color _borderColor;
  double _borderRadius;
  double _padding;
  double _margin;

  set color(Color value) {
    if (_color != value) {
      _color = value;
      markNeedsPaint();
    }
  }

  @override
  set size(Size value) {
    if (size != value) {
      super.size = value;
      markNeedsLayout();
    }
  }

  set borderWidth(double value) {
    if (_borderWidth != value) {
      _borderWidth = value;
      markNeedsPaint();
    }
  }

  set borderColor(Color value) {
    if (_borderColor != value) {
      _borderColor = value;
      markNeedsPaint();
    }
  }

  set borderRadius(double value) {
    if (_borderRadius != value) {
      _borderRadius = value;
      markNeedsPaint();
    }
  }

  set padding(double value) {
    if (_padding != value) {
      _padding = value;
      markNeedsLayout();
    }
  }

  set margin(double value) {
    if (_margin != value) {
      _margin = value;
      markNeedsLayout();
    }
  }

  @override
  void performLayout() {
    final totalSize = _size + _padding * 2;
    final totalMargin = _margin * 2;
    size = constraints.constrain(Size(totalSize + totalMargin, totalSize + totalMargin));
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final canvas = context.canvas;
    final paint = Paint()..color = _color;

    final rect = Rect.fromLTWH(
      offset.dx + _margin,
      offset.dy + _margin,
      _size + _padding * 2,
      _size + _padding * 2,
    );

    if (_borderWidth > 0) {
      final borderPaint = Paint()
        ..color = _borderColor
        ..strokeWidth = _borderWidth
        ..style = PaintingStyle.stroke;
      canvas.drawRRect(
        RRect.fromRectAndRadius(rect, Radius.circular(_borderRadius)),
        borderPaint,
      );
    }

    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, Radius.circular(_borderRadius)),
      paint,
    );
  }
}

class _LeafRenderObjectElement extends RenderObjectElement {
  _LeafRenderObjectElement(LeafRenderObjectWidget super.widget);

  @override
  void update(LeafRenderObjectWidget newWidget) {
    super.update(newWidget);
    (renderObject as LeafRenderObject)
      ..color = newWidget.color
      ..size = Size(newWidget.size, newWidget.size)
      ..borderWidth = newWidget.borderWidth
      ..borderColor = newWidget.borderColor
      ..borderRadius = newWidget.borderRadius
      ..padding = newWidget.padding
      ..margin = newWidget.margin;
  }

  @override
  void insertRenderObjectChild(covariant RenderObject child, covariant Object? slot) {
    // Leaf render objects do not have children so nothing needs to be done
    // if something gets inserted unexpectedly, an assertion will show the error
    assert(false, 'Leaf render object cannot have children');
  }

  @override
  void moveRenderObjectChild(
      covariant RenderObject child, covariant Object? oldSlot, covariant Object? newSlot) {
    // Leaf render objects do not have children so nothing needs to be done
    assert(false, 'Leaf render object cannot have children');
  }

  @override
  void removeRenderObjectChild(covariant RenderObject child, covariant Object? slot) {
    // Leaf render objects do not have children so nothing needs to be done
    assert(false, 'Leaf render object cannot have children');
  }
}
