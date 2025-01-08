import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDatePickerScreen extends StatelessWidget {
  const CupertinoDatePickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CupertinoDatePicker Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("CupertinoDatePicker Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              
              Text("Default CupertinoDatePicker", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: CupertinoDatePicker(
                  onDateTimeChanged: (DateTime newDateTime) {},
                  mode: CupertinoDatePickerMode.dateAndTime,
                ),
              ),
              SizedBox(height: 20),

              Text("CupertinoDatePicker - Date Only", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: CupertinoDatePicker(
                  onDateTimeChanged: (DateTime newDateTime) {},
                  mode: CupertinoDatePickerMode.date,
                ),
              ),
              SizedBox(height: 20),

              Text("CupertinoDatePicker - Time Only", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: CupertinoDatePicker(
                  onDateTimeChanged: (DateTime newDateTime) {},
                  mode: CupertinoDatePickerMode.time,
                ),
              ),
              SizedBox(height: 20),

              Text("CupertinoDatePicker - Initial Date", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: CupertinoDatePicker(
                  onDateTimeChanged: (DateTime newDateTime) {},
                  initialDateTime: DateTime(2024, 1, 1),
                  mode: CupertinoDatePickerMode.dateAndTime,
                ),
              ),
              SizedBox(height: 20),

              Text("CupertinoDatePicker - Minimum Date", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: CupertinoDatePicker(
                  onDateTimeChanged: (DateTime newDateTime) {},
                  minimumDate: DateTime(2023, 1, 1),
                  mode: CupertinoDatePickerMode.dateAndTime,
                ),
              ),
              SizedBox(height: 20),

              Text("CupertinoDatePicker - Maximum Date", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: CupertinoDatePicker(
                  onDateTimeChanged: (DateTime newDateTime) {},
                  maximumDate: DateTime(2025, 1, 1),
                  mode: CupertinoDatePickerMode.dateAndTime,
                ),
              ),
              SizedBox(height: 20),

              Text("CupertinoDatePicker - Minute Interval 10", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: CupertinoDatePicker(
                  onDateTimeChanged: (DateTime newDateTime) {},
                  minuteInterval: 10,
                  mode: CupertinoDatePickerMode.dateAndTime,
                ),
              ),
              SizedBox(height: 20),

              Text("CupertinoDatePicker - Use 24 Hour Format", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: CupertinoDatePicker(
                  onDateTimeChanged: (DateTime newDateTime) {},
                  use24hFormat: true,
                  mode: CupertinoDatePickerMode.dateAndTime,
                ),
              ),
              SizedBox(height: 20),
              
              // CupertinoDatePicker is not a wrapper widget, so no wrapping example is needed.
            ],
          ),
        ),
      ),
    );
  }
}
