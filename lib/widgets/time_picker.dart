import 'package:flutter/material.dart';

class TimePickerScreen extends StatefulWidget {
  const TimePickerScreen({super.key});

  @override
  State<TimePickerScreen> createState() => _TimePickerScreenState();
}

class _TimePickerScreenState extends State<TimePickerScreen> {
  void showSnakeBar(TimeOfDay selectedTime) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Selected time: ${selectedTime.format(context)}')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TimePicker Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("TimePicker Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildTimePickerVariation(
                    label: "TimePicker",
                    child: _buildTimePicker(),
                  ),
                  _buildTimePickerVariation(
                    label: "TimePicker with Initial Time",
                    child: _buildTimePicker(initialTime: TimeOfDay(hour: 10, minute: 30)),
                  ),
                  _buildTimePickerVariation(
                    label: "TimePicker with Custom Theme",
                    child: _buildTimePicker(
                      theme: ThemeData(
                        colorScheme: ColorScheme.light(
                          primary: Colors.green,
                          onPrimary: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  _buildTimePickerVariation(
                    label: "TimePicker with Help Text",
                    child: _buildTimePicker(helpText: "Select Time"),
                  ),
                  _buildTimePickerVariation(
                    label: "TimePicker with Error Text",
                    child: _buildTimePicker(errorInvalidText: "Invalid Time"),
                  ),
                  _buildTimePickerVariation(
                    label: "TimePicker with Hour Label",
                    child: _buildTimePicker(hourLabelText: "Hour"),
                  ),
                  _buildTimePickerVariation(
                    label: "TimePicker with Minute Label",
                    child: _buildTimePicker(minuteLabelText: "Minute"),
                  ),
                  _buildTimePickerVariation(
                    label: "TimePicker with Input Decoration",
                    child: _buildTimePicker(
                      inputDecoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Time',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTimePickerVariation({required String label, required Widget child}) {
    return Column(
      children: [
        Tooltip(message: label, child: Text(label, style: TextStyle(fontWeight: FontWeight.bold))),
        SizedBox(height: 8),
        child,
      ],
    );
  }

  Widget _buildTimePicker(
      {TimeOfDay? initialTime,
      ThemeData? theme,
      String? helpText,
      String? errorInvalidText,
      String? hourLabelText,
      String? minuteLabelText,
      InputDecoration? inputDecoration}) {
    return Builder(builder: (context) {
      return ElevatedButton(
        onPressed: () async {
          final TimeOfDay? selectedTime = await showTimePicker(
            context: context,
            initialTime: initialTime ?? TimeOfDay.now(),
            builder: (BuildContext context, Widget? child) {
              return Theme(
                data: theme ?? ThemeData.light(),
                child: MediaQuery(
                  data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
                  child: child!,
                ),
              );
            },
            helpText: helpText,
            errorInvalidText: errorInvalidText,
            hourLabelText: hourLabelText,
            minuteLabelText: minuteLabelText,
          );
          if (selectedTime != null) {
            showSnakeBar(selectedTime);
          }
        },
        child: Text('Pick Time'),
      );
    });
  }
}
