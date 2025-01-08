import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDesktopTextSelectionControlsScreen extends StatelessWidget {
  const CupertinoDesktopTextSelectionControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoDesktopTextSelectionControls Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Default Controls", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildTextSelectionControls(
                controls: CupertinoDesktopTextSelectionControls(),
                label: "Default",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextSelectionControls(
      {required CupertinoDesktopTextSelectionControls controls, required String label}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 8),
        TextField(
          controller: TextEditingController(text: "Select me"),
          selectionControls: controls,
        ),
      ],
    );
  }
}
