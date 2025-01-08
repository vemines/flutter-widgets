import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTextFieldScreen extends StatelessWidget {
  const CupertinoTextFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoTextField Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoTextField - Default"),
              const SizedBox(height: 8),
              const CupertinoTextField(),
              const SizedBox(height: 20),
              const Text("CupertinoTextField - Placeholder"),
              const SizedBox(height: 8),
              const CupertinoTextField(
                placeholder: 'Enter text here',
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextField - Colored Background"),
              const SizedBox(height: 8),
              CupertinoTextField(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextField - Bordered"),
              const SizedBox(height: 8),
              CupertinoTextField(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextField - Padding"),
              const SizedBox(height: 8),
              const CupertinoTextField(
                padding: EdgeInsets.all(16),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextField - Text Style"),
              const SizedBox(height: 8),
              const CupertinoTextField(
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextField - Prefix Icon"),
              const SizedBox(height: 8),
              const CupertinoTextField(
                prefix: Icon(CupertinoIcons.search),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextField - Suffix Icon"),
              const SizedBox(height: 8),
              const CupertinoTextField(
                suffix: Icon(CupertinoIcons.clear_circled_solid),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextField - Prefix and Suffix Icons"),
              const SizedBox(height: 8),
              const CupertinoTextField(
                prefix: Icon(CupertinoIcons.person_fill),
                suffix: Icon(CupertinoIcons.checkmark_circle_fill),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextField - Keyboard Type Number"),
              const SizedBox(height: 8),
              const CupertinoTextField(
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextField - Max Length 10"),
              const SizedBox(height: 8),
              const CupertinoTextField(
                maxLength: 10,
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextField - Obscure Text"),
              const SizedBox(height: 8),
              const CupertinoTextField(
                obscureText: true,
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextField - Enabled False"),
              const SizedBox(height: 8),
              const CupertinoTextField(
                enabled: false,
                placeholder: 'Disabled',
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTextField - With Container"),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                child: const CupertinoTextField(
                  placeholder: 'Wrapped in Container',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
