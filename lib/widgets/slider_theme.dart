import 'package:flutter/material.dart';

class SliderThemeScreen extends StatelessWidget {
  const SliderThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SliderTheme Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("SliderTheme - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              SliderTheme(
                data: SliderThemeData(),
                child: Slider(
                  value: 0.5,
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(height: 20),
              const Text("SliderTheme - Custom Colors",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SliderTheme(
                data: SliderThemeData(
                  activeTrackColor: Colors.blue,
                  inactiveTrackColor: Colors.grey[300],
                  thumbColor: Colors.red,
                  overlayColor: Colors.red.withValues(alpha: 255 * 0.3),
                ),
                child: Slider(
                  value: 0.7,
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(height: 20),
              const Text("SliderTheme - Custom Thumb Shape",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SliderTheme(
                data: SliderThemeData(
                  thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
                ),
                child: Slider(
                  value: 0.3,
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(height: 20),
              const Text("SliderTheme - Custom Track Height",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SliderTheme(
                data: SliderThemeData(
                  trackHeight: 10.0,
                ),
                child: Slider(
                  value: 0.9,
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(height: 20),
              const Text("SliderTheme - Custom Overlay Shape",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SliderTheme(
                data: SliderThemeData(
                  overlayShape: const RoundSliderOverlayShape(overlayRadius: 20.0),
                ),
                child: Slider(
                  value: 0.6,
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(height: 20),
              const Text("SliderTheme - Custom Tick Marks",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SliderTheme(
                data: SliderThemeData(
                  showValueIndicator: ShowValueIndicator.always,
                  valueIndicatorTextStyle: const TextStyle(color: Colors.white),
                ),
                child: Slider(
                  value: 0.4,
                  min: 0,
                  max: 1,
                  divisions: 4,
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(height: 20),
              const Text("SliderTheme - Wrapping a Slider",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SliderTheme(
                data: SliderThemeData(
                  activeTrackColor: Colors.green,
                ),
                child: Slider(
                  value: 0.8,
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(height: 20),
              // SliderTheme without a child Slider is not useful and will not render anything.
              // SliderTheme(
              //   data: SliderThemeData(
              //     activeTrackColor: Colors.purple,
              //   ),
              // ),
              const Text(
                  "SliderTheme - (Commented out) - SliderTheme without a child Slider is not useful and will not render anything.",
                  style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}
