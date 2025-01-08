import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTextFormFieldRowScreen extends StatelessWidget {
  const CupertinoTextFormFieldRowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoTextFormFieldRow Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Default CupertinoTextFormFieldRow:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTextFormFieldRow(
                prefix: const Text('Label'),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextFormFieldRow with Placeholder:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTextFormFieldRow(
                prefix: const Text('Label'),
                placeholder: 'Enter text here',
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextFormFieldRow with Initial Value:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTextFormFieldRow(
                prefix: const Text('Label'),
                initialValue: 'Initial Value',
                onChanged: (value) {
                  // Handle changes
                },
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextFormFieldRow with Keyboard Type:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTextFormFieldRow(
                prefix: const Text('Label'),
                keyboardType: TextInputType.number,
                placeholder: 'Enter number',
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextFormFieldRow with Clear Button:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTextFormFieldRow(
                prefix: const Text('Label'),
                clearButtonMode: OverlayVisibilityMode.editing,
                placeholder: 'Enter text',
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextFormFieldRow with Padding:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CupertinoTextFormFieldRow(
                  prefix: const Text('Label'),
                  placeholder: 'Padded',
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextFormFieldRow with Border:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: CupertinoTextFormFieldRow(
                  prefix: const Text('Label'),
                  placeholder: 'Bordered',
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextFormFieldRow with Custom Text Style:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTextFormFieldRow(
                prefix: const Text('Label'),
                placeholder: 'Custom Style',
                style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextFormFieldRow with Prefix and Suffix:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTextFormFieldRow(
                prefix: const Text('Prefix'),
                suffix: const Icon(CupertinoIcons.info),
                placeholder: 'With Suffix',
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextFormFieldRow with Max Length:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTextFormFieldRow(
                prefix: const Text('Label'),
                maxLength: 10,
                placeholder: 'Max 10 chars',
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextFormFieldRow with Disabled State:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTextFormFieldRow(
                prefix: const Text('Label'),
                enabled: false,
                placeholder: 'Disabled',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
