import 'package:flutter/material.dart';

class RangeSliderScreen extends StatelessWidget {
  const RangeSliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RangeSlider Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("RangeSlider Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              _buildRangeSliderVariations(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRangeSliderVariations() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Default RangeSlider", style: TextStyle(fontWeight: FontWeight.bold)),
        RangeSlider(
          values: RangeValues(0.2, 0.8),
          onChanged: (RangeValues values) {},
        ),
        SizedBox(height: 20),
        Text("RangeSlider - Active Color Red", style: TextStyle(fontWeight: FontWeight.bold)),
        RangeSlider(
          values: RangeValues(0.3, 0.7),
          activeColor: Colors.red,
          onChanged: (RangeValues values) {},
        ),
        SizedBox(height: 20),
        Text("RangeSlider - Inactive Color Grey", style: TextStyle(fontWeight: FontWeight.bold)),
        RangeSlider(
          values: RangeValues(0.1, 0.9),
          inactiveColor: Colors.grey,
          onChanged: (RangeValues values) {},
        ),
        SizedBox(height: 20),
        Text("RangeSlider - Thumb activeColor Green",
            style: TextStyle(fontWeight: FontWeight.bold)),
        RangeSlider(
          values: RangeValues(0.4, 0.6),
          activeColor: Colors.green,
          onChanged: (RangeValues values) {},
        ),
        SizedBox(height: 20),
        Text("RangeSlider - Overlay Color Blue", style: TextStyle(fontWeight: FontWeight.bold)),
        RangeSlider(
          values: RangeValues(0.25, 0.75),
          overlayColor: WidgetStateColor.resolveWith((states) =>
              states.contains(WidgetState.hovered)
                  ? Colors.blue.withValues(alpha: 255 * 0.2)
                  : Colors.transparent),
          onChanged: (RangeValues values) {},
        ),
        SizedBox(height: 20),
        Text("RangeSlider - Divisions and Labels", style: TextStyle(fontWeight: FontWeight.bold)),
        RangeSlider(
          values: RangeValues(0.2, 0.8),
          divisions: 5,
          labels: RangeLabels('Start', 'End'),
          onChanged: (RangeValues values) {},
        ),
        SizedBox(height: 20),
        Text("RangeSlider - Min and Max Values", style: TextStyle(fontWeight: FontWeight.bold)),
        RangeSlider(
          min: 0,
          max: 100,
          values: RangeValues(20, 80),
          onChanged: (RangeValues values) {},
        ),
        SizedBox(height: 20),
        Text("RangeSlider - With Mouse Cursor", style: TextStyle(fontWeight: FontWeight.bold)),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: RangeSlider(
            values: RangeValues(0.3, 0.7),
            onChanged: (RangeValues values) {},
          ),
        ),
        SizedBox(height: 20),
        Text("RangeSlider - Disabled", style: TextStyle(fontWeight: FontWeight.bold)),
        RangeSlider(
          values: RangeValues(0.2, 0.8),
          onChanged: null,
        ),
      ],
    );
  }
}
