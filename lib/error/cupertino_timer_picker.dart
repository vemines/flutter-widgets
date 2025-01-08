import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTimerPickerScreen extends StatelessWidget {
  const CupertinoTimerPickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoTimerPicker Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoTimerPicker - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Center(
                child: CupertinoTimerPicker(
                  onTimerDurationChanged: (Duration duration) {},
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTimerPicker - With Initial Duration", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Center(
                child: CupertinoTimerPicker(
                  initialTimerDuration: const Duration(hours: 1, minutes: 30),
                  onTimerDurationChanged: (Duration duration) {},
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTimerPicker - With Mode Hours and Minutes", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Center(
                child: CupertinoTimerPicker(
                  mode: CupertinoTimerPickerMode.hm,
                  onTimerDurationChanged: (Duration duration) {},
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTimerPicker - With Mode Minutes and Seconds", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Center(
                child: CupertinoTimerPicker(
                  mode: CupertinoTimerPickerMode.ms,
                  onTimerDurationChanged: (Duration duration) {},
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTimerPicker - With Background Color", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Center(
                child: Container(
                  color: Colors.grey[200],
                  child: CupertinoTimerPicker(
                    onTimerDurationChanged: (Duration duration) {},
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTimerPicker - With Text Style", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Center(
                child: CupertinoTheme(
                  data: CupertinoThemeData(
                    textTheme: CupertinoTextThemeData(
                      pickerTextStyle: const TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                  ),
                  child: CupertinoTimerPicker(
                    onTimerDurationChanged: (Duration duration) {},
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTimerPicker - With Diameter Ratio", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Center(
                child: CupertinoTimerPicker(
                  diameterRatio: 1.5,
                  onTimerDurationChanged: (Duration duration) {},
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTimerPicker - With Item Extent", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Center(
                child: CupertinoTimerPicker(
                  itemExtent: 40,
                  onTimerDurationChanged: (Duration duration) {},
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTimerPicker - Wrapped in SizedBox", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Center(
                child: SizedBox(
                  width: 200,
                  height: 150,
                  child: CupertinoTimerPicker(
                    onTimerDurationChanged: (Duration duration) {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
