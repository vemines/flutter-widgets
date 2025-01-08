import 'package:flutter/material.dart';

class DividerThemeScreen extends StatelessWidget {
  const DividerThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DividerTheme Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("DividerTheme - Default"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(dividerTheme: const DividerThemeData()),
                child: const Divider(),
              ),
              const SizedBox(height: 16),
              const Text("DividerTheme - Color Red"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(dividerTheme: const DividerThemeData(color: Colors.red)),
                child: const Divider(),
              ),
              const SizedBox(height: 16),
              const Text("DividerTheme - Thickness 5"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(dividerTheme: const DividerThemeData(thickness: 5)),
                child: const Divider(),
              ),
              const SizedBox(height: 16),
              const Text("DividerTheme - Indent 20, EndIndent 20"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(dividerTheme: const DividerThemeData(indent: 20, endIndent: 20)),
                child: const Divider(),
              ),
              const SizedBox(height: 16),
              const Text("DividerTheme - Space 20"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(dividerTheme: const DividerThemeData(space: 20)),
                child: const Divider(),
              ),
              const SizedBox(height: 16),
              const Text("DividerTheme - Color Blue, Thickness 3, Indent 10, EndIndent 10"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(dividerTheme: const DividerThemeData(color: Colors.blue, thickness: 3, indent: 10, endIndent: 10)),
                child: const Divider(),
              ),
              const SizedBox(height: 16),
              const Text("DividerTheme - With Container"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(dividerTheme: const DividerThemeData(color: Colors.green, thickness: 2)),
                child: Container(
                  color: Colors.grey[200],
                  child: const Column(
                    children: [
                      Text("Above Divider"),
                      Divider(),
                      Text("Below Divider"),
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
