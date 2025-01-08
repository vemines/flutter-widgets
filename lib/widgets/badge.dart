import 'package:flutter/material.dart';

class BadgeScreen extends StatelessWidget {
  const BadgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Badge Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Badge Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildBadgeVariation(
                    label: "Badge - Default",
                    child: Badge(
                      child: Text("Default"),
                    ),
                  ),
                  _buildBadgeVariation(
                    label: "Badge - Red Background",
                    child: Badge(
                      backgroundColor: Colors.red,
                      child: Text("Red BG"),
                    ),
                  ),
                  _buildBadgeVariation(
                    label: "Badge - Large Size",
                    child: Badge(
                      padding: EdgeInsets.all(10),
                      child: Text("Large"),
                    ),
                  ),
                  _buildBadgeVariation(
                    label: "Badge - With Border",
                    child: Badge(
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                      child: Text("Border"),
                    ),
                  ),
                  _buildBadgeVariation(
                    label: "Badge - With Text Style",
                    child: Badge(
                      child: Text("Styled Text", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                    ),
                  ),
                  _buildBadgeVariation(
                    label: "Badge - With Icon",
                    child: Badge(
                      child: Icon(Icons.star, color: Colors.yellow),
                    ),
                  ),
                  _buildBadgeVariation(
                    label: "Badge - With Custom Shape",
                    child: Badge(
                      shape: BadgeShape.square,
                      borderRadius: BorderRadius.circular(8),
                      child: Text("Square"),
                    ),
                  ),
                  _buildBadgeVariation(
                    label: "Badge - With Alignment",
                    child: Badge(
                      alignment: Alignment.bottomRight,
                      child: Text("Aligned"),
                    ),
                  ),
                  _buildBadgeVariation(
                    label: "Badge - Wrapped Text",
                    child: Badge(
                      child: Text("Wrapped Text"),
                    ),
                  ),
                  _buildBadgeVariation(
                    label: "Badge - Wrapped Container",
                    child: Badge(
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.grey[300],
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

  Widget _buildBadgeVariation({required String label, required Widget child}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(message: label, child: child),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}

class Badge extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final BorderSide? borderSide;
  final TextStyle? textStyle;
  final BadgeShape shape;
  final BorderRadius? borderRadius;
  final AlignmentGeometry? alignment;

  const Badge({super.key, 
    required this.child,
    this.backgroundColor,
    this.padding,
    this.borderSide,
    this.textStyle,
    this.shape = BadgeShape.circle,
    this.borderRadius,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor ?? Theme.of(context).colorScheme.secondary,
        border: borderSide != null ? Border.all(color: borderSide!.color, width: borderSide!.width) : null,
        shape: shape == BadgeShape.circle ? BoxShape.circle : BoxShape.rectangle,
        borderRadius: shape == BadgeShape.square ? borderRadius : null,
      ),
      alignment: alignment,
      child: DefaultTextStyle(
        style: textStyle ?? TextStyle(color: Colors.white),
        child: child,
      ),
    );
  }
}

enum BadgeShape {
  circle,
  square,
}
