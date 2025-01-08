import 'package:flutter/material.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({super.key});

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
              Text("Slider - Basic", style: TextStyle(fontWeight: FontWeight.bold)),
              Slider(
                value: 0.5,
                onChanged: (value) {},
              ),
              SizedBox(height: 20),
              Text("Slider - Active Color", style: TextStyle(fontWeight: FontWeight.bold)),
              Slider(
                value: 0.7,
                activeColor: Colors.blue,
                onChanged: (value) {},
              ),
              SizedBox(height: 20),
              Text("Slider - Inactive Color", style: TextStyle(fontWeight: FontWeight.bold)),
              Slider(
                value: 0.3,
                inactiveColor: Colors.grey,
                onChanged: (value) {},
              ),
              SizedBox(height: 20),
              Text("Slider - Min/Max Values", style: TextStyle(fontWeight: FontWeight.bold)),
              Slider(
                value: 25,
                min: 0,
                max: 100,
                onChanged: (value) {},
              ),
              SizedBox(height: 20),
              Text("Slider - Divisions", style: TextStyle(fontWeight: FontWeight.bold)),
              Slider(
                value: 2,
                min: 0,
                max: 5,
                divisions: 5,
                onChanged: (value) {},
              ),
              SizedBox(height: 20),
              Text("Slider - Thumb Color", style: TextStyle(fontWeight: FontWeight.bold)),
              Slider(
                value: 0.6,
                thumbColor: Colors.red,
                onChanged: (value) {},
              ),
              SizedBox(height: 20),
              Text("Slider - Overlay Color", style: TextStyle(fontWeight: FontWeight.bold)),
              Slider(
                value: 0.8,
                overlayColor: WidgetStateColor.resolveWith((states) =>
                    states.contains(WidgetState.hovered)
                        ? Colors.green.withValues(alpha: 255 * 0.4)
                        : Colors.transparent),
                onChanged: (value) {},
              ),
              SizedBox(height: 20),
              Text("Slider - With Label", style: TextStyle(fontWeight: FontWeight.bold)),
              Slider(
                value: 0.4,
                label: '40%',
                onChanged: (value) {},
              ),
              SizedBox(height: 20),
              Text("Slider - Custom Height", style: TextStyle(fontWeight: FontWeight.bold)),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 10,
                ),
                child: Slider(
                  value: 0.5,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 20),
              Text("Slider - Disabled", style: TextStyle(fontWeight: FontWeight.bold)),
              Slider(
                value: 0.5,
                onChanged: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
