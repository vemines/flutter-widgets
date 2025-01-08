import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RenderViewScreen extends StatelessWidget {
  const RenderViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RenderView Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RenderView - Basic Usage", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text(
                  "RenderView requires a child. The following shows RenderView wrapping a Container."),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                child: RenderView(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderView - With different alignment",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                child: RenderView(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderView - With different size",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                child: RenderView(
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderView - With different padding",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                child: RenderView(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderView - With different margin",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                child: RenderView(
                  margin: const EdgeInsets.all(20),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.purple,
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

class RenderView extends SingleChildRenderObjectWidget {
  final AlignmentGeometry alignment;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  const RenderView({
    super.key,
    this.alignment = Alignment.center,
    this.padding,
    this.margin,
    required Widget child,
  }) : super(child: child);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderCustomRenderView(
      alignment: alignment,
      padding: padding,
      margin: margin,
    );
  }

  @override
  void updateRenderObject(BuildContext context, RenderCustomRenderView renderObject) {
    renderObject
      ..alignment = alignment
      ..padding = padding
      ..margin = margin;
  }
}

class RenderCustomRenderView extends RenderProxyBox {
  AlignmentGeometry _alignment;
  EdgeInsetsGeometry? _padding;
  EdgeInsetsGeometry? _margin;

  RenderCustomRenderView({
    required AlignmentGeometry alignment,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
  })  : _alignment = alignment,
        _padding = padding,
        _margin = margin;

  AlignmentGeometry get alignment => _alignment;
  set alignment(AlignmentGeometry value) {
    if (_alignment == value) return;
    _alignment = value;
    markNeedsLayout();
  }

  EdgeInsetsGeometry? get padding => _padding;
  set padding(EdgeInsetsGeometry? value) {
    if (_padding == value) return;
    _padding = value;
    markNeedsLayout();
  }

  EdgeInsetsGeometry? get margin => _margin;
  set margin(EdgeInsetsGeometry? value) {
    if (_margin == value) return;
    _margin = value;
    markNeedsLayout();
  }

  @override
  void performLayout() {
    final BoxConstraints constraints = this.constraints;
    final EdgeInsets resolvedPadding = padding?.resolve(TextDirection.ltr) ?? EdgeInsets.zero;
    final EdgeInsets resolvedMargin = margin?.resolve(TextDirection.ltr) ?? EdgeInsets.zero;
    final BoxConstraints childConstraints = constraints.deflate(resolvedPadding + resolvedMargin);

    if (child != null) {
      child!.layout(childConstraints, parentUsesSize: true);
      size = constraints
          .constrain(resolvedPadding.collapsedSize + resolvedMargin.collapsedSize + child!.size);
    } else {
      size = constraints.constrain(resolvedPadding.collapsedSize + resolvedMargin.collapsedSize);
    }

    if (child != null) {
      final Offset childOffset = _alignment.alongSize(size - child!.size) +
          resolvedPadding.topLeft +
          resolvedMargin.topLeft;
      final BoxParentData childParentData = child!.parentData as BoxParentData;
      childParentData.offset = childOffset;
    }
  }
}
