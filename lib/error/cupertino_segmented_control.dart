import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSegmentedControlScreen extends StatelessWidget {
  const CupertinoSegmentedControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoSegmentedControl Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Basic CupertinoSegmentedControl", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildSegmentedControl(
                {0: "Option 1", 1: "Option 2", 2: "Option 3"},
                0,
                (int value) {},
                "Basic Control",
              ),
              const SizedBox(height: 20),
              const Text("Segmented Control with Different Colors", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildSegmentedControl(
                {0: "Option A", 1: "Option B", 2: "Option C"},
                1,
                (int value) {},
                "Colored Control",
                selectedColor: CupertinoColors.activeBlue,
                unselectedColor: CupertinoColors.systemGrey,
              ),
              const SizedBox(height: 20),
              const Text("Segmented Control with Padding", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildSegmentedControl(
                {0: "One", 1: "Two", 2: "Three"},
                2,
                (int value) {},
                "Padded Control",
                padding: const EdgeInsets.all(10),
              ),
              const SizedBox(height: 20),
              const Text("Segmented Control with Border Radius", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildSegmentedControl(
                {0: "Item 1", 1: "Item 2", 2: "Item 3"},
                0,
                (int value) {},
                "Rounded Control",
                borderRadius: const BorderRadius.all(Radius.circular(15)),
              ),
              const SizedBox(height: 20),
              const Text("Segmented Control with Different Text Styles", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildSegmentedControl(
                {0: "First", 1: "Second", 2: "Third"},
                1,
                (int value) {},
                "Styled Text Control",
                textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Text("Segmented Control with Custom Text Colors", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildSegmentedControl(
                {0: "Red", 1: "Green", 2: "Blue"},
                2,
                (int value) {},
                "Custom Text Color Control",
                selectedTextStyle: const TextStyle(color: Colors.white),
                unselectedTextStyle: const TextStyle(color: Colors.black),
              ),
              const SizedBox(height: 20),
              const Text("Segmented Control with Custom Text Colors and Background", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildSegmentedControl(
                {0: "Red", 1: "Green", 2: "Blue"},
                2,
                (int value) {},
                "Custom Text Color and Background Control",
                selectedTextStyle: const TextStyle(color: Colors.white),
                unselectedTextStyle: const TextStyle(color: Colors.black),
                selectedColor: Colors.red,
                unselectedColor: Colors.grey[300],
              ),
              const SizedBox(height: 20),
              const Text("Segmented Control with Custom Text Colors and Background and Border Radius", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildSegmentedControl(
                {0: "Red", 1: "Green", 2: "Blue"},
                2,
                (int value) {},
                "Custom Text Color and Background and Border Radius Control",
                selectedTextStyle: const TextStyle(color: Colors.white),
                unselectedTextStyle: const TextStyle(color: Colors.black),
                selectedColor: Colors.red,
                unselectedColor: Colors.grey[300],
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSegmentedControl(
    Map<int, String> children,
    int groupValue,
    ValueChanged<int> onValueChanged,
    String label,
    {Color? selectedColor,
    Color? unselectedColor,
    EdgeInsetsGeometry? padding,
    BorderRadius? borderRadius,
    TextStyle? textStyle,
    TextStyle? selectedTextStyle,
    TextStyle? unselectedTextStyle}
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 4),
        CupertinoSegmentedControl<int>(
          children: children,
          groupValue: groupValue,
          onValueChanged: onValueChanged,
          selectedColor: selectedColor,
          unselectedColor: unselectedColor,
          padding: padding ?? const EdgeInsets.all(8),
          borderRadius: borderRadius ?? const BorderRadius.all(Radius.circular(8)),
          textStyle: textStyle,
          selectedTextStyle: selectedTextStyle,
          unselectedTextStyle: unselectedTextStyle,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
