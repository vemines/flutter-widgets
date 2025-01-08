import 'package:flutter/material.dart';

class ExpandIconScreen extends StatelessWidget {
  const ExpandIconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ExpandIcon Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ExpandIcon Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildExpandIconVariation(
                    label: "Default ExpandIcon",
                    widget: ExpandIcon(
                      onPressed: (value) {},
                    ),
                  ),
                  _buildExpandIconVariation(
                    label: "ExpandIcon - Color Change",
                    widget: ExpandIcon(
                      onPressed: (value) {},
                      color: Colors.blue,
                    ),
                  ),
                  _buildExpandIconVariation(
                    label: "ExpandIcon - Expanded Color Change",
                    widget: ExpandIcon(
                      onPressed: (value) {},
                      expandedColor: Colors.green,
                    ),
                  ),
                  _buildExpandIconVariation(
                    label: "ExpandIcon - Disabled Color Change",
                    widget: ExpandIcon(
                      onPressed: (value) {},
                      disabledColor: Colors.grey,
                    ),
                  ),
                  _buildExpandIconVariation(
                    label: "ExpandIcon - Size Change",
                    widget: ExpandIcon(
                      onPressed: (value) {},
                      size: 48,
                    ),
                  ),
                  _buildExpandIconVariation(
                    label: "ExpandIcon - Padding Change",
                    widget: ExpandIcon(
                      onPressed: (value) {},
                      padding: EdgeInsets.all(12),
                    ),
                  ),
                  _buildExpandIconVariation(
                    label: "ExpandIcon - Initial Expanded",
                    widget: ExpandIcon(
                      onPressed: (value) {},
                      isExpanded: true,
                    ),
                  ),
                  _buildExpandIconVariation(
                    label: "ExpandIcon - On Pressed",
                    widget: Builder(builder: (BuildContext context) {
                      return ExpandIcon(
                        onPressed: (bool isExpanded) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(isExpanded ? 'Expanded' : 'Collapsed'),
                            ),
                          );
                        },
                      );
                    }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExpandIconVariation({required String label, required Widget widget}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(message: label, child: widget),
        Text(label, textAlign: TextAlign.center, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
