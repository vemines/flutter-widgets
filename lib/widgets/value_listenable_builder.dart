import 'package:flutter/material.dart';

class ValueListenableBuilderScreen extends StatelessWidget {
  const ValueListenableBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ValueListenableBuilder Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ValueListenableBuilder Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              _buildValueListenableBuilderVariation1(),
              const SizedBox(height: 16),
              _buildValueListenableBuilderVariation2(),
              const SizedBox(height: 16),
              _buildValueListenableBuilderVariation3(),
              const SizedBox(height: 16),
              _buildValueListenableBuilderVariation4(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildValueListenableBuilderVariation1() {
    final ValueNotifier<int> counter = ValueNotifier<int>(0);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("ValueListenableBuilder - Counter",
            style: TextStyle(fontWeight: FontWeight.bold)),
        ValueListenableBuilder<int>(
          valueListenable: counter,
          builder: (BuildContext context, int value, Widget? child) {
            return Text('Count: $value');
          },
        ),
        ElevatedButton(
          onPressed: () => counter.value++,
          child: const Text('Increment'),
        ),
      ],
    );
  }

  Widget _buildValueListenableBuilderVariation2() {
    final ValueNotifier<String> textValue = ValueNotifier<String>("Initial Text");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("ValueListenableBuilder - Text Update",
            style: TextStyle(fontWeight: FontWeight.bold)),
        ValueListenableBuilder<String>(
          valueListenable: textValue,
          builder: (BuildContext context, String value, Widget? child) {
            return Text('Text: $value', style: const TextStyle(fontSize: 18, color: Colors.blue));
          },
        ),
        TextField(
          onChanged: (newValue) => textValue.value = newValue,
          decoration: const InputDecoration(hintText: "Enter new text"),
        ),
      ],
    );
  }

  Widget _buildValueListenableBuilderVariation3() {
    final ValueNotifier<bool> toggle = ValueNotifier<bool>(false);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("ValueListenableBuilder - Toggle Visibility",
            style: TextStyle(fontWeight: FontWeight.bold)),
        ValueListenableBuilder<bool>(
          valueListenable: toggle,
          builder: (BuildContext context, bool value, Widget? child) {
            return Visibility(
              visible: value,
              child:
                  const Text("I am visible!", style: TextStyle(fontSize: 20, color: Colors.green)),
            );
          },
        ),
        ElevatedButton(
          onPressed: () => toggle.value = !toggle.value,
          child: const Text('Toggle Visibility'),
        ),
      ],
    );
  }

  Widget _buildValueListenableBuilderVariation4() {
    final ValueNotifier<double> sliderValue = ValueNotifier<double>(0.5);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("ValueListenableBuilder - Slider Value",
            style: TextStyle(fontWeight: FontWeight.bold)),
        ValueListenableBuilder<double>(
          valueListenable: sliderValue,
          builder: (BuildContext context, double value, Widget? child) {
            return Text('Slider Value: ${value.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 16, color: Colors.purple));
          },
        ),
        Slider(
          value: sliderValue.value,
          onChanged: (newValue) => sliderValue.value = newValue,
        ),
      ],
    );
  }
}
