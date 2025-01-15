import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSlidingSegmentedControlScreen extends StatelessWidget {
  const CupertinoSlidingSegmentedControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoSlidingSegmentedControl Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('CupertinoSlidingSegmentedControl',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const _BasicSegmentedControl(),
              const SizedBox(height: 20),
              const Text('Segmented Control with Different Colors',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const _ColoredSegmentedControl(),
              const SizedBox(height: 20),
              const Text('Segmented Control with Custom Padding',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const _PaddedSegmentedControl(),
              const SizedBox(height: 20),
              const Text('Segmented Control with Custom Text Styles',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const _TextStyledSegmentedControl(),
              const SizedBox(height: 20),
              const Text('Segmented Control with Initial Value',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const _InitialValueSegmentedControl(),
              const SizedBox(height: 20),
              const Text('Segmented Control with Disabled Segment',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const _DisabledSegmentedControl(),
              const SizedBox(height: 20),
              const Text('Segmented Control with Custom Children',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const _CustomChildrenSegmentedControl(),
            ],
          ),
        ),
      ),
    );
  }
}

class _BasicSegmentedControl extends StatefulWidget {
  const _BasicSegmentedControl();

  @override
  _BasicSegmentedControlState createState() => _BasicSegmentedControlState();
}

class _BasicSegmentedControlState extends State<_BasicSegmentedControl> {
  int? _currentValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Segmented Control'),
        CupertinoSlidingSegmentedControl<int>(
          children: const {
            0: Text('Option 1'),
            1: Text('Option 2'),
            2: Text('Option 3'),
          },
          onValueChanged: (value) {
            setState(() {
              _currentValue = value;
            });
          },
          groupValue: _currentValue,
        ),
        if (_currentValue != null) Text('Selected: Option ${_currentValue! + 1}'),
      ],
    );
  }
}

class _ColoredSegmentedControl extends StatefulWidget {
  const _ColoredSegmentedControl();

  @override
  _ColoredSegmentedControlState createState() => _ColoredSegmentedControlState();
}

class _ColoredSegmentedControlState extends State<_ColoredSegmentedControl> {
  int? _currentValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Colored Segmented Control'),
        CupertinoSlidingSegmentedControl<int>(
          thumbColor: Colors.blue,
          backgroundColor: Colors.grey.shade200,
          children: const {
            0: Text('Option 1', style: TextStyle(color: Colors.black)),
            1: Text('Option 2', style: TextStyle(color: Colors.black)),
            2: Text('Option 3', style: TextStyle(color: Colors.black)),
          },
          onValueChanged: (value) {
            setState(() {
              _currentValue = value;
            });
          },
          groupValue: _currentValue,
        ),
        if (_currentValue != null) Text('Selected: Option ${_currentValue! + 1}'),
      ],
    );
  }
}

class _PaddedSegmentedControl extends StatefulWidget {
  const _PaddedSegmentedControl();

  @override
  _PaddedSegmentedControlState createState() => _PaddedSegmentedControlState();
}

class _PaddedSegmentedControlState extends State<_PaddedSegmentedControl> {
  int? _currentValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Padded Segmented Control'),
        CupertinoSlidingSegmentedControl<int>(
          padding: const EdgeInsets.all(10),
          children: const {
            0: Text('Option 1'),
            1: Text('Option 2'),
            2: Text('Option 3'),
          },
          onValueChanged: (value) {
            setState(() {
              _currentValue = value;
            });
          },
          groupValue: _currentValue,
        ),
        if (_currentValue != null) Text('Selected: Option ${_currentValue! + 1}'),
      ],
    );
  }
}

class _TextStyledSegmentedControl extends StatefulWidget {
  const _TextStyledSegmentedControl();

  @override
  _TextStyledSegmentedControlState createState() => _TextStyledSegmentedControlState();
}

class _TextStyledSegmentedControlState extends State<_TextStyledSegmentedControl> {
  int? _currentValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Text Styled Segmented Control'),
        CupertinoSlidingSegmentedControl<int>(
          children: const {
            0: Text('Option 1', style: TextStyle(fontWeight: FontWeight.bold)),
            1: Text('Option 2', style: TextStyle(fontStyle: FontStyle.italic)),
            2: Text('Option 3', style: TextStyle(fontSize: 18)),
          },
          onValueChanged: (value) {
            setState(() {
              _currentValue = value;
            });
          },
          groupValue: _currentValue,
        ),
        if (_currentValue != null) Text('Selected: Option ${_currentValue! + 1}'),
      ],
    );
  }
}

class _InitialValueSegmentedControl extends StatefulWidget {
  const _InitialValueSegmentedControl();

  @override
  _InitialValueSegmentedControlState createState() => _InitialValueSegmentedControlState();
}

class _InitialValueSegmentedControlState extends State<_InitialValueSegmentedControl> {
  int _currentValue = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Initial Value Segmented Control'),
        CupertinoSlidingSegmentedControl<int>(
          children: const {
            0: Text('Option 1'),
            1: Text('Option 2'),
            2: Text('Option 3'),
          },
          onValueChanged: (value) {
            setState(() {
              _currentValue = value!;
            });
          },
          groupValue: _currentValue,
        ),
        Text('Selected: Option ${_currentValue + 1}'),
      ],
    );
  }
}

class _DisabledSegmentedControl extends StatefulWidget {
  const _DisabledSegmentedControl();

  @override
  _DisabledSegmentedControlState createState() => _DisabledSegmentedControlState();
}

class _DisabledSegmentedControlState extends State<_DisabledSegmentedControl> {
  int? _currentValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Disabled Segmented Control'),
        CupertinoSlidingSegmentedControl<int>(
          children: const {
            0: Text('Option 1'),
            1: Text('Option 2'),
            2: Text('Option 3'),
          },
          onValueChanged: (value) {
            setState(() {
              _currentValue = value;
            });
          },
          groupValue: _currentValue,
          disabledChildren: {_currentValue!},
        ),
        if (_currentValue != null) Text('Selected: Option ${_currentValue! + 1}'),
      ],
    );
  }
}

class _CustomChildrenSegmentedControl extends StatefulWidget {
  const _CustomChildrenSegmentedControl();

  @override
  _CustomChildrenSegmentedControlState createState() => _CustomChildrenSegmentedControlState();
}

class _CustomChildrenSegmentedControlState extends State<_CustomChildrenSegmentedControl> {
  int? _currentValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Custom Children Segmented Control'),
        CupertinoSlidingSegmentedControl<int>(
          children: const {
            0: Icon(Icons.home),
            1: Icon(Icons.settings),
            2: Icon(Icons.person),
          },
          onValueChanged: (value) {
            setState(() {
              _currentValue = value;
            });
          },
          groupValue: _currentValue,
        ),
        if (_currentValue != null) Text('Selected: Option ${_currentValue! + 1}'),
      ],
    );
  }
}
