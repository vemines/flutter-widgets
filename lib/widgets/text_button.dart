import 'package:flutter/material.dart';

class TextButtonScreen extends StatelessWidget {
  const TextButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("TextButton - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: () {},
                child: Text("Default Button"),
              ),
              SizedBox(height: 20),
              Text("TextButton - Primary Color", style: TextStyle(fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                child: Text("Primary Button"),
              ),
              SizedBox(height: 20),
              Text("TextButton - Disabled", style: TextStyle(fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: null,
                child: Text("Disabled Button"),
              ),
              SizedBox(height: 20),
              Text("TextButton - Custom Padding", style: TextStyle(fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                child: Text("Padded Button"),
              ),
              SizedBox(height: 20),
              Text("TextButton - Custom Text Style", style: TextStyle(fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  textStyle: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
                child: Text("Styled Button"),
              ),
              SizedBox(height: 20),
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
              SizedBox(height: 20),
              Text("TextButton - Minimum Size", style: TextStyle(fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  minimumSize: Size(150, 50),
                ),
                child: Text("Minimum Size Button"),
              ),
              SizedBox(height: 20),
              Text("TextButton - Bordered", style: TextStyle(fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  side: BorderSide(color: Colors.black, width: 2),
                ),
                child: Text("Bordered Button"),
              ),
              SizedBox(height: 20),
              Text("TextButton - Rounded Border", style: TextStyle(fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                child: Text("Rounded Button"),
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
            label: Text(
              label,
              style: textStyle,
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
