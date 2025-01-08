import 'package:flutter/material.dart';

class TextButtonIconScreen extends StatelessWidget {
  const TextButtonIconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextButtonIcon Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("TextButton.icon Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  _buildTextButtonIcon(
                    label: "Default",
                    icon: Icons.add,
                    onPressed: () {},
                  ),
                  _buildTextButtonIcon(
                    label: "Primary Color",
                    icon: Icons.star,
                    textColor: Theme.of(context).colorScheme.primary,
                    onPressed: () {},
                  ),
                  _buildTextButtonIcon(
                    label: "Custom Colors",
                    icon: Icons.favorite,
                    textColor: Colors.white,
                    backgroundColor: Colors.deepPurple,
                    onPressed: () {},
                  ),
                  _buildTextButtonIcon(
                    label: "Large Padding",
                    icon: Icons.settings,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    onPressed: () {},
                  ),
                  _buildTextButtonIcon(
                    label: "Small Padding",
                    icon: Icons.search,
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    onPressed: () {},
                  ),
                  _buildTextButtonIcon(
                    label: "Rounded Borders",
                    icon: Icons.check,
                    borderRadius: BorderRadius.circular(10),
                    onPressed: () {},
                  ),
                  _buildTextButtonIcon(
                    label: "Custom Text Style",
                    icon: Icons.info,
                    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    onPressed: () {},
                  ),
                  _buildTextButtonIcon(
                    label: "Icon Color",
                    icon: Icons.notifications,
                    iconColor: Colors.orange,
                    onPressed: () {},
                  ),
                  _buildTextButtonIcon(
                    label: "Disabled",
                    icon: Icons.block,
                    onPressed: null,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextButtonIcon({
    required String label,
    required IconData icon,
    VoidCallback? onPressed,
    Color? textColor,
    Color? backgroundColor,
    EdgeInsetsGeometry? padding,
    BorderRadius? borderRadius,
    TextStyle? textStyle,
    Color? iconColor,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(
          message: label,
          child: TextButton.icon(
            onPressed: onPressed,
            icon: Icon(icon, color: iconColor),
            label: Text(label, style: textStyle,
            ),
            style: ButtonStyle(
              foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
                if (states.contains(WidgetState.disabled)) {
                  return Colors.grey;
                }
                return textColor;
              }),
              backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
                if (states.contains(WidgetState.disabled)) {
                  return Colors.grey[300];
                }
                return backgroundColor;
              }),
              padding: WidgetStateProperty.all(padding),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.zero,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
