import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double value = 0.5;
  double minMaxValue = 10;
  void onChanged(newValue) => setState(() => value = newValue);
  void onChangedMM(newValue) => setState(() => minMaxValue = newValue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Slider 0.5", style: TextStyle(fontWeight: FontWeight.bold)),
              Slider(
                value: value,
                onChanged: onChanged,
              ),
              SizedBox(height: 20),
              Text("Slider - Active Color", style: TextStyle(fontWeight: FontWeight.bold)),
              Slider(
                value: value,
                activeColor: Colors.blue,
                onChanged: onChanged,
              ),
              SizedBox(height: 20),
              Text("Slider - Inactive Color", style: TextStyle(fontWeight: FontWeight.bold)),
              Slider(
                value: value,
                inactiveColor: Colors.grey,
                onChanged: onChanged,
              ),
              SizedBox(height: 20),
              Text("Slider - Min/Max Values", style: TextStyle(fontWeight: FontWeight.bold)),
              Slider(
                value: minMaxValue,
                min: 0,
                max: 20,
                onChanged: onChangedMM,
              ),
              SizedBox(height: 20),
              Text("Slider - Divisions", style: TextStyle(fontWeight: FontWeight.bold)),
              Slider(
                value: minMaxValue,
                min: 0,
                max: 20,
                divisions: 5,
                onChanged: onChangedMM,
              ),
              SizedBox(height: 20),
              Text("Slider - Thumb Color", style: TextStyle(fontWeight: FontWeight.bold)),
              Slider(
                value: value,
                thumbColor: Colors.red,
                onChanged: onChanged,
              ),
              SizedBox(height: 20),
              Text("Slider - Overlay Color", style: TextStyle(fontWeight: FontWeight.bold)),
              Slider(
                value: value,
                overlayColor: WidgetStateColor.resolveWith((states) =>
                    states.contains(WidgetState.hovered)
                        ? Colors.green.withValues(alpha: 255 * 0.4)
                        : Colors.transparent),
                onChanged: onChanged,
              ),
              SizedBox(height: 20),
              Text("Slider - With Label", style: TextStyle(fontWeight: FontWeight.bold)),
              Slider(
                min: 0,
                max: 20,
                divisions: 5,
                value: minMaxValue,
                label: minMaxValue.toStringAsFixed(0),
                onChanged: onChangedMM,
              ),
              SizedBox(height: 20),
              Text("Slider - Custom Height", style: TextStyle(fontWeight: FontWeight.bold)),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 10,
                ),
                child: Slider(
                  value: value,
                  onChanged: onChanged,
                ),
              ),
              SizedBox(height: 20),
              Text("Slider - Disabled", style: TextStyle(fontWeight: FontWeight.bold)),
              Slider(
                value: value,
                onChanged: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
