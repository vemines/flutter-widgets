import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSliderScreen extends StatelessWidget {
  const CupertinoSliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoSlider Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoSlider - Default"),
              const SizedBox(height: 8),
              const CupertinoSlider(
                value: 0.5,
                onChanged: null,
              ),
              const SizedBox(height: 20),
              const Text("CupertinoSlider - Active Color"),
              const SizedBox(height: 8),
              CupertinoSlider(
                value: 0.7,
                activeColor: Colors.blue,
                onChanged: (value) {},
              ),
              const SizedBox(height: 20),
              const Text("CupertinoSlider - Thumb Color"),
              const SizedBox(height: 8),
              CupertinoSlider(
                value: 0.3,
                thumbColor: Colors.red,
                onChanged: (value) {},
              ),
              const SizedBox(height: 20),
              const Text("CupertinoSlider - Min/Max Values"),
              const SizedBox(height: 8),
              CupertinoSlider(
                value: 25,
                min: 0,
                max: 100,
                onChanged: (value) {},
              ),
              const SizedBox(height: 20),
              const Text("CupertinoSlider - Disabled"),
              const SizedBox(height: 8),
              const CupertinoSlider(
                value: 0.5,
                onChanged: null,
              ),
              const SizedBox(height: 20),
              const Text("CupertinoSlider - With Divisions"),
              const SizedBox(height: 8),
              CupertinoSlider(
                value: 2,
                min: 0,
                max: 5,
                divisions: 5,
                onChanged: (value) {},
              ),
              const SizedBox(height: 20),
              const Text("CupertinoSlider - With Custom Colors"),
              const SizedBox(height: 8),
              CupertinoSlider(
                value: 0.6,
                activeColor: Colors.green,
                thumbColor: Colors.purple,
                onChanged: (value) {},
              ),
              const SizedBox(height: 20),
              const Text("CupertinoSlider - With Large Value"),
              const SizedBox(height: 8),
              CupertinoSlider(
                value: 500,
                min: 0,
                max: 1000,
                onChanged: (value) {},
              ),
              const SizedBox(height: 20),
              const Text("CupertinoSlider - With Small Value"),
              const SizedBox(height: 8),
              CupertinoSlider(
                value: 0.005,
                min: 0,
                max: 0.01,
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
