import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDesktopTextSelectionToolbarScreen extends StatelessWidget {
  const CupertinoDesktopTextSelectionToolbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoDesktopTextSelectionToolbar Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Default CupertinoDesktopTextSelectionToolbar (with a simple text selection)"),
              const SizedBox(height: 8),
              const _TextSelectionExample(),
              const SizedBox(height: 20),
              const Text("CupertinoDesktopTextSelectionToolbar with custom actions"),
              const SizedBox(height: 8),
              const _CustomActionsToolbar(),
              const SizedBox(height: 20),
              const Text("CupertinoDesktopTextSelectionToolbar with custom colors"),
            ],
          ),
        ),
      ),
    );
  }
}

class _TextSelectionExample extends StatefulWidget {
  const _TextSelectionExample();

  @override
  _TextSelectionExampleState createState() => _TextSelectionExampleState();
}

class _TextSelectionExampleState extends State<_TextSelectionExample> {
  final TextEditingController _controller = TextEditingController(text: "Select this text");

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      controller: _controller,
      onTap: () {
        _controller.selection = TextSelection(baseOffset: 0, extentOffset: _controller.text.length);
      },
    );
  }
}

class _CustomActionsToolbar extends StatefulWidget {
  const _CustomActionsToolbar();

  @override
  _CustomActionsToolbarState createState() => _CustomActionsToolbarState();
}

class _CustomActionsToolbarState extends State<_CustomActionsToolbar> {
  final TextEditingController _controller = TextEditingController(text: "Custom Actions");

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      controller: _controller,
      onTap: () {
        _controller.selection = TextSelection(baseOffset: 0, extentOffset: _controller.text.length);
      },
      contextMenuBuilder: (context, editableTextState) {
        return CupertinoDesktopTextSelectionToolbar(
          anchor: editableTextState.contextMenuAnchors.primaryAnchor,
          children: [
            CupertinoButton(
              onPressed: () {
                setState(() {
                  _controller.text = "Action 1";
                });
                Navigator.of(context).pop();
              },
              child: const Text("Action 1"),
            ),
            CupertinoButton(
              onPressed: () {
                setState(() {
                  _controller.text = "Action 2";
                });
                Navigator.of(context).pop();
              },
              child: const Text("Action 2"),
            ),
          ],
        );
      },
    );
  }
}
