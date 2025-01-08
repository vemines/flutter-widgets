import 'package:flutter/material.dart';

class ParentDataWidgetScreen extends StatelessWidget {
  const ParentDataWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ParentDataWidget Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ParentDataWidget Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  Tooltip(
                    message: "ParentDataWidget - Default",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        child: const Text("Default"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With Alignment",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        alignment: Alignment.bottomRight,
                        child: const Text("Aligned Bottom Right"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With Size",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        size: const Size(100, 50),
                        child: const Text("Sized 100x50"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With Offset",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        offset: const Offset(20, 10),
                        child: const Text("Offset 20,10"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With Flex",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        flex: 2,
                        child: const Text("Flex 2"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With Expanded",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        expanded: true,
                        child: const Text("Expanded"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With Fit",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        fit: FlexFit.tight,
                        child: const Text("Fit Tight"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With LayoutId",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        layoutId: "uniqueId",
                        child: const Text("LayoutId"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With Constraints",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        constraints: const BoxConstraints(
                            minWidth: 50, maxWidth: 150, minHeight: 30, maxHeight: 80),
                        child: const Text("Constraints"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With ClipBehavior",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        clipBehavior: Clip.antiAlias,
                        child: const Text("Clip AntiAlias"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With Transform",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        transform: Matrix4.rotationZ(0.5),
                        child: const Text("Transform"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With Visibility",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        visible: false,
                        child: const Text("Not Visible"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With Opacity",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        opacity: 0.5,
                        child: const Text("Opacity 0.5"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With ColorFilter",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        colorFilter: ColorFilter.mode(Colors.red, BlendMode.color),
                        child: const Text("Color Filter"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With BorderRadius",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        child: const Text("Border Radius"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With Border",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        border: Border.all(color: Colors.blue, width: 2),
                        child: const Text("Border"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With BoxShadow",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 5)],
                        child: const Text("Box Shadow"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With Gradient",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        gradient: const LinearGradient(colors: [Colors.red, Colors.blue]),
                        child: const Text("Gradient"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With BackgroundBlendMode",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        backgroundBlendMode: BlendMode.colorBurn,
                        child: const Text("Background Blend Mode"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With BackgroundImage",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        backgroundImage: const DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/50"),
                            fit: BoxFit.cover),
                        child: const Text("Background Image"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With BackgroundRepeat",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        backgroundRepeat: ImageRepeat.repeat,
                        child: const Text("Background Repeat"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With BackgroundPosition",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        backgroundPosition: Alignment.bottomRight,
                        child: const Text("Background Position"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With BackgroundSize",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        backgroundSize: const Size(30, 30),
                        child: const Text("Background Size"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With BackgroundBlendMode",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        backgroundBlendMode: BlendMode.colorBurn,
                        child: const Text("Background Blend Mode"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With BackgroundDecoration",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        backgroundDecoration: const BoxDecoration(color: Colors.yellow),
                        child: const Text("Background Decoration"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With ForegroundDecoration",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        foregroundDecoration:
                            BoxDecoration(color: Colors.green.withValues(alpha: 255 * 0.5)),
                        child: const Text("Foreground Decoration"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With Shape",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        shape: const CircleBorder(),
                        child: const Text("Shape Circle"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With BorderRadius",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        child: const Text("Border Radius"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With Border",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        border: Border.all(color: Colors.blue, width: 2),
                        child: const Text("Border"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With BoxShadow",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 5)],
                        child: const Text("Box Shadow"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With Gradient",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        gradient: const LinearGradient(colors: [Colors.red, Colors.blue]),
                        child: const Text("Gradient"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With BackgroundBlendMode",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        backgroundBlendMode: BlendMode.colorBurn,
                        child: const Text("Background Blend Mode"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With BackgroundImage",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        backgroundImage: const DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/50"),
                            fit: BoxFit.cover),
                        child: const Text("Background Image"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With BackgroundRepeat",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        backgroundRepeat: ImageRepeat.repeat,
                        child: const Text("Background Repeat"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With BackgroundPosition",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        backgroundPosition: Alignment.bottomRight,
                        child: const Text("Background Position"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With BackgroundSize",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        backgroundSize: const Size(30, 30),
                        child: const Text("Background Size"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With BackgroundBlendMode",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        backgroundBlendMode: BlendMode.colorBurn,
                        child: const Text("Background Blend Mode"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With BackgroundDecoration",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        backgroundDecoration: const BoxDecoration(color: Colors.yellow),
                        child: const Text("Background Decoration"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With ForegroundDecoration",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        foregroundDecoration:
                            BoxDecoration(color: Colors.green.withValues(alpha: 255 * 0.5)),
                        child: const Text("Foreground Decoration"),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ParentDataWidget - With Shape",
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all()),
                      child: ParentDataWidget(
                        shape: const CircleBorder(),
                        child: const Text("Shape Circle"),
                      ),
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
}

class ParentDataWidget extends StatelessWidget {
  final Widget child;
  final Alignment? alignment;
  final Size? size;
  final Offset? offset;
  final int? flex;
  final bool? expanded;
  final FlexFit? fit;
  final String? layoutId;
  final BoxConstraints? constraints;
  final Clip? clipBehavior;
  final Matrix4? transform;
  final bool? visible;
  final double? opacity;
  final ColorFilter? colorFilter;
  final BorderRadius? borderRadius;
  final Border? border;
  final List<BoxShadow>? boxShadow;
  final Gradient? gradient;
  final BlendMode? backgroundBlendMode;
  final DecorationImage? backgroundImage;
  final ImageRepeat? backgroundRepeat;
  final AlignmentGeometry? backgroundPosition;
  final Size? backgroundSize;
  final Decoration? backgroundDecoration;
  final Decoration? foregroundDecoration;
  final ShapeBorder? shape;

  const ParentDataWidget({
    super.key,
    required this.child,
    this.alignment,
    this.size,
    this.offset,
    this.flex,
    this.expanded,
    this.fit,
    this.layoutId,
    this.constraints,
    this.clipBehavior,
    this.transform,
    this.visible,
    this.opacity,
    this.colorFilter,
    this.borderRadius,
    this.border,
    this.boxShadow,
    this.gradient,
    this.backgroundBlendMode,
    this.backgroundImage,
    this.backgroundRepeat,
    this.backgroundPosition,
    this.backgroundSize,
    this.backgroundDecoration,
    this.foregroundDecoration,
    this.shape,
  });

  @override
  Widget build(BuildContext context) {
    return CustomSingleChildLayout(
      delegate: _ParentDataLayoutDelegate(
        alignment: alignment,
        size: size,
        offset: offset,
        flex: flex,
        expanded: expanded,
        fit: fit,
        layoutId: layoutId,
        constraints: constraints,
        clipBehavior: clipBehavior,
        transform: transform,
        visible: visible,
        opacity: opacity,
        colorFilter: colorFilter,
        borderRadius: borderRadius,
        border: border,
        boxShadow: boxShadow,
        gradient: gradient,
        backgroundBlendMode: backgroundBlendMode,
        backgroundImage: backgroundImage,
        backgroundRepeat: backgroundRepeat,
        backgroundPosition: backgroundPosition,
        backgroundSize: backgroundSize,
        backgroundDecoration: backgroundDecoration,
        foregroundDecoration: foregroundDecoration,
        shape: shape,
      ),
      child: child,
    );
  }
}

class _ParentDataLayoutDelegate extends SingleChildLayoutDelegate {
  final Alignment? alignment;
  final Size? size;
  final Offset? offset;
  final int? flex;
  final bool? expanded;
  final FlexFit? fit;
  final String? layoutId;
  final BoxConstraints? constraints;
  final Clip? clipBehavior;
  final Matrix4? transform;
  final bool? visible;
  final double? opacity;
  final ColorFilter? colorFilter;
  final BorderRadius? borderRadius;
  final Border? border;
  final List<BoxShadow>? boxShadow;
  final Gradient? gradient;
  final BlendMode? backgroundBlendMode;
  final DecorationImage? backgroundImage;
  final ImageRepeat? backgroundRepeat;
  final AlignmentGeometry? backgroundPosition;
  final Size? backgroundSize;
  final Decoration? backgroundDecoration;
  final Decoration? foregroundDecoration;
  final ShapeBorder? shape;

  _ParentDataLayoutDelegate({
    this.alignment,
    this.size,
    this.offset,
    this.flex,
    this.expanded,
    this.fit,
    this.layoutId,
    this.constraints,
    this.clipBehavior,
    this.transform,
    this.visible,
    this.opacity,
    this.colorFilter,
    this.borderRadius,
    this.border,
    this.boxShadow,
    this.gradient,
    this.backgroundBlendMode,
    this.backgroundImage,
    this.backgroundRepeat,
    this.backgroundPosition,
    this.backgroundSize,
    this.backgroundDecoration,
    this.foregroundDecoration,
    this.shape,
  });

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return this.constraints ?? super.getConstraintsForChild(constraints);
  }

  @override
  Size getSize(BoxConstraints constraints) {
    return size ?? super.getSize(constraints);
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    if (offset != null) {
      return offset!;
    }
    if (alignment != null) {
      return alignment!.alongSize(size) - childSize.center(Offset.zero);
    }
    return super.getPositionForChild(size, childSize);
  }

  @override
  void performLayout(Size size, RenderBox child) {
    final childConstraints = getConstraintsForChild(BoxConstraints.loose(size));
    child.layout(childConstraints, parentUsesSize: true);
    final childSize = child.size;
    final childOffset = getPositionForChild(size, childSize);
    if (transform != null) {
      child.applyTransform(transform!);
    }
    if (visible == false) {
      child.markNeedsPaint();
    }
    if (opacity != null) {
      child.markNeedsPaint();
    }
    if (colorFilter != null) {
      child.markNeedsPaint();
    }
    if (borderRadius != null) {
      child.markNeedsPaint();
    }
    if (border != null) {
      child.markNeedsPaint();
    }
    if (boxShadow != null) {
      child.markNeedsPaint();
    }
    if (gradient != null) {
      child.markNeedsPaint();
    }
    if (backgroundBlendMode != null) {
      child.markNeedsPaint();
    }
    if (backgroundImage != null) {
      child.markNeedsPaint();
    }
    if (backgroundRepeat != null) {
      child.markNeedsPaint();
    }
    if (backgroundPosition != null) {
      child.markNeedsPaint();
    }
    if (backgroundSize != null) {
      child.markNeedsPaint();
    }
    if (backgroundDecoration != null) {
      child.markNeedsPaint();
    }
    if (foregroundDecoration != null) {
      child.markNeedsPaint();
    }
    if (shape != null) {
      child.markNeedsPaint();
    }
    child.offset = childOffset;
  }

  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    return true;
  }
}
