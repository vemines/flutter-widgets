import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicatorScreen extends StatelessWidget {
  const CupertinoActivityIndicatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoActivityIndicator Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Default CupertinoActivityIndicator:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const CupertinoActivityIndicator(),
              const SizedBox(height: 16),
              const Text("CupertinoActivityIndicator - Large Size:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const CupertinoActivityIndicator(radius: 20),
              const SizedBox(height: 16),
              const Text("CupertinoActivityIndicator - Small Size:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const CupertinoActivityIndicator(radius: 10),
              const SizedBox(height: 16),
              const Text("CupertinoActivityIndicator - Color Red:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const CupertinoActivityIndicator(color: Colors.red),
              const SizedBox(height: 16),
              const Text("CupertinoActivityIndicator - Color Blue:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const CupertinoActivityIndicator(color: Colors.blue),
              const SizedBox(height: 16),
              const Text("CupertinoActivityIndicator - Animating True:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const CupertinoActivityIndicator(animating: true),
              const SizedBox(height: 16),
              const Text("CupertinoActivityIndicator - Animating False:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const CupertinoActivityIndicator(animating: false),
              const SizedBox(height: 16),
              const Text("CupertinoActivityIndicator - With Container:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: const CupertinoActivityIndicator(),
              ),
              const SizedBox(height: 16),
              const Text("CupertinoActivityIndicator - With Text:", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Loading: "),
                  const CupertinoActivityIndicator(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
