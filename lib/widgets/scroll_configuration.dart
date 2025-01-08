import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/gestures.dart';

class ScrollConfigurationScreen extends StatelessWidget {
  const ScrollConfigurationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScrollConfiguration Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ScrollConfiguration - Default"),
              ScrollConfiguration(
                behavior: const MaterialScrollBehavior(),
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ScrollConfiguration - Custom Behavior"),
              ScrollConfiguration(
                behavior: const ScrollBehavior().copyWith(
                  physics: const BouncingScrollPhysics(),
                  dragDevices: {
                    PointerDeviceKind.mouse,
                    PointerDeviceKind.touch,
                    PointerDeviceKind.stylus
                  },
                ),
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ScrollConfiguration - AlwaysScrollableScrollPhysics"),
              ScrollConfiguration(
                behavior: const ScrollBehavior().copyWith(
                  physics: const AlwaysScrollableScrollPhysics(),
                ),
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ScrollConfiguration - Wrapped Text"),
              ScrollConfiguration(
                behavior: const MaterialScrollBehavior(),
                child: const Text("This is some text inside a ScrollConfiguration"),
              ),
              const SizedBox(height: 20),
              const Text("ScrollConfiguration - Wrapped Container"),
              ScrollConfiguration(
                behavior: const MaterialScrollBehavior(),
                child: Container(
                  color: Colors.blue.withValues(alpha: 255 * 0.2),
                  padding: const EdgeInsets.all(10),
                  child: const Text("This is a container inside a ScrollConfiguration"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
