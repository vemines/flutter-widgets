import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RenderProxyBoxScreen extends StatelessWidget {
  const RenderProxyBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RenderProxyBox Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RenderProxyBox - Container"),
              SizedBox(
                width: 100,
                height: 100,
                child: const RenderProxyBoxWidget(),
              ),
              const SizedBox(height: 20),
              const Text("RenderProxyBox - Wrapped Container"),
              SizedBox(
                width: 100,
                height: 100,
                child: RenderProxyBoxWidget(
                  child: Container(
                    color: Colors.blue,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderProxyBox - Wrapped Text"),
              SizedBox(
                width: 100,
                height: 100,
                child: RenderProxyBoxWidget(
                  child: const Text("Hello"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderProxyBox - With Alignment"),
              SizedBox(
                width: 100,
                height: 100,
                child: RenderProxyBoxWidget(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    color: Colors.green,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderProxyBox - With Size"),
              SizedBox(
                width: 150,
                height: 150,
                child: RenderProxyBoxWidget(
                  size: const Size(100, 100),
                  child: Container(
                    color: Colors.yellow,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderProxyBox - With Constraints"),
              SizedBox(
                width: 150,
                height: 150,
                child: RenderProxyBoxWidget(
                  constraints: const BoxConstraints(maxWidth: 80, maxHeight: 80),
                  child: Container(
                    color: Colors.orange,
                    width: 100,
                    height: 100,
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

class RenderProxyBoxWidget extends SingleChildRenderObjectWidget {
  final AlignmentGeometry? alignment;
  final Size? size;
  final BoxConstraints? constraints;

  const RenderProxyBoxWidget({
    super.key,
    this.alignment,
    this.size,
    this.constraints,
    super.child,
  });

  @override
  RenderProxyBox createRenderObject(BuildContext context) {
    return RenderProxyBox(
      alignment: alignment,
      size: size,
      constraints: constraints,
    );
  }

  @override
  void updateRenderObject(BuildContext context, RenderProxyBox renderObject) {
    renderObject
      ..alignment = alignment
      ..customSize = size
      ..customConstraints = constraints;
  }
}

class RenderProxyBox extends RenderProxyBoxWithHitTestBehavior {
  AlignmentGeometry? _alignment;
  Size? _size;
  BoxConstraints? _constraints;

  RenderProxyBox({
    AlignmentGeometry? alignment,
    Size? size,
    BoxConstraints? constraints,
  })  : _alignment = alignment,
        _size = size,
        _constraints = constraints;

  AlignmentGeometry? get alignment => _alignment;
  set alignment(AlignmentGeometry? value) {
    if (_alignment == value) return;
    _alignment = value;
    markNeedsLayout();
  }

  Size? get customSize => _size;
  set customSize(Size? value) {
    if (_size == value) return;
    _size = value;
    markNeedsLayout();
  }

  BoxConstraints? get customConstraints => _constraints;
  set customConstraints(BoxConstraints? value) {
    if (_constraints == value) return;
    _constraints = value;
    markNeedsLayout();
  }

  @override
  void performLayout() {
    if (child == null) {
      size = constraints.constrain(Size.zero);
      return;
    }

    final BoxConstraints childConstraints = customConstraints ?? const BoxConstraints();
    child!.layout(childConstraints, parentUsesSize: true);

    final Size childSize = child!.size;
    final Size desiredSize = size;
    final Size constrainedSize = constraints.constrain(desiredSize);

    size = constrainedSize;

    final BoxParentData childParentData = child!.parentData as BoxParentData;
    childParentData.offset = (_alignment as Alignment?)?.alongOffset(Offset(
            (constrainedSize.width - childSize.width) / 2,
            (constrainedSize.height - childSize.height) / 2)) ??
        Offset.zero;
  }
}
