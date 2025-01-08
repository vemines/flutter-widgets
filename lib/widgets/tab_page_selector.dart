import 'package:flutter/material.dart';

class TabPageSelectorScreen extends StatelessWidget {
  const TabPageSelectorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabPageSelector Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("TabPageSelector Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildSelector(
                    "Default",
                    TabPageSelector(),
                    "Default TabPageSelector",
                  ),
                  _buildSelector(
                    "Indicator Color",
                    TabPageSelector(),
                    "TabPageSelector with blue indicator",
                  ),
                  _buildSelector(
                    "Selected Color",
                    TabPageSelector(
                      selectedColor: Colors.green,
                    ),
                    "TabPageSelector with green selected color",
                  ),
                  _buildSelector(
                    "Indicator Size",
                    TabPageSelector(
                      indicatorSize: 20,
                    ),
                    "TabPageSelector with larger indicator size",
                  ),
                  _buildSelector(
                    "Custom Color and Size",
                    TabPageSelector(
                      selectedColor: Colors.yellow,
                      indicatorSize: 15,
                    ),
                    "TabPageSelector with custom colors and size",
                  ),
                  _buildSelector(
                    "Custom Border",
                    TabPageSelector(
                      selectedColor: Colors.orange,
                      indicatorSize: 15,
                      borderStyle: BorderStyle.solid,
                    ),
                    "TabPageSelector with custom border",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSelector(String name, Widget selector, String description) {
    return Column(
      children: [
        Tooltip(
          message: description,
          child: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 8),
        selector,
      ],
    );
  }
}
