import 'package:flutter/material.dart';

class RadioListTileScreen extends StatelessWidget {
  const RadioListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioListTile Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("RadioListTile Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildRadioListTileVariation(
                    title: "Default RadioListTile",
                    description: "RadioListTile with default styling.",
                    radioListTile: RadioListTile(
                      title: Text("Option 1"),
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {},
                    ),
                  ),
                  _buildRadioListTileVariation(
                    title: "RadioListTile - Active Color",
                    description: "RadioListTile with a custom active color.",
                    radioListTile: RadioListTile(
                      title: Text("Option 2"),
                      value: 2,
                      groupValue: 1,
                      activeColor: Colors.green,
                      onChanged: (value) {},
                    ),
                  ),
                  _buildRadioListTileVariation(
                    title: "RadioListTile - Dense",
                    description: "RadioListTile with reduced vertical spacing.",
                    radioListTile: RadioListTile(
                      title: Text("Option 3"),
                      value: 3,
                      groupValue: 1,
                      dense: true,
                      onChanged: (value) {},
                    ),
                  ),
                  _buildRadioListTileVariation(
                    title: "RadioListTile - Secondary Text",
                    description: "RadioListTile with secondary text.",
                    radioListTile: RadioListTile(
                      title: Text("Option 4"),
                      subtitle: Text("Secondary Text"),
                      value: 4,
                      groupValue: 1,
                      onChanged: (value) {},
                    ),
                  ),
                  _buildRadioListTileVariation(
                    title: "RadioListTile - Control Affinity Leading",
                    description: "RadioListTile with the radio control on the leading side.",
                    radioListTile: RadioListTile(
                      title: Text("Option 5"),
                      value: 5,
                      groupValue: 1,
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (value) {},
                    ),
                  ),
                  _buildRadioListTileVariation(
                    title: "RadioListTile - Custom Text Style",
                    description: "RadioListTile with a custom text style.",
                    radioListTile: RadioListTile(
                      title: Text("Option 6",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
                      value: 6,
                      groupValue: 1,
                      onChanged: (value) {},
                    ),
                  ),
                  _buildRadioListTileVariation(
                    title: "RadioListTile - Disabled",
                    description: "A disabled RadioListTile.",
                    radioListTile: RadioListTile(
                      title: Text("Option 7"),
                      value: 7,
                      groupValue: 1,
                      onChanged: null,
                    ),
                  ),
                  _buildRadioListTileVariation(
                    title: "RadioListTile - With Icon",
                    description: "RadioListTile with an icon.",
                    radioListTile: RadioListTile(
                      title: Text("Option 8"),
                      secondary: Icon(Icons.star),
                      value: 8,
                      groupValue: 1,
                      onChanged: (value) {},
                    ),
                  ),
                  _buildRadioListTileVariation(
                    title: "RadioListTile - Custom Padding",
                    description: "RadioListTile with custom content padding.",
                    radioListTile: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RadioListTile(
                        title: Text("Option 9"),
                        value: 9,
                        groupValue: 1,
                        onChanged: (value) {},
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

  Widget _buildRadioListTileVariation(
      {required String title, required String description, required Widget radioListTile}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tooltip(
            message: description,
            child: Text(title, style: TextStyle(fontWeight: FontWeight.bold))),
        SizedBox(height: 8),
        radioListTile,
      ],
    );
  }
}
