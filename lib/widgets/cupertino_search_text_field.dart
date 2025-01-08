import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSearchTextFieldScreen extends StatelessWidget {
  const CupertinoSearchTextFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoSearchTextField Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Default CupertinoSearchTextField", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const CupertinoSearchTextField(),
              const SizedBox(height: 20),

              const Text("CupertinoSearchTextField - Custom Colors", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoSearchTextField(
                backgroundColor: Colors.grey[200],
                placeholder: 'Search...',
                style: const TextStyle(color: Colors.black),
                prefixIcon: const Icon(CupertinoIcons.search, color: Colors.blue),
                suffixIcon: const Icon(CupertinoIcons.clear_circled_solid, color: Colors.red),
              ),
              const SizedBox(height: 20),

              const Text("CupertinoSearchTextField - Custom Padding", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: CupertinoSearchTextField(
                  placeholder: 'Search...',
                  padding: const EdgeInsets.all(12),
                ),
              ),
              const SizedBox(height: 20),

              const Text("CupertinoSearchTextField - Custom Border Radius", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoSearchTextField(
                placeholder: 'Search...',
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.green, width: 2),
                ),
              ),
              const SizedBox(height: 20),

              const Text("CupertinoSearchTextField - Custom Text Style", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoSearchTextField(
                placeholder: 'Search...',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.purple),
              ),
              const SizedBox(height: 20),

              const Text("CupertinoSearchTextField - With Initial Value", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoSearchTextField(
                placeholder: 'Search...',
                controller: TextEditingController(text: 'Initial Search'),
              ),
              const SizedBox(height: 20),

              const Text("CupertinoSearchTextField - Disabled", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoSearchTextField(
                placeholder: 'Search...',
                enabled: false,
              ),
              const SizedBox(height: 20),

              const Text("CupertinoSearchTextField - Wrapped in Container", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                child: const CupertinoSearchTextField(
                  placeholder: 'Search...',
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
