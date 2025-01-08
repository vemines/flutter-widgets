import 'package:flutter/material.dart';

class SwitchListTileScreen extends StatelessWidget {
  const SwitchListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SwitchListTile Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("SwitchListTile Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildSwitchListTile(
                    title: "Default SwitchListTile",
                    description: "Default appearance",
                    value: false,
                    onChanged: (bool value) {},
                  ),
                  _buildSwitchListTile(
                    title: "Active Color",
                    description: "Active color set to blue",
                    value: true,
                    activeColor: Colors.blue,
                    onChanged: (bool value) {},
                  ),
                  _buildSwitchListTile(
                    title: "Inactive Track Color",
                    description: "Inactive track color set to grey",
                    value: false,
                    inactiveTrackColor: Colors.grey,
                    onChanged: (bool value) {},
                  ),
                  _buildSwitchListTile(
                    title: "Active Thumb Color",
                    description: "Active thumb color set to green",
                    value: true,
                    activeThumbColor: Colors.green,
                    onChanged: (bool value) {},
                  ),
                  _buildSwitchListTile(
                    title: "Inactive Thumb Color",
                    description: "Inactive thumb color set to red",
                    value: false,
                    inactiveThumbColor: Colors.red,
                    onChanged: (bool value) {},
                  ),
                  _buildSwitchListTile(
                    title: "Title Text Style",
                    description: "Custom text style for the title",
                    value: true,
                    titleStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.purple),
                    onChanged: (bool value) {},
                  ),
                  _buildSwitchListTile(
                    title: "Subtitle",
                    description: "With a subtitle",
                    value: false,
                    subtitle: "This is a subtitle",
                    onChanged: (bool value) {},
                  ),
                  _buildSwitchListTile(
                    title: "Dense",
                    description: "Dense layout",
                    value: true,
                    dense: true,
                    onChanged: (bool value) {},
                  ),
                  _buildSwitchListTile(
                    title: "Content Padding",
                    description: "Custom content padding",
                    value: false,
                    contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    onChanged: (bool value) {},
                  ),
                  _buildSwitchListTile(
                    title: "Secondary Icon",
                    description: "With a secondary icon",
                    value: true,
                    secondary: Icon(Icons.settings),
                    onChanged: (bool value) {},
                  ),
                  _buildSwitchListTile(
                    title: "Control Affinity Leading",
                    description: "Switch control on the leading side",
                    value: false,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool value) {},
                  ),
                  _buildSwitchListTile(
                    title: "Custom Material Tap Target Size",
                    description: "Custom material tap target size",
                    value: true,
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    onChanged: (bool value) {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSwitchListTile({
    required String title,
    required String description,
    required bool value,
    Color? activeColor,
    Color? inactiveTrackColor,
    Color? activeThumbColor,
    Color? inactiveThumbColor,
    TextStyle? titleStyle,
    String? subtitle,
    bool dense = false,
    EdgeInsetsGeometry? contentPadding,
    Widget? secondary,
    ListTileControlAffinity controlAffinity = ListTileControlAffinity.platform,
    MaterialTapTargetSize? materialTapTargetSize,
    required ValueChanged<bool> onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tooltip(
          message: description,
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(5)),
            child: SwitchListTile(
              title: Text(title, style: titleStyle),
              value: value,
              onChanged: onChanged,
              activeColor: activeColor,
              inactiveTrackColor: inactiveTrackColor,
              inactiveThumbColor: inactiveThumbColor,
              subtitle: subtitle != null ? Text(subtitle) : null,
              dense: dense,
              contentPadding: contentPadding,
              secondary: secondary,
              controlAffinity: controlAffinity,
              materialTapTargetSize: materialTapTargetSize,
            ),
          ),
        ),
      ],
    );
  }
}
