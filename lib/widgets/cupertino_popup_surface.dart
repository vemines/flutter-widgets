import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPopupSurfaceScreen extends StatelessWidget {
  const CupertinoPopupSurfaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoPopupSurface Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoPopupSurface Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("Default CupertinoPopupSurface:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoPopupSurface(
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Default Surface"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoPopupSurface with a child Container:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoPopupSurface(
                child: Container(
                  color: Colors.green.shade100,
                  padding: const EdgeInsets.all(16.0),
                  child: const Text("Container Child"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
