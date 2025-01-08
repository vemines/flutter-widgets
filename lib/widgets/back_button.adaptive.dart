import 'package:flutter/material.dart';

class BackButtonAdaptiveScreen extends StatelessWidget {
  const BackButtonAdaptiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BackButtonAdaptive Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("BackButtonAdaptive Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildBackButtonVariation(
                    context,
                    "Default BackButton",
                    const BackButton(),
                  ),
                  _buildBackButtonVariation(
                    context,
                    "BackButton with Color",
                    const BackButton(
                      color: Colors.blue,
                    ),
                  ),
                  _buildBackButtonVariation(
                    context,
                    "BackButton with Custom Size (using IconButton)",
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      iconSize: 30,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  _buildBackButtonVariation(
                    context,
                    "BackButton with Custom Padding (using IconButton)",
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                  _buildBackButtonVariation(
                    context,
                    "BackButton with Custom Alignment (using Align)",
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                  _buildBackButtonVariation(
                    context,
                    "BackButton with Custom Theme",
                    Theme(
                      data: ThemeData(
                        iconTheme: const IconThemeData(color: Colors.green, size: 30),
                      ),
                      child: const BackButton(),
                    ),
                  ),
                  // The BackButton itself doesn't wrap another widget. It's a navigation control.
                  // The following code shows how it can be used within a container.
                  _buildBackButtonVariation(
                    context,
                    "BackButton in Container",
                    Container(
                      color: Colors.grey[200],
                      padding: const EdgeInsets.all(8),
                      child: const BackButton(),
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

  Widget _buildBackButtonVariation(BuildContext context, String label, Widget widget) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(message: label, child: widget),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
