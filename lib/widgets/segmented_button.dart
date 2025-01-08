import 'package:flutter/material.dart';

class SegmentedButtonScreen extends StatelessWidget {
  const SegmentedButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SegmentedButton Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("SegmentedButton Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("Basic SegmentedButton"),
              const SizedBox(height: 8),
              SegmentedButton<int>(
                segments: const <ButtonSegment<int>>[
                  ButtonSegment<int>(value: 0, label: Text('Option 1')),
                  ButtonSegment<int>(value: 1, label: Text('Option 2')),
                  ButtonSegment<int>(value: 2, label: Text('Option 3')),
                ],
                selected: const {0},
                onSelectionChanged: (Set<int> newSelection) {},
              ),
              const SizedBox(height: 20),
              const Text("SegmentedButton - Colored"),
              const SizedBox(height: 8),
              SegmentedButton<int>(
                segments: const <ButtonSegment<int>>[
                  ButtonSegment<int>(value: 0, label: Text('Option A')),
                  ButtonSegment<int>(value: 1, label: Text('Option B')),
                  ButtonSegment<int>(value: 2, label: Text('Option C')),
                ],
                selected: const {1},
                onSelectionChanged: (Set<int> newSelection) {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                    (Set<WidgetState> states) {
                      if (states.contains(WidgetState.selected)) {
                        return Colors.blue[100];
                      }
                      return null;
                    },
                  ),
                  foregroundColor: WidgetStateProperty.resolveWith<Color?>(
                    (Set<WidgetState> states) {
                      if (states.contains(WidgetState.selected)) {
                        return Colors.black;
                      }
                      return null;
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("SegmentedButton - Icon"),
              const SizedBox(height: 8),
              SegmentedButton<int>(
                segments: const <ButtonSegment<int>>[
                  ButtonSegment<int>(value: 0, icon: Icon(Icons.home), label: Text('Home')),
                  ButtonSegment<int>(value: 1, icon: Icon(Icons.settings), label: Text('Settings')),
                  ButtonSegment<int>(value: 2, icon: Icon(Icons.person), label: Text('Profile')),
                ],
                selected: const {1},
                onSelectionChanged: (Set<int> newSelection) {},
              ),
              const SizedBox(height: 20),
              const Text("SegmentedButton - Custom Border"),
              const SizedBox(height: 8),
              SegmentedButton<int>(
                segments: const <ButtonSegment<int>>[
                  ButtonSegment<int>(value: 0, label: Text('One')),
                  ButtonSegment<int>(value: 1, label: Text('Two')),
                  ButtonSegment<int>(value: 2, label: Text('Three')),
                ],
                selected: const {2},
                onSelectionChanged: (Set<int> newSelection) {},
                style: ButtonStyle(
                  side: WidgetStateProperty.all(const BorderSide(color: Colors.red, width: 2)),
                  shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(height: 20),
              const Text("SegmentedButton - Larger Text"),
              const SizedBox(height: 8),
              SegmentedButton<int>(
                segments: const <ButtonSegment<int>>[
                  ButtonSegment<int>(
                      value: 0, label: Text('Large 1', style: TextStyle(fontSize: 18))),
                  ButtonSegment<int>(
                      value: 1, label: Text('Large 2', style: TextStyle(fontSize: 18))),
                  ButtonSegment<int>(
                      value: 2, label: Text('Large 3', style: TextStyle(fontSize: 18))),
                ],
                selected: const {0},
                onSelectionChanged: (Set<int> newSelection) {},
              ),
              const SizedBox(height: 20),
              const Text("SegmentedButton - Wrapped in Padding"),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SegmentedButton<int>(
                  segments: const <ButtonSegment<int>>[
                    ButtonSegment<int>(value: 0, label: Text('A')),
                    ButtonSegment<int>(value: 1, label: Text('B')),
                  ],
                  selected: const {0},
                  onSelectionChanged: (Set<int> newSelection) {},
                ),
              ),
              const SizedBox(height: 20),
              const Text("SegmentedButton - Wrapped in Align"),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: SegmentedButton<int>(
                  segments: const <ButtonSegment<int>>[
                    ButtonSegment<int>(value: 0, label: Text('Left')),
                    ButtonSegment<int>(value: 1, label: Text('Right')),
                  ],
                  selected: const {1},
                  onSelectionChanged: (Set<int> newSelection) {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
