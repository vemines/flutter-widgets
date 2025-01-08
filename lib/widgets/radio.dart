import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Radio Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildRadioVariation(
                    title: "Radio - Default",
                    child: Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {},
                    ),
                  ),
                  _buildRadioVariation(
                    title: "Radio - Active Color Red",
                    child: Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {},
                      activeColor: Colors.red,
                    ),
                  ),
                  _buildRadioVariation(
                    title: "Radio - Focus Color Green",
                    child: Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {},
                      focusColor: Colors.green,
                    ),
                  ),
                  _buildRadioVariation(
                    title: "Radio - Hover Color Blue",
                    child: Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {},
                      hoverColor: Colors.blue,
                    ),
                  ),
                  _buildRadioVariation(
                    title: "Radio - Material Tap Target Size Shrink",
                    child: Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {},
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                  _buildRadioVariation(
                    title: "Radio - Disabled",
                    child: Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: null,
                    ),
                  ),
                  _buildRadioVariation(
                    title: "Radio - With Splash Radius 30",
                    child: Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {},
                      splashRadius: 30,
                    ),
                  ),
                  _buildRadioVariation(
                    title: "Radio - With Overlay Color Purple",
                    child: Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {},
                      overlayColor: WidgetStateProperty.all(Colors.purple),
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

  Widget _buildRadioVariation({required String title, required Widget child}) {
    return Column(
      children: [
        Tooltip(message: title, child: Text(title, style: TextStyle(fontSize: 14))),
        SizedBox(height: 8),
        child,
      ],
    );
  }
}
