import 'package:flutter/material.dart';

class ComponentElementScreen extends StatelessWidget {
  const ComponentElementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ComponentElement Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ComponentElement Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  Tooltip(
                    message: "ComponentElement - Default",
                    child: const ComponentElement(),
                  ),
                  Tooltip(
                    message: "ComponentElement - Custom Color",
                    child: const ComponentElement(color: Colors.blue),
                  ),
                  Tooltip(
                    message: "ComponentElement - Custom Size",
                    child: const ComponentElement(size: 60),
                  ),
                  Tooltip(
                    message: "ComponentElement - Custom Border Radius",
                    child: const ComponentElement(borderRadius: 10),
                  ),
                  Tooltip(
                    message: "ComponentElement - Custom Padding",
                    child: const ComponentElement(padding: 20),
                  ),
                  Tooltip(
                    message: "ComponentElement - Custom Margin",
                    child: const ComponentElement(margin: 10),
                  ),
                  Tooltip(
                    message: "ComponentElement - Custom Text Style",
                    child: const ComponentElement(textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  Tooltip(
                    message: "ComponentElement - Custom Icon Color",
                    child: const ComponentElement(iconColor: Colors.red),
                  ),
                  Tooltip(
                    message: "ComponentElement - Custom Icon Size",
                    child: const ComponentElement(iconSize: 30),
                  ),
                  Tooltip(
                    message: "ComponentElement - Custom Icon",
                    child: const ComponentElement(icon: Icons.star),
                  ),
                  Tooltip(
                    message: "ComponentElement - Custom Alignment",
                    child: const ComponentElement(alignment: Alignment.centerRight),
                  ),
                  Tooltip(
                    message: "ComponentElement - Custom Text",
                    child: const ComponentElement(text: "Custom Text"),
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

class ComponentElement extends StatelessWidget {
  final Color? color;
  final double? size;
  final double? borderRadius;
  final double? padding;
  final double? margin;
  final TextStyle? textStyle;
  final Color? iconColor;
  final double? iconSize;
  final IconData? icon;
  final Alignment? alignment;
  final String? text;

  const ComponentElement({
    super.key,
    this.color,
    this.size,
    this.borderRadius,
    this.padding,
    this.margin,
    this.textStyle,
    this.iconColor,
    this.iconSize,
    this.icon,
    this.alignment,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      margin: EdgeInsets.all(margin ?? 0),
      padding: EdgeInsets.all(padding ?? 8),
      decoration: BoxDecoration(
        color: color ?? Colors.grey[300],
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon ?? Icons.circle,
            color: iconColor ?? Colors.black,
            size: iconSize ?? 24,
          ),
          const SizedBox(width: 8),
          Text(
            text ?? "Component",
            style: textStyle ?? const TextStyle(),
          ),
        ],
      ),
    );
  }
}
