import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoRadioScreen extends StatelessWidget {
  const CupertinoRadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoRadio Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoRadio", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoRadioExample(
                value: true,
                groupValue: true,
                label: 'Selected',
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
              const Text("CupertinoRadio Variations",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  CupertinoRadioExample(
                    value: false,
                    groupValue: true,
                    label: 'Unselected',
                    onChanged: (value) {},
                  ),
                  CupertinoRadioExample(
                    value: true,
                    groupValue: true,
                    label: 'Selected',
                    onChanged: (value) {},
                  ),
                  CupertinoRadioExample(
                    value: false,
                    groupValue: false,
                    label: 'Unselected (Group False)',
                    onChanged: (value) {},
                  ),
                  CupertinoRadioExample(
                    value: true,
                    groupValue: false,
                    label: 'Selected (Group False)',
                    onChanged: (value) {},
                  ),
                  CupertinoRadioExample(
                    value: true,
                    groupValue: true,
                    label: 'Selected - Custom Color',
                    activeColor: Colors.red,
                    onChanged: (value) {},
                  ),
                  CupertinoRadioExample(
                    value: false,
                    groupValue: true,
                    label: 'Unselected - Custom Color',
                    activeColor: Colors.green,
                    onChanged: (value) {},
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

class CupertinoRadioExample extends StatefulWidget {
  final bool value;
  final bool groupValue;
  final String label;
  final Color? activeColor;
  final ValueChanged<bool?> onChanged;

  const CupertinoRadioExample({
    super.key,
    required this.value,
    required this.groupValue,
    required this.label,
    this.activeColor,
    required this.onChanged,
  });

  @override
  State<CupertinoRadioExample> createState() => _CupertinoRadioExampleState();
}

class _CupertinoRadioExampleState extends State<CupertinoRadioExample> {
  late bool _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CupertinoRadio(
          value: widget.value,
          groupValue: _selectedValue,
          onChanged: (bool? newValue) {
            if (newValue != null) {
              setState(() {
                _selectedValue = newValue;
              });
              widget.onChanged(newValue);
            }
          },
          activeColor: widget.activeColor,
        ),
        const SizedBox(width: 8),
        Text(widget.label),
      ],
    );
  }
}
