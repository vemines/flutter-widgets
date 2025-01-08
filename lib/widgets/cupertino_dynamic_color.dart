import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDynamicColorScreen extends StatelessWidget {
  const CupertinoDynamicColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoDynamicColor Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoDynamicColor - Default"),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Container(
                  color: CupertinoDynamicColor.withBrightness(
                    color: CupertinoColors.systemBlue,
                    darkColor: CupertinoColors.systemGreen,
                  ).resolveFrom(context),
                  height: 20,
                  width: 100,
                ),
              ),
              const SizedBox(height: 16),
              const Text("CupertinoDynamicColor - With Container"),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Container(
                  color: CupertinoDynamicColor.withBrightness(
                    color: CupertinoColors.systemRed,
                    darkColor: CupertinoColors.systemYellow,
                  ).resolveFrom(context),
                  height: 20,
                  width: 100,
                ),
              ),
              const SizedBox(height: 16),
              const Text("CupertinoDynamicColor - With Text"),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Text(
                  "Dynamic Text Color",
                  style: TextStyle(
                    color: CupertinoDynamicColor.withBrightness(
                      color: CupertinoColors.systemPurple,
                      darkColor: CupertinoColors.systemOrange,
                    ).resolveFrom(context),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text("CupertinoDynamicColor - With Icon"),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Icon(
                  CupertinoIcons.heart_fill,
                  color: CupertinoDynamicColor.withBrightness(
                    color: CupertinoColors.systemPink,
                    darkColor: CupertinoColors.systemTeal,
                  ).resolveFrom(context),
                ),
              ),
              const SizedBox(height: 16),
              const Text("CupertinoDynamicColor - With Custom Brightness"),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Container(
                  color: CupertinoDynamicColor.withBrightness(
                    color: CupertinoColors.systemGrey,
                    darkColor: CupertinoColors.systemGrey2,
                  ).resolveFrom(context),
                  height: 20,
                  width: 100,
                ),
              ),
              const SizedBox(height: 16),
              const Text("CupertinoDynamicColor - With Different Color"),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Container(
                  color: CupertinoDynamicColor.withBrightness(
                    color: CupertinoColors.systemIndigo,
                    darkColor: CupertinoColors.systemBrown,
                  ).resolveFrom(context),
                  height: 20,
                  width: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
