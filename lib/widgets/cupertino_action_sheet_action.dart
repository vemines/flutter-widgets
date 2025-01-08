import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetActionScreen extends StatelessWidget {
  const CupertinoActionSheetActionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoActionSheetAction Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoActionSheetAction Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  _buildAction(
                    "Default Action",
                    CupertinoActionSheetAction(
                      onPressed: () {},
                      child: Text("Default"),
                    ),
                  ),
                  _buildAction(
                    "Destructive Action",
                    CupertinoActionSheetAction(
                      isDestructiveAction: true,
                      onPressed: () {},
                      child: const Text("Destructive"),
                    ),
                  ),
                  _buildAction(
                    "Bold Action",
                    CupertinoActionSheetAction(
                      isDefaultAction: true,
                      onPressed: () {},
                      child: const Text("Bold", style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  _buildAction(
                    "Disabled Action",
                    CupertinoActionSheetAction(
                      onPressed: () {},
                      child: const Text("Disabled",
                          style: TextStyle(color: CupertinoColors.inactiveGray)),
                    ),
                  ),
                  _buildAction(
                    "Custom Text Color",
                    CupertinoActionSheetAction(
                      onPressed: () {},
                      child: const Text("Custom Color", style: TextStyle(color: Colors.green)),
                    ),
                  ),
                  _buildAction(
                    "Custom Font Size",
                    CupertinoActionSheetAction(
                      onPressed: () {},
                      child: const Text("Custom Size", style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  _buildAction(
                    "Action with Icon",
                    CupertinoActionSheetAction(
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(CupertinoIcons.share),
                          SizedBox(width: 5),
                          Text("Share"),
                        ],
                      ),
                    ),
                  ),
                  _buildAction(
                    "Action with Icon and Custom Color",
                    CupertinoActionSheetAction(
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(CupertinoIcons.heart_fill, color: Colors.red),
                          SizedBox(width: 5),
                          Text("Favorite", style: TextStyle(color: Colors.red)),
                        ],
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

  Widget _buildAction(String label, Widget action) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(message: label, child: action),
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }
}
