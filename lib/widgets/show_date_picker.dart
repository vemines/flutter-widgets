import 'package:flutter/material.dart';

class ShowDatePickerScreen extends StatelessWidget {
  const ShowDatePickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ShowDatePicker Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ShowDatePicker - Basic", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                },
                child: Text("Show Date Picker"),
              ),
              SizedBox(height: 20),
              Text("ShowDatePicker - Custom Colors", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                    builder: (BuildContext context, Widget? child) {
                      return Theme(
                        data: ThemeData.light().copyWith(
                          primaryColor: Colors.green,
                          colorScheme: ColorScheme.light(primary: Colors.green),
                          buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
                        ),
                        child: child!,
                      );
                    },
                  );
                },
                child: Text("Show Date Picker (Green)"),
              ),
              SizedBox(height: 20),
              Text("ShowDatePicker - Custom Text Style", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                    builder: (BuildContext context, Widget? child) {
                      return Theme(
                        data: ThemeData.light().copyWith(
                          textTheme: TextTheme(
                            titleLarge: TextStyle(color: Colors.purple, fontSize: 20),
                          ),
                        ),
                        child: child!,
                      );
                    },
                  );
                },
                child: Text("Show Date Picker (Purple Text)"),
              ),
              SizedBox(height: 20),
              Text("ShowDatePicker - With Initial Date Set", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime(2024, 1, 1),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                },
                child: Text("Show Date Picker (Initial Date 2024-01-01)"),
              ),
              SizedBox(height: 20),
              Text("ShowDatePicker - With Limited Date Range", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2023, 10, 1),
                    lastDate: DateTime(2023, 12, 31),
                  );
                },
                child: Text("Show Date Picker (Range 2023-10-01 to 2023-12-31)"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
