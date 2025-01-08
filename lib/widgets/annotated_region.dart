import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AnnotatedRegionScreen extends StatelessWidget {
  const AnnotatedRegionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnnotatedRegion Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("AnnotatedRegion Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              const Text("AnnotatedRegion - Basic Example (No Child)"),
              const SizedBox(height: 16),
              const Text("AnnotatedRegion - With Container Child"),
              AnnotatedRegion<SystemUiOverlayStyle>(
                value: const SystemUiOverlayStyle(
                  statusBarColor: Colors.blue,
                  statusBarIconBrightness: Brightness.light,
                ),
                child: Container(
                  color: Colors.grey[200],
                  padding: const EdgeInsets.all(20),
                  child: const Text("Status Bar is Blue with Light Icons"),
                ),
              ),
              const SizedBox(height: 16),
              const Text("AnnotatedRegion - With Text Child"),
              AnnotatedRegion<SystemUiOverlayStyle>(
                value: const SystemUiOverlayStyle(
                  statusBarColor: Colors.green,
                  statusBarIconBrightness: Brightness.dark,
                ),
                child: Container(
                  color: Colors.grey[200],
                  padding: const EdgeInsets.all(20),
                  child: const Text("Status Bar is Green with Dark Icons"),
                ),
              ),
              const SizedBox(height: 16),
              const Text("AnnotatedRegion - Different Status Bar Color"),
              AnnotatedRegion<SystemUiOverlayStyle>(
                value: const SystemUiOverlayStyle(
                  statusBarColor: Colors.red,
                  statusBarIconBrightness: Brightness.light,
                ),
                child: Container(
                  color: Colors.grey[200],
                  padding: const EdgeInsets.all(20),
                  child: const Text("Status Bar is Red with Light Icons"),
                ),
              ),
              const SizedBox(height: 16),
              const Text("AnnotatedRegion - Different Status Bar Icon Brightness"),
              AnnotatedRegion<SystemUiOverlayStyle>(
                value: const SystemUiOverlayStyle(
                  statusBarColor: Colors.white,
                  statusBarIconBrightness: Brightness.dark,
                ),
                child: Container(
                  color: Colors.grey[200],
                  padding: const EdgeInsets.all(20),
                  child: const Text("Status Bar is White with Dark Icons"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
