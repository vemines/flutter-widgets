import 'package:flutter/material.dart';

class ShowTimePickerScreen extends StatefulWidget {
  const ShowTimePickerScreen({super.key});

  @override
  State<ShowTimePickerScreen> createState() => _ShowTimePickerScreenState();
}

class _ShowTimePickerScreenState extends State<ShowTimePickerScreen> {
  void showSnakeBar(TimeOfDay timeOfDay) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(timeOfDay.format(context))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ShowTimePicker Showcase"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ShowTimePicker - Basic", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? selectedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (selectedTime != null) {
                  showSnakeBar(selectedTime);
                }
              },
              child: Text("Show Time Picker"),
            ),
            SizedBox(height: 20),
            Text("ShowTimePicker - Custom Theme", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? selectedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  builder: (BuildContext context, Widget? child) {
                    return Theme(
                      data: ThemeData.light().copyWith(
                        colorScheme: ColorScheme.light(primary: Colors.green),
                      ),
                      child: child!,
                    );
                  },
                );
                if (selectedTime != null) {
                  showSnakeBar(selectedTime);
                }
              },
              child: Text("Show Time Picker (Green)"),
            ),
            SizedBox(height: 20),
            Text("ShowTimePicker - With Initial Time",
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? selectedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay(hour: 14, minute: 30),
                );
                if (selectedTime != null) {
                  showSnakeBar(selectedTime);
                }
              },
              child: Text("Show Time Picker (Initial 2:30 PM)"),
            ),
            SizedBox(height: 20),
            Text("ShowTimePicker - 24 Hour Format", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? selectedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  useRootNavigator: true,
                  builder: (BuildContext context, Widget? child) {
                    return MediaQuery(
                      data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
                      child: child!,
                    );
                  },
                );
                if (selectedTime != null) {
                  showSnakeBar(selectedTime);
                }
              },
              child: Text("Show Time Picker (24 Hour)"),
            ),
            SizedBox(height: 20),
            Text("ShowTimePicker - With Help Text", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? selectedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  helpText: "Select a time",
                );
                if (selectedTime != null) {
                  showSnakeBar(selectedTime);
                }
              },
              child: Text("Show Time Picker (Help Text)"),
            ),
          ],
        ),
      ),
    );
  }
}
