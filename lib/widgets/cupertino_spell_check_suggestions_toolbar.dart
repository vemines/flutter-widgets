import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSpellCheckSuggestionsToolbarScreen extends StatelessWidget {
  const CupertinoSpellCheckSuggestionsToolbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoSpellCheckSuggestionsToolbar Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Basic Toolbar", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildBasicToolbar(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBasicToolbar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Basic Toolbar"),
        CupertinoSpellCheckSuggestionsToolbar(
          anchors: TextSelectionToolbarAnchors(primaryAnchor: Offset.zero),
          buttonItems: [
            ContextMenuButtonItem(onPressed: () {}, label: "Option 1"),
            ContextMenuButtonItem(onPressed: () {}, label: "Option 2"),
          ],
        ),
      ],
    );
  }
}
