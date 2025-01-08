import 'package:flutter/material.dart';

class CheckboxScreen extends StatelessWidget {
  const CheckboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Checkbox Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildCheckboxVariation(
                    title: "Basic Checkbox",
                    widget: Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                  ),
                  _buildCheckboxVariation(
                    title: "Checked Checkbox",
                    widget: Checkbox(
                      value: true,
                      onChanged: (bool? value) {},
                    ),
                  ),
                  _buildCheckboxVariation(
                    title: "Active Color Checkbox",
                    widget: Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                      activeColor: Colors.blue,
                    ),
                  ),
                  _buildCheckboxVariation(
                    title: "Check Color Checkbox",
                    widget: Checkbox(
                      value: true,
                      onChanged: (bool? value) {},
                      checkColor: Colors.white,
                    ),
                  ),
                  _buildCheckboxVariation(
                    title: "Material Tap Target Size Checkbox",
                    widget: Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                    ),
                  ),
                  _buildCheckboxVariation(
                    title: "Tristate Checkbox",
                    widget: Checkbox(
                      value: null,
                      onChanged: (bool? value) {},
                      tristate: true,
                    ),
                  ),
                  _buildCheckboxVariation(
                    title: "Disabled Checkbox",
                    widget: Checkbox(
                      value: false,
                      onChanged: null,
                    ),
                  ),
                  _buildCheckboxVariation(
                    title: "Focus Color Checkbox",
                    widget: Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                      focusColor: Colors.green,
                    ),
                  ),
                  _buildCheckboxVariation(
                    title: "Hover Color Checkbox",
                    widget: Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                      hoverColor: Colors.yellow,
                    ),
                  ),
                  _buildCheckboxVariation(
                    title: "Overlay Color Checkbox",
                    widget: Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                      overlayColor:
                          WidgetStateProperty.all(Colors.red.withValues(alpha: 255 * 0.2)),
                    ),
                  ),
                  _buildCheckboxVariation(
                    title: "Shape Checkbox",
                    widget: Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  _buildCheckboxVariation(
                    title: "Side Checkbox",
                    widget: Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                      side: BorderSide(color: Colors.purple, width: 2),
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

  Widget _buildCheckboxVariation({required String title, required Widget widget}) {
    return Column(
      children: [
        Tooltip(message: title, child: Text(title, style: TextStyle(fontSize: 14))),
        SizedBox(height: 8),
        widget,
      ],
    );
  }
}
