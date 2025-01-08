
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RenderStackScreen extends StatelessWidget {
  const RenderStackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RenderStack Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RenderStack Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildRenderStackVariation(
                    "Basic RenderStack",
                    const RenderStack(
                      children: [
                        SizedBox(width: 100, height: 100, child: ColoredBox(color: Colors.blue)),
                        Positioned(
                          top: 20,
                          left: 20,
                          child:
                              SizedBox(width: 50, height: 50, child: ColoredBox(color: Colors.red)),
                        ),
                      ],
                    ),
                  ),
                  _buildRenderStackVariation(
                    "RenderStack with Alignment",
                    const RenderStack(
                      alignment: Alignment.bottomRight,
                      children: [
                        SizedBox(width: 100, height: 100, child: ColoredBox(color: Colors.green)),
                        Positioned(
                          top: 20,
                          left: 20,
                          child: SizedBox(
                              width: 50, height: 50, child: ColoredBox(color: Colors.yellow)),
                        ),
                      ],
                    ),
                  ),
                  _buildRenderStackVariation(
                    "RenderStack with Overflow Visible",
                    const RenderStack(
                      clipBehavior: Clip.none,
                      children: [
                        SizedBox(width: 100, height: 100, child: ColoredBox(color: Colors.purple)),
                        Positioned(
                          top: 80,
                          left: 80,
                          child: SizedBox(
                              width: 50, height: 50, child: ColoredBox(color: Colors.orange)),
                        ),
                      ],
                    ),
                  ),
                  _buildRenderStackVariation(
                    "RenderStack with Overflow Hidden",
                    const RenderStack(
                      clipBehavior: Clip.hardEdge,
                      children: [
                        SizedBox(width: 100, height: 100, child: ColoredBox(color: Colors.teal)),
                        Positioned(
                          top: 80,
                          left: 80,
                          child: SizedBox(
                              width: 50, height: 50, child: ColoredBox(color: Colors.pink)),
                        ),
                      ],
                    ),
                  ),
                  _buildRenderStackVariation(
                    "RenderStack with different sized children",
                    const RenderStack(
                      children: [
                        SizedBox(width: 150, height: 70, child: ColoredBox(color: Colors.brown)),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: SizedBox(
                              width: 30, height: 30, child: ColoredBox(color: Colors.grey)),
                        ),
                      ],
                    ),
                  ),
                  _buildRenderStackVariation(
                    "RenderStack with multiple positioned children",
                    const RenderStack(
                      children: [
                        SizedBox(width: 100, height: 100, child: ColoredBox(color: Colors.indigo)),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: SizedBox(
                              width: 20, height: 20, child: ColoredBox(color: Colors.lime)),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: SizedBox(
                              width: 20, height: 20, child: ColoredBox(color: Colors.cyan)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRenderStackVariation(String label, RenderStack renderStack) {
    return Column(
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: renderStack,
        ),
      ],
    );
  }
}

class RenderStack extends MultiChildRenderObjectWidget {
  const RenderStack({
    super.key,
    super.children,
    this.alignment = AlignmentDirectional.topStart,
    this.textDirection,
    this.fit = StackFit.loose,
    this.clipBehavior = Clip.hardEdge,
  });

  final AlignmentGeometry alignment;
  final TextDirection? textDirection;
  final StackFit fit;
  final Clip clipBehavior;

  @override
  RenderStackBox createRenderObject(BuildContext context) {
    return RenderStackBox(
      alignment: alignment,
      textDirection: textDirection ?? Directionality.of(context),
      fit: fit,
      clipBehavior: clipBehavior,
    );
  }

  @override
  void updateRenderObject(BuildContext context, RenderStackBox renderObject) {
    renderObject
      ..alignment = alignment
      ..textDirection = textDirection ?? Directionality.of(context)
      ..fit = fit
      ..clipBehavior = clipBehavior;
  }
}

class RenderStackBox extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, StackParentData>,
        RenderBoxContainerDefaultsMixin<RenderBox, StackParentData> {
  RenderStackBox({
    List<RenderBox>? children,
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection? textDirection,
    StackFit fit = StackFit.loose,
    Clip clipBehavior = Clip.hardEdge,
  })  : _alignment = alignment,
        _textDirection = textDirection,
        _fit = fit,
        _clipBehavior = clipBehavior {
    addAll(children);
  }

  AlignmentGeometry get alignment => _alignment;
  AlignmentGeometry _alignment;
  set alignment(AlignmentGeometry value) {
    if (_alignment == value) {
      return;
    }
    _alignment = value;
    markNeedsLayout();
  }

  TextDirection? get textDirection => _textDirection;
  TextDirection? _textDirection;
  set textDirection(TextDirection? value) {
    if (_textDirection == value) {
      return;
    }
    _textDirection = value;
    markNeedsLayout();
  }

  StackFit get fit => _fit;
  StackFit _fit;
  set fit(StackFit value) {
    if (_fit == value) {
      return;
    }
    _fit = value;
    markNeedsLayout();
  }

  Clip get clipBehavior => _clipBehavior;
  Clip _clipBehavior;
  set clipBehavior(Clip value) {
    if (_clipBehavior == value) {
      return;
    }
    _clipBehavior = value;
    markNeedsPaint();
  }

  @override
  void setupParentData(RenderBox child) {
    if (child.parentData is! StackParentData) {
      child.parentData = StackParentData();
    }
  }

  @override
  bool get sizedByParent => true;

  @override
  Size computeDryLayout(BoxConstraints constraints) {
    return constraints.biggest;
  }

  @override
  void performLayout() {
    final BoxConstraints constraints = this.constraints;
    size = constraints.biggest;

    final List<RenderBox> children = getChildrenAsList();
    for (final RenderBox child in children) {
      final StackParentData childParentData = child.parentData! as StackParentData;
      final BoxConstraints childConstraints;
      if (childParentData.left != null ||
          childParentData.right != null ||
          childParentData.top != null ||
          childParentData.bottom != null ||
          childParentData.width != null ||
          childParentData.height != null) {
        double? minWidth = 0.0;
        double? maxWidth = double.infinity;
        double? minHeight = 0.0;
        double? maxHeight = double.infinity;

        if (childParentData.width != null) {
          minWidth = childParentData.width;
          maxWidth = childParentData.width;
        }
        if (childParentData.height != null) {
          minHeight = childParentData.height;
          maxHeight = childParentData.height;
        }
        childConstraints = BoxConstraints(
          minWidth: minWidth!,
          maxWidth: maxWidth!,
          minHeight: minHeight!,
          maxHeight: maxHeight!,
        );
      } else {
        childConstraints = BoxConstraints.loose(size);
      }

      child.layout(childConstraints, parentUsesSize: true);
    }

    final Rect stackRect = Offset.zero & size;
    final Alignment resolvedAlignment = alignment.resolve(textDirection);

    for (final RenderBox child in children) {
      final StackParentData childParentData = child.parentData! as StackParentData;
      final Size childSize = child.size;
      Offset childOffset = Offset.zero;

      if (childParentData.left != null && childParentData.right != null) {
        final double left = childParentData.left!;
        final double right = childParentData.right!;
        childOffset = Offset(left, childOffset.dy);
        child.layout(
            BoxConstraints.tightFor(width: size.width - left - right, height: childSize.height),
            parentUsesSize: true);
        childOffset = Offset(left, childOffset.dy);
      } else if (childParentData.left != null) {
        childOffset = Offset(childParentData.left!, childOffset.dy);
      } else if (childParentData.right != null) {
        childOffset = Offset(size.width - childSize.width - childParentData.right!, childOffset.dy);
      } else {
        final Offset offsetSize = Offset(stackRect.size.width, stackRect.size.height);
        final Offset offsetChildSize = Offset(childSize.width, childSize.height);
        childOffset = resolvedAlignment.alongOffset(offsetSize - offsetChildSize);
      }

      if (childParentData.top != null && childParentData.bottom != null) {
        final double top = childParentData.top!;
        final double bottom = childParentData.bottom!;
        childOffset = Offset(childOffset.dx, top);
        child.layout(
            BoxConstraints.tightFor(width: childSize.width, height: size.height - top - bottom),
            parentUsesSize: true);
        childOffset = Offset(childOffset.dx, top);
      } else if (childParentData.top != null) {
        childOffset = Offset(childOffset.dx, childParentData.top!);
      } else if (childParentData.bottom != null) {
        childOffset =
            Offset(childOffset.dx, size.height - childSize.height - childParentData.bottom!);
      }

      childParentData.offset = childOffset;
    }
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (clipBehavior != Clip.none) {
      context.canvas.save();
      context.canvas.clipRect(offset & size);
    }
    defaultPaint(context, offset);
    if (clipBehavior != Clip.none) {
      context.canvas.restore();
    }
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    return defaultHitTestChildren(result, position: position);
  }
}
