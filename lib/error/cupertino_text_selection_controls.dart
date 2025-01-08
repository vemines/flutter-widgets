import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTextSelectionControlsScreen extends StatelessWidget {
  const CupertinoTextSelectionControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoTextSelectionControls Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Default CupertinoTextSelectionControls:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text("This widget is a set of controls, not a single widget. It's used internally by CupertinoTextField and other text input widgets. It doesn't have visual properties to demonstrate directly. Therefore, we will show how it's used with a CupertinoTextField."),
              const SizedBox(height: 16),
              const Text("CupertinoTextField with Default Controls:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTextField(
                placeholder: 'Enter text here',
              ),
              const SizedBox(height: 16),
              const Text("CupertinoTextField with Custom Controls (Example):", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTextField(
                placeholder: 'Enter text here',
                selectionControls: const _CustomCupertinoTextSelectionControls(),
              ),
              const SizedBox(height: 16),
              const Text("Note: Custom controls are complex to implement and are not directly visual. This example shows how to use a custom set of controls, but the visual appearance is determined by the custom implementation.", style: TextStyle(fontStyle: FontStyle.italic)),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomCupertinoTextSelectionControls extends CupertinoTextSelectionControls {
  const _CustomCupertinoTextSelectionControls();

  @override
  Widget buildHandle(BuildContext context, TextSelectionHandleType type, double textLineHeight, [VoidCallback? onTap]) {
    return CupertinoTextSelectionHandle(
      type: type,
      textLineHeight: textLineHeight,
      onTap: onTap,
      color: Colors.red, // Custom color for the handle
    );
  }

  @override
  Widget buildToolbar(BuildContext context, Rect globalEditableRegion, double textLineHeight, TextSelectionDelegate delegate, ClipboardStatusNotifier? clipboardStatus) {
    return CupertinoTextSelectionToolbar(
      globalEditableRegion: globalEditableRegion,
      textLineHeight: textLineHeight,
      delegate: delegate,
      clipboardStatus: clipboardStatus,
      children: [
        CupertinoButton(
          onPressed: () {
            delegate.copySelection(SelectionChangedCause.toolbar);
          },
          child: const Text('Custom Copy', style: TextStyle(color: Colors.blue)),
        ),
        CupertinoButton(
          onPressed: () {
            delegate.pasteText(SelectionChangedCause.toolbar);
          },
          child: const Text('Custom Paste', style: TextStyle(color: Colors.green)),
        ),
      ],
    );
  }
}
