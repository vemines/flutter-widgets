import 'package:flutter/material.dart';

class IconButtonScreen extends StatelessWidget {
  const IconButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IconButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("IconButton Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildIconButton(
                    label: "Default IconButton",
                    icon: Icons.home,
                    onPressed: () {},
                  ),
                  _buildIconButton(
                    label: "IconButton - Blue Background",
                    icon: Icons.settings,
                    onPressed: () {},
                    backgroundColor: Colors.blue,
                    iconColor: Colors.white,
                  ),
                  _buildIconButton(
                    label: "IconButton - Large Size",
                    icon: Icons.add,
                    onPressed: () {},
                    iconSize: 40,
                    padding: EdgeInsets.all(12),
                  ),
                  _buildIconButton(
                    label: "IconButton - Rounded Border",
                    icon: Icons.search,
                    onPressed: () {},
                    borderRadius: BorderRadius.circular(10),
                    backgroundColor: Colors.grey[200],
                  ),
                  _buildIconButton(
                    label: "IconButton - Disabled",
                    icon: Icons.delete,
                    onPressed: null,
                    backgroundColor: Colors.grey[400],
                    iconColor: Colors.grey[600],
                  ),
                  _buildIconButton(
                    label: "IconButton - Custom Padding",
                    icon: Icons.favorite,
                    onPressed: () {},
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  _buildIconButton(
                    label: "IconButton - Custom Icon Color",
                    icon: Icons.star,
                    onPressed: () {},
                    iconColor: Colors.amber,
                  ),
                  _buildIconButton(
                    label: "IconButton - With Tooltip",
                    icon: Icons.info,
                    onPressed: () {},
                    tooltip: "This is an info button",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton({
    required String label,
    required IconData icon,
    required VoidCallback? onPressed,
    Color? backgroundColor,
    Color? iconColor,
    double? iconSize,
    BorderRadius? borderRadius,
    EdgeInsets? padding,
    String? tooltip,
  }) {
    return Tooltip(
      message: label,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: borderRadius,
        ),
        child: IconButton(
          icon: Icon(icon, color: iconColor, size: iconSize),
          onPressed: onPressed,
          padding: padding ?? EdgeInsets.all(8),
          tooltip: tooltip,
        ),
      ),
    );
  }
}
