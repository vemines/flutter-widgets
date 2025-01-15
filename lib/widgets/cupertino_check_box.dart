import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoCheckBoxScreen extends StatelessWidget {
  const CupertinoCheckBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoCheckBox Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Cupertino Checkbox", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const _CupertinoCheckBoxVariation(
                description: "Checkbox",
                child: CupertinoCheckbox(value: false, onChanged: null),
              ),
              const SizedBox(height: 16),
              const Text("Cupertino Checkbox Variations",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _CupertinoCheckBoxVariation(
                    description: "Checked Checkbox",
                    child: CupertinoCheckbox(value: true, onChanged: (bool? value) {}),
                  ),
                  _CupertinoCheckBoxVariation(
                    description: "Disabled Checkbox",
                    child: CupertinoCheckbox(value: false, onChanged: null),
                  ),
                  _CupertinoCheckBoxVariation(
                    description: "Custom Color Checkbox",
                    child: CupertinoCheckbox(
                      value: false,
                      onChanged: (bool? value) {},
                      activeColor: Colors.blue,
                      checkColor: Colors.white,
                    ),
                  ),
                  _CupertinoCheckBoxVariation(
                    description: "Large Checkbox",
                    child: Transform.scale(
                      scale: 1.5,
                      child: CupertinoCheckbox(value: false, onChanged: (bool? value) {}),
                    ),
                  ),
                  _CupertinoCheckBoxVariation(
                    description: "Small Checkbox",
                    child: Transform.scale(
                      scale: 0.7,
                      child: CupertinoCheckbox(value: false, onChanged: (bool? value) {}),
                    ),
                  ),
                  _CupertinoCheckBoxVariation(
                    description: "Custom Border Color",
                    child: CupertinoCheckbox(
                      value: false,
                      onChanged: (bool? value) {},
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      side: const BorderSide(color: Colors.red, width: 2),
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
}

class _CupertinoCheckBoxVariation extends StatelessWidget {
  final String description;
  final Widget child;

  const _CupertinoCheckBoxVariation({
    required this.description,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Tooltip(message: description, child: Text(description)),
        child,
      ],
    );
  }
}
