import 'package:flutter/material.dart';

class DropdownButtonScreen extends StatelessWidget {
  const DropdownButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropdownButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("DropdownButton Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildDropdownButton(
                    label: "Default Dropdown",
                    items: ['Item 1', 'Item 2', 'Item 3'],
                    onChanged: (value) {},
                  ),
                  _buildDropdownButton(
                    label: "Colored Dropdown",
                    items: ['Option A', 'Option B', 'Option C'],
                    onChanged: (value) {},
                    dropdownColor: Colors.lightBlue[100],
                    iconColor: Colors.red,
                    textColor: Colors.black,
                  ),
                  _buildDropdownButton(
                    label: "Custom Border",
                    items: ['Choice X', 'Choice Y', 'Choice Z'],
                    onChanged: (value) {},
                    borderColor: Colors.green,
                    borderRadius: 10,
                  ),
                  _buildDropdownButton(
                    label: "Large Padding",
                    items: ['One', 'Two', 'Three'],
                    onChanged: (value) {},
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                  _buildDropdownButton(
                    label: "Disabled Dropdown",
                    items: ['Disabled 1', 'Disabled 2'],
                    onChanged: null,
                    disabledHint: Text("Select an option"),
                  ),
                  _buildDropdownButton(
                    label: "Underlined Dropdown",
                    items: ['Underlined A', 'Underlined B'],
                    onChanged: (value) {},
                    underline: Container(
                      height: 2,
                      color: Colors.purple,
                    ),
                  ),
                  _buildDropdownButton(
                    label: "Custom Text Style",
                    items: ['Style 1', 'Style 2', 'Style 3'],
                    onChanged: (value) {},
                    textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey),
                  ),
                  _buildDropdownButton(
                    label: "Icon Size",
                    items: ['Size A', 'Size B', 'Size C'],
                    onChanged: (value) {},
                    iconSize: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownButton({
    required String label,
    required List<String> items,
    required void Function(String?)? onChanged,
    Color? dropdownColor,
    Color? iconColor,
    Color? textColor,
    Color? borderColor,
    double? borderRadius,
    EdgeInsetsGeometry? padding,
    Widget? disabledHint,
    Widget? underline,
    TextStyle? textStyle,
    double? iconSize,
  }) {
    String? selectedValue;
    return StatefulBuilder(
      builder: (context, setState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            DropdownButton<String>(
              value: selectedValue,
              hint: Text("Select"),
              items: items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item, style: textStyle),
                );
              }).toList(),
              onChanged: onChanged == null ? null : (value) {
                setState(() {
                  selectedValue = value;
                });
                onChanged(value);
              },
              dropdownColor: dropdownColor,
              icon: Icon(Icons.arrow_drop_down, color: iconColor, size: iconSize),
              style: TextStyle(color: textColor),
              underline: underline,
              disabledHint: disabledHint,
              padding: padding,
              decoration: InputDecoration(
                border: borderColor != null ? OutlineInputBorder(
                  borderSide: BorderSide(color: borderColor),
                  borderRadius: BorderRadius.circular(borderRadius ?? 0),
                ) : null,
              ),
            ),
          ],
        );
      }
    );
  }
}
