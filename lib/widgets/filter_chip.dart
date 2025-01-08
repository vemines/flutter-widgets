import 'package:flutter/material.dart';

class FilterChipScreen extends StatelessWidget {
  const FilterChipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FilterChip Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("FilterChip Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  _buildFilterChip(
                    label: "Default",
                    description: "Default FilterChip",
                    onSelected: (bool value) {},
                  ),
                  _buildFilterChip(
                    label: "Selected",
                    description: "Selected FilterChip",
                    selected: true,
                    onSelected: (bool value) {},
                  ),
                  _buildFilterChip(
                    label: "Custom Colors",
                    description: "Custom background and text colors",
                    backgroundColor: Colors.blue[100],
                    selectedColor: Colors.blue[300],
                    labelStyle: TextStyle(color: Colors.black),
                    onSelected: (bool value) {},
                  ),
                  _buildFilterChip(
                    label: "Custom Shape",
                    description: "Custom rounded border",
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    onSelected: (bool value) {},
                  ),
                  _buildFilterChip(
                    label: "Disabled",
                    description: "Disabled FilterChip",
                    onSelected: null,
                  ),
                  _buildFilterChip(
                    label: "Custom Label Style",
                    description: "Custom label text style",
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.red),
                    onSelected: (bool value) {},
                  ),
                  _buildFilterChip(
                    label: "Custom Padding",
                    description: "Custom padding",
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    onSelected: (bool value) {},
                  ),
                  _buildFilterChip(
                    label: "Custom Avatar",
                    description: "FilterChip with an avatar",
                    avatar: CircleAvatar(child: Icon(Icons.person)),
                    onSelected: (bool value) {},
                  ),
                  _buildFilterChip(
                    label: "Custom Checkmark Color",
                    description: "Custom checkmark color",
                    checkmarkColor: Colors.green,
                    selected: true,
                    onSelected: (bool value) {},
                  ),
                  _buildFilterChip(
                    label: "Custom Border",
                    description: "Custom border color and width",
                    side: BorderSide(color: Colors.orange, width: 2),
                    onSelected: (bool value) {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterChip({
    required String label,
    required String description,
    bool selected = false,
    Color? backgroundColor,
    Color? selectedColor,
    TextStyle? labelStyle,
    ShapeBorder? shape,
    EdgeInsetsGeometry? padding,
    Widget? avatar,
    Color? checkmarkColor,
    BorderSide? side,
    void Function(bool)? onSelected,
  }) {
    return Tooltip(
      message: description,
      child: FilterChip(
        label: Text(label, style: labelStyle),
        selected: selected,
        backgroundColor: backgroundColor,
        selectedColor: selectedColor,
        padding: padding,
        avatar: avatar,
        checkmarkColor: checkmarkColor,
        side: side,
        onSelected: onSelected,
      ),
    );
  }
}
