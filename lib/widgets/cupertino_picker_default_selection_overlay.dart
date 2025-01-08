import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPickerDefaultSelectionOverlayScreen extends StatelessWidget {
  const CupertinoPickerDefaultSelectionOverlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoPickerDefaultSelectionOverlay Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Default Overlay", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 50,
                child: Center(child: CupertinoPickerDefaultSelectionOverlay()),
              ),
              const SizedBox(height: 20),
              const Text("Overlay with Custom Background Color",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 50,
                child: Center(
                    child: CupertinoPickerDefaultSelectionOverlay(
                  background: Colors.red.withValues(alpha: 255 * 0.5),
                )),
              ),
              const SizedBox(height: 20),
              const Text("Overlay with Custom Height",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 80,
                child: Center(
                    child: CupertinoPickerDefaultSelectionOverlay(
                  background: Colors.transparent,
                )),
              ),
              const SizedBox(height: 20),
              const Text("Overlay with Custom Height and Background",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 80,
                child: Center(
                    child: CupertinoPickerDefaultSelectionOverlay(
                  background: Colors.yellow.withValues(alpha: 255 * 0.5),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
