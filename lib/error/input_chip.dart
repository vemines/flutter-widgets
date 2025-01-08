import 'package:flutter/material.dart';

class InputChipScreen extends StatelessWidget {
  const InputChipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("InputChip Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("InputChip Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  _buildInputChip(
                    label: "Default",
                    description: "Default InputChip",
                    onPressed: () {},
                  ),
                  _buildInputChip(
                    label: "Selected",
                    description: "Selected InputChip",
                    selected: true,
                    onPressed: () {},
                  ),
                  _buildInputChip(
                    label: "Disabled",
                    description: "Disabled InputChip",
                    isEnabled: false,
                    onPressed: () {},
                  ),
                  _buildInputChip(
                    label: "Custom Colors",
                    description: "Custom background and text colors",
                    backgroundColor: Colors.blue[100],
                    labelColor: Colors.black,
                    onPressed: () {},
                  ),
                  _buildInputChip(
                    label: "Custom Border",
                    description: "Custom border and shape",
                    border: Border.all(color: Colors.red, width: 2),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    onPressed: () {},
                  ),
                  _buildInputChip(
                    label: "Custom Padding",
                    description: "Custom padding",
                    padding: const EdgeInsets.all(12),
                    onPressed: () {},
                  ),
                  _buildInputChip(
                    label: "Custom Avatar",
                    description: "InputChip with an avatar",
                    avatar: const CircleAvatar(child: Icon(Icons.person)),
                    onPressed: () {},
                  ),
                  _buildInputChip(
                    label: "Custom Delete Icon",
                    description: "InputChip with a custom delete icon",
                    deleteIcon: const Icon(Icons.close, color: Colors.red),
                    onDeleted: () {},
                    onPressed: () {},
                  ),
                  _buildInputChip(
                    label: "Custom Label Style",
                    description: "InputChip with custom label style",
                    labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    onPressed: () {},
                  ),
                  _buildInputChip(
                    label: "Custom Elevation",
                    description: "InputChip with custom elevation",
                    elevation: 4,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputChip({
    required String label,
    required String description,
    bool selected = false,
    bool isEnabled = true,
    Color? backgroundColor,
    Color? labelColor,
    Border? border,
    ShapeBorder? shape,
    EdgeInsetsGeometry? padding,
    Widget? avatar,
    Widget? deleteIcon,
    VoidCallback? onDeleted,
    TextStyle? labelStyle,
    double? elevation,
    required VoidCallback onPressed,
  }) {
    return Tooltip(
      message: description,
      child: InputChip(
        label: Text(label, style: labelStyle),
        selected: selected,
        isEnabled: isEnabled,
        backgroundColor: backgroundColor,
        labelStyle: labelStyle?.copyWith(color: labelColor),
        side: border,
        shape: shape,
        padding: padding,
        avatar: avatar,
        deleteIcon: deleteIcon,
        onDeleted: onDeleted,
        onPressed: onPressed,
        elevation: elevation,
      ),
    );
  }
}
