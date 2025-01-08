import 'package:flutter/material.dart';

class PopupMenuButtonScreen extends StatelessWidget {
  const PopupMenuButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PopupMenuButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("PopupMenuButton Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildPopupMenuButton(
                    "Default",
                    "Default PopupMenuButton",
                    null,
                    null,
                    null,
                    null,
                  ),
                  _buildPopupMenuButton(
                    "Colored",
                    "PopupMenuButton with colored background and icon",
                    Colors.blue,
                    Colors.white,
                    Colors.white,
                    null,
                  ),
                  _buildPopupMenuButton(
                    "Custom Icon",
                    "PopupMenuButton with a custom icon",
                    null,
                    null,
                    null,
                    const Icon(Icons.settings, color: Colors.red),
                  ),
                  _buildPopupMenuButton(
                    "Disabled",
                    "Disabled PopupMenuButton",
                    null,
                    null,
                    null,
                    null,
                    enabled: false,
                  ),
                  _buildPopupMenuButton(
                    "Custom Padding",
                    "PopupMenuButton with custom padding",
                    null,
                    null,
                    null,
                    null,
                    padding: const EdgeInsets.all(20),
                  ),
                  _buildPopupMenuButton(
                    "Custom Offset",
                    "PopupMenuButton with custom offset",
                    null,
                    null,
                    null,
                    null,
                    offset: const Offset(20, 20),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopupMenuButton(String label, String description, Color? backgroundColor,
      Color? textColor, Color? iconColor, Widget? icon,
      {bool enabled = true, EdgeInsets? padding, Offset? offset}) {
    return Tooltip(
      message: description,
      child: Column(
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          PopupMenuButton<String>(
            enabled: enabled,
            padding: padding!,
            offset: offset ?? Offset.zero,
            color: backgroundColor,
            icon: icon,
            onSelected: (String result) {
              print('Selected: $result');
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'Option 1',
                child: Text('Option 1'),
              ),
              const PopupMenuItem<String>(
                value: 'Option 2',
                child: Text('Option 2'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
