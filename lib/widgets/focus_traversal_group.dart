import 'package:flutter/material.dart';

class FocusTraversalGroupScreen extends StatelessWidget {
  const FocusTraversalGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FocusTraversalGroup Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("FocusTraversalGroup Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildFocusTraversalGroupVariation(
                    'Default FocusTraversalGroup',
                    FocusTraversalGroup(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(border: Border.all()),
                        child: Column(
                          children: [
                            ElevatedButton(onPressed: () {}, child: const Text("Button 1")),
                            ElevatedButton(onPressed: () {}, child: const Text("Button 2")),
                          ],
                        ),
                      ),
                    ),
                  ),
                  _buildFocusTraversalGroupVariation(
                    'FocusTraversalGroup with custom order',
                    FocusTraversalGroup(
                      policy: OrderedTraversalPolicy(),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(border: Border.all()),
                        child: Column(
                          children: [
                            FocusTraversalOrder(
                                order: NumericFocusOrder(2),
                                child: ElevatedButton(
                                    onPressed: () {}, child: const Text("Button 1"))),
                            FocusTraversalOrder(
                                order: NumericFocusOrder(1),
                                child: ElevatedButton(
                                    onPressed: () {}, child: const Text("Button 2"))),
                          ],
                        ),
                      ),
                    ),
                  ),
                  _buildFocusTraversalGroupVariation(
                    'FocusTraversalGroup with a different focus node',
                    FocusTraversalGroup(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(border: Border.all()),
                        child: Column(
                          children: [
                            ElevatedButton(onPressed: () {}, child: const Text("Button 1")),
                            ElevatedButton(onPressed: () {}, child: const Text("Button 2")),
                          ],
                        ),
                      ),
                    ),
                  ),
                  _buildFocusTraversalGroupVariation(
                    'FocusTraversalGroup with a different focus node and custom order',
                    FocusTraversalGroup(
                      policy: OrderedTraversalPolicy(),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(border: Border.all()),
                        child: Column(
                          children: [
                            FocusTraversalOrder(
                                order: NumericFocusOrder(2),
                                child: ElevatedButton(
                                    onPressed: () {}, child: const Text("Button 1"))),
                            FocusTraversalOrder(
                                order: NumericFocusOrder(1),
                                child: ElevatedButton(
                                    onPressed: () {}, child: const Text("Button 2"))),
                          ],
                        ),
                      ),
                    ),
                  ),
                  _buildFocusTraversalGroupVariation(
                    'FocusTraversalGroup with canRequestFocus false',
                    FocusTraversalGroup(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(border: Border.all()),
                        child: Column(
                          children: [
                            ElevatedButton(onPressed: () {}, child: const Text("Button 1")),
                            ElevatedButton(onPressed: () {}, child: const Text("Button 2")),
                          ],
                        ),
                      ),
                    ),
                  ),
                  _buildFocusTraversalGroupVariation(
                    'FocusTraversalGroup with canRequestFocus true',
                    FocusTraversalGroup(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(border: Border.all()),
                        child: Column(
                          children: [
                            ElevatedButton(onPressed: () {}, child: const Text("Button 1")),
                            ElevatedButton(onPressed: () {}, child: const Text("Button 2")),
                          ],
                        ),
                      ),
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

  Widget _buildFocusTraversalGroupVariation(String name, Widget widget) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        widget,
      ],
    );
  }
}
