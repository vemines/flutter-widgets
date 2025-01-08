import 'package:flutter/material.dart';

class DatePickerThemeScreen extends StatelessWidget {
  const DatePickerThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DatePickerTheme Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("DatePickerTheme Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Text("DatePickerTheme - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              Tooltip(message: "Default DatePickerTheme", child: _buildDatePickerTheme()),
              SizedBox(height: 20),
              Text("DatePickerTheme - Custom Colors",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Tooltip(
                  message: "DatePickerTheme with custom colors",
                  child: _buildDatePickerTheme(
                    backgroundColor: Colors.grey[200],
                    headerBackgroundColor: Colors.blue[100],
                    headerForegroundColor: Colors.black,
                    weekdayStyle: TextStyle(color: Colors.red),
                    dayStyle: TextStyle(color: Colors.green),
                  )),
              SizedBox(height: 20),
              Text("DatePickerTheme - Custom Text Styles",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Tooltip(
                  message: "DatePickerTheme with custom text styles",
                  child: _buildDatePickerTheme(
                    weekdayStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    dayStyle: TextStyle(fontSize: 14),
                  )),
              SizedBox(height: 20),
              Text("DatePickerTheme - Wrapped with Container",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Tooltip(
                  message: "DatePickerTheme wrapping a Container",
                  child: _buildDatePickerTheme(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.yellow[100],
                      child: Text("Wrapped Content"),
                    ),
                  )),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDatePickerTheme({
    Color? backgroundColor,
    Color? headerBackgroundColor,
    Color? headerForegroundColor,
    TextStyle? weekdayStyle,
    TextStyle? dayStyle,
    Widget? child,
  }) {
    return Theme(
      data: ThemeData(
        datePickerTheme: DatePickerThemeData(
          backgroundColor: backgroundColor,
          headerBackgroundColor: headerBackgroundColor,
          headerForegroundColor: headerForegroundColor,
          weekdayStyle: weekdayStyle,
          dayStyle: dayStyle,
        ),
      ),
      child: Builder(builder: (context) {
        return child ??
            ElevatedButton(
              onPressed: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                );
                if (pickedDate != null) {
                  print('Date selected: $pickedDate');
                }
              },
              child: Text('Show Date Picker'),
            );
      }),
    );
  }
}
