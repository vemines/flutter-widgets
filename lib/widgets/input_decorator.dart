import 'package:flutter/material.dart';

class InputDecoratorScreen extends StatelessWidget {
  const InputDecoratorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InputDecorator Showcase'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("InputDecorator - Basic"),
            const SizedBox(height: 8),
            InputDecorator(
              decoration: const InputDecoration(
                labelText: 'Label Text',
                hintText: 'Hint Text',
              ),
              child: const Text('Input Content'),
            ),
            const SizedBox(height: 20),
            const Text("InputDecorator - Filled"),
            const SizedBox(height: 8),
            InputDecorator(
              decoration: const InputDecoration(
                labelText: 'Filled Label',
                filled: true,
                fillColor: Colors.grey,
              ),
              child: const Text('Filled Input'),
            ),
            const SizedBox(height: 20),
            const Text("InputDecorator - Bordered"),
            const SizedBox(height: 8),
            InputDecorator(
              decoration: const InputDecoration(
                labelText: 'Bordered Label',
                border: OutlineInputBorder(),
              ),
              child: const Text('Bordered Input'),
            ),
            const SizedBox(height: 20),
            const Text("InputDecorator - Rounded Border"),
            const SizedBox(height: 8),
            InputDecorator(
              decoration: InputDecoration(
                labelText: 'Rounded Label',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('Rounded Input'),
            ),
            const SizedBox(height: 20),
            const Text("InputDecorator - Error"),
            const SizedBox(height: 8),
            InputDecorator(
              decoration: const InputDecoration(
                labelText: 'Error Label',
                errorText: 'Error Message',
                border: OutlineInputBorder(),
              ),
              child: const Text('Error Input'),
            ),
            const SizedBox(height: 20),
            const Text("InputDecorator - With Icon"),
            const SizedBox(height: 8),
            InputDecorator(
              decoration: const InputDecoration(
                labelText: 'Icon Label',
                prefixIcon: Icon(Icons.person),
              ),
              child: const Text('Icon Input'),
            ),
            const SizedBox(height: 20),
            const Text("InputDecorator - Dense"),
            const SizedBox(height: 8),
            InputDecorator(
              decoration: const InputDecoration(
                labelText: 'Dense Label',
                isDense: true,
              ),
              child: const Text('Dense Input'),
            ),
            const SizedBox(height: 20),
            const Text("InputDecorator - With Padding"),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InputDecorator(
                decoration: const InputDecoration(
                  labelText: 'Padded Label',
                ),
                child: const Text('Padded Input'),
              ),
            ),
            const SizedBox(height: 20),
            const Text("InputDecorator - Wrapping a Container"),
            const SizedBox(height: 8),
            InputDecorator(
              decoration: const InputDecoration(
                labelText: 'Container Label',
              ),
              child: Container(
                color: Colors.lightBlue.withValues(alpha: 255 * 0.3),
                padding: const EdgeInsets.all(10),
                child: const Text('Wrapped Container'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
