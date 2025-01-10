import 'package:flutter/material.dart';

class OutlinedButtonScreen extends StatelessWidget {
  const OutlinedButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OutlinedButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("OutlinedButton Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildOutlinedButton(
                    label: "Default OutlinedButton",
                    description: "Default appearance",
                    onPressed: () {},
                  ),
                  _buildOutlinedButton(
                    label: "OutlinedButton - Primary Color",
                    description: "Primary color border and text",
                    borderColor: Theme.of(context).primaryColor,
                    textColor: Theme.of(context).primaryColor,
                    onPressed: () {},
                  ),
                  _buildOutlinedButton(
                    label: "OutlinedButton - Custom Colors",
                    description: "Custom border and text colors",
                    borderColor: Colors.green,
                    textColor: Colors.purple,
                    onPressed: () {},
                  ),
                  _buildOutlinedButton(
                    label: "OutlinedButton - Large Padding",
                    description: "Increased padding",
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    onPressed: () {},
                  ),
                  _buildOutlinedButton(
                    label: "OutlinedButton - Rounded Border",
                    description: "Rounded border radius",
                    borderRadius: BorderRadius.circular(10),
                    onPressed: () {},
                  ),
                  _buildOutlinedButton(
                    label: "OutlinedButton - Bold Text",
                    description: "Bold text style",
                    textStyle: const TextStyle(fontWeight: FontWeight.bold),
                    onPressed: () {},
                  ),
                  _buildOutlinedButton(
                    label: "OutlinedButton - Icon",
                    description: "With an icon",
                    icon: Icons.add,
                    onPressed: () {},
                  ),
                  _buildOutlinedButton(
                    label: "OutlinedButton - Icon and Text",
                    description: "With an icon and text",
                    icon: Icons.favorite,
                    onPressed: () {},
                  ),
                  _buildOutlinedButton(
                    label: "OutlinedButton - Disabled",
                    description: "Disabled button",
                    onPressed: null,
                  ),
                  _buildOutlinedButton(
                    label: "OutlinedButton - Custom Border Width",
                    description: "Custom border width",
                    borderWidth: 3.0,
                    onPressed: () {},
                  ),
                  Tooltip(
                    message: "OutlinedButton.icon - Default",
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.add),
                      label: Text("Add"),
                    ),
                  ),
                  Tooltip(
                    message: "OutlinedButton.icon - Primary Color",
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.edit, color: Colors.blue),
                      label: Text("Edit", style: TextStyle(color: Colors.blue)),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.blue,
                        side: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "OutlinedButton.icon - Custom Border",
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.delete, color: Colors.red),
                      label: Text("Delete", style: TextStyle(color: Colors.red)),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.red, width: 2),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "OutlinedButton.icon - Large Padding",
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.settings),
                      label: Text("Settings"),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "OutlinedButton.icon - Different Icon Size",
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.star, size: 30),
                      label: Text("Star"),
                    ),
                  ),
                  Tooltip(
                    message: "OutlinedButton.icon - Text Style",
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.info),
                      label:
                          Text("Info", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Tooltip(
                    message: "OutlinedButton.icon - Disabled",
                    child: OutlinedButton.icon(
                      onPressed: null,
                      icon: Icon(Icons.block),
                      label: Text("Disabled"),
                    ),
                  ),
                  Tooltip(
                    message: "OutlinedButton.icon - Minimum Size",
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.minimize),
                      label: Text("Min"),
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(50, 30),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "OutlinedButton.icon - Fixed Size",
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.zoom_in),
                      label: Text("Zoom"),
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(100, 40),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "OutlinedButton.icon - Icon and Text Color",
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.color_lens, color: Colors.purple),
                      label: Text("Color", style: TextStyle(color: Colors.purple)),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.purple,
                        side: BorderSide(color: Colors.purple),
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

  Widget _buildOutlinedButton({
    required String label,
    required String description,
    VoidCallback? onPressed,
    Color? borderColor,
    Color? textColor,
    EdgeInsetsGeometry? padding,
    BorderRadius? borderRadius,
    TextStyle? textStyle,
    IconData? icon,
    double? borderWidth,
  }) {
    return Tooltip(
      message: description,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: borderColor != null
              ? BorderSide(color: borderColor, width: borderWidth ?? 1.0)
              : null,
          padding: padding,
          shape: borderRadius != null ? RoundedRectangleBorder(borderRadius: borderRadius) : null,
          foregroundColor: textColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) Icon(icon, color: textColor),
            if (icon != null && label.isNotEmpty) const SizedBox(width: 4),
            Text(
              label,
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
