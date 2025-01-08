import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTextSelectionToolbarScreen extends StatelessWidget {
  const CupertinoTextSelectionToolbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoTextSelectionToolbar Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Default CupertinoTextSelectionToolbar:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _ToolbarVariation(
                name: 'Default',
                child: CupertinoTextSelectionToolbar(
                  anchorAbove: Offset(0, 0),
                  anchorBelow: Offset(0, 0),
                  children: [
                    CupertinoButton(
                      onPressed: () {},
                      child: const Text('Copy'),
                    ),
                    CupertinoButton(
                      onPressed: () {},
                      child: const Text('Paste'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                  "Customized CupertinoTextSelectionToolbar with different button styles:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _ToolbarVariation(
                name: 'Custom Button Styles',
                child: CupertinoTextSelectionToolbar(
                  anchorAbove: Offset(0, 0),
                  anchorBelow: Offset(0, 0),
                  children: [
                    CupertinoButton(
                      onPressed: () {},
                      child: const Text('Copy',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    CupertinoButton(
                      onPressed: () {},
                      child: const Icon(CupertinoIcons.doc_on_clipboard,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                  "CupertinoTextSelectionToolbar with different alignment:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _ToolbarVariation(
                name: 'Aligned Center',
                child: Align(
                  alignment: Alignment.center,
                  child: CupertinoTextSelectionToolbar(
                    anchorAbove: Offset(0, 0),
                    anchorBelow: Offset(0, 0),
                    children: [
                      CupertinoButton(
                        onPressed: () {},
                        child: const Text('Copy'),
                      ),
                      CupertinoButton(
                        onPressed: () {},
                        child: const Text('Paste'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                  "CupertinoTextSelectionToolbar with different padding:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _ToolbarVariation(
                name: 'Custom Padding',
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CupertinoTextSelectionToolbar(
                    anchorAbove: Offset(0, 0),
                    anchorBelow: Offset(0, 0),
                    children: [
                      CupertinoButton(
                        onPressed: () {},
                        child: const Text('Copy'),
                      ),
                      CupertinoButton(
                        onPressed: () {},
                        child: const Text('Paste'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextSelectionToolbar with different margin:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _ToolbarVariation(
                name: 'Custom Margin',
                child: Container(
                  margin: const EdgeInsets.all(20.0),
                  child: CupertinoTextSelectionToolbar(
                    anchorAbove: Offset(0, 0),
                    anchorBelow: Offset(0, 0),
                    children: [
                      CupertinoButton(
                        onPressed: () {},
                        child: const Text('Copy'),
                      ),
                      CupertinoButton(
                        onPressed: () {},
                        child: const Text('Paste'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ToolbarVariation extends StatelessWidget {
  final String name;
  final Widget child;

  const _ToolbarVariation({required this.name, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        child,
        const SizedBox(height: 10),
      ],
    );
  }
}
