import 'package:flutter/material.dart';

class CheckboxListTileScreen extends StatelessWidget {
  const CheckboxListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckboxListTile Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("CheckboxListTile Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildCheckboxListTileVariation(
                    title: "Default CheckboxListTile",
                    description: "CheckboxListTile with default styling.",
                    checkboxListTile: CheckboxListTile(
                      title: Text("Default"),
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                  ),
                  _buildCheckboxListTileVariation(
                    title: "CheckboxListTile - Active Color",
                    description: "CheckboxListTile with a custom active color.",
                    checkboxListTile: CheckboxListTile(
                      title: Text("Active Color"),
                      value: true,
                      activeColor: Colors.green,
                      onChanged: (bool? value) {},
                    ),
                  ),
                  _buildCheckboxListTileVariation(
                    title: "CheckboxListTile - Secondary",
                    description: "CheckboxListTile with a secondary widget.",
                    checkboxListTile: CheckboxListTile(
                      title: Text("Secondary Widget"),
                      value: false,
                      secondary: Icon(Icons.info),
                      onChanged: (bool? value) {},
                    ),
                  ),
                  _buildCheckboxListTileVariation(
                    title: "CheckboxListTile - Dense",
                    description: "CheckboxListTile with dense layout.",
                    checkboxListTile: CheckboxListTile(
                      title: Text("Dense"),
                      value: false,
                      dense: true,
                      onChanged: (bool? value) {},
                    ),
                  ),
                  _buildCheckboxListTileVariation(
                    title: "CheckboxListTile - Control Affinity Leading",
                    description: "CheckboxListTile with checkbox on the leading side.",
                    checkboxListTile: CheckboxListTile(
                      title: Text("Leading Checkbox"),
                      value: false,
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (bool? value) {},
                    ),
                  ),
                  _buildCheckboxListTileVariation(
                    title: "CheckboxListTile - Disabled",
                    description: "CheckboxListTile that is disabled.",
                    checkboxListTile: CheckboxListTile(
                      title: Text("Disabled"),
                      value: false,
                      onChanged: null,
                    ),
                  ),
                  _buildCheckboxListTileVariation(
                    title: "CheckboxListTile - Custom Text Style",
                    description: "CheckboxListTile with a custom text style.",
                    checkboxListTile: CheckboxListTile(
                      title: Text("Custom Text",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
                      value: false,
                      onChanged: (bool? value) {},
                    ),
                  ),
                  _buildCheckboxListTileVariation(
                    title: "CheckboxListTile - Content Padding",
                    description: "CheckboxListTile with custom content padding.",
                    checkboxListTile: CheckboxListTile(
                      title: Text("Padding"),
                      value: false,
                      contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      onChanged: (bool? value) {},
                    ),
                  ),
                  _buildCheckboxListTileVariation(
                    title: "CheckboxListTile - Check Color",
                    description: "CheckboxListTile with a custom check color.",
                    checkboxListTile: CheckboxListTile(
                      title: Text("Check Color"),
                      value: true,
                      checkColor: Colors.red,
                      onChanged: (bool? value) {},
                    ),
                  ),
                  _buildCheckboxListTileVariation(
                    title: "CheckboxListTile - Tristate",
                    description: "CheckboxListTile with tristate enabled.",
                    checkboxListTile: CheckboxListTile(
                      title: Text("Tristate"),
                      value: null,
                      tristate: true,
                      onChanged: (bool? value) {},
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

  Widget _buildCheckboxListTileVariation(
      {required String title,
      required String description,
      required CheckboxListTile checkboxListTile}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tooltip(
            message: description,
            child: Text(title, style: TextStyle(fontWeight: FontWeight.bold))),
        SizedBox(height: 8),
        checkboxListTile,
      ],
    );
  }
}
