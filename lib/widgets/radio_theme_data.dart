import 'package:flutter/material.dart';

class RadioThemeDataScreen extends StatelessWidget {
  const RadioThemeDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioThemeData Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("RadioThemeData Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),

              Text("RadioThemeData - Default"),
              RadioTheme(
                data: RadioThemeData(),
                child: Radio(value: 1, groupValue: 1, onChanged: (value) {}),
              ),
              SizedBox(height: 20),

              Text("RadioThemeData - Custom Colors"),
              RadioTheme(
                data: RadioThemeData(
                  fillColor: WidgetStateColor.resolveWith((states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colors.green;
                    }
                    return Colors.red;
                  }),
                  overlayColor: WidgetStateColor.resolveWith((states) {
                    if (states.contains(WidgetState.focused)) {
                      return Colors.yellow.withValues(alpha: 255 * 0.5);
                    }
                    return Colors.transparent;
                  }),
                ),
                child: Radio(value: 1, groupValue: 1, onChanged: (value) {}),
              ),
              SizedBox(height: 20),

              Text("RadioThemeData - Custom MaterialTapTargetSize"),
              RadioTheme(
                data: RadioThemeData(
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                ),
                child: Radio(value: 1, groupValue: 1, onChanged: (value) {}),
              ),
              SizedBox(height: 20),

              Text("RadioThemeData - Custom VisualDensity"),
              RadioTheme(
                data: RadioThemeData(
                  visualDensity: VisualDensity.comfortable,
                ),
                child: Radio(value: 1, groupValue: 1, onChanged: (value) {}),
              ),
              SizedBox(height: 20),

              Text("RadioThemeData - Custom SplashRadius"),
              RadioTheme(
                data: RadioThemeData(
                  splashRadius: 30,
                ),
                child: Radio(value: 1, groupValue: 1, onChanged: (value) {}),
              ),
              SizedBox(height: 20),

              Text("RadioThemeData - Custom OverlayColor and FillColor"),
              RadioTheme(
                data: RadioThemeData(
                  fillColor: WidgetStateColor.resolveWith((states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colors.purple;
                    }
                    return Colors.grey;
                  }),
                  overlayColor: WidgetStateColor.resolveWith((states) {
                    if (states.contains(WidgetState.hovered)) {
                      return Colors.blue.withValues(alpha: 255 * 0.3);
                    }
                    return Colors.transparent;
                  }),
                ),
                child: Radio(value: 1, groupValue: 1, onChanged: (value) {}),
              ),
              SizedBox(height: 20),

              Text("RadioThemeData - Wrapping a Radio"),
              RadioTheme(
                data: RadioThemeData(
                  fillColor: WidgetStateColor.resolveWith((states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colors.orange;
                    }
                    return Colors.black;
                  }),
                ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Radio(value: 1, groupValue: 1, onChanged: (value) {}),
                ),
              ),
              SizedBox(height: 20),

              // RadioThemeData without wrapping a Radio - This is not applicable as RadioThemeData is a theme wrapper
              // Text("RadioThemeData - Without Wrapping (Not Applicable)"),
              // RadioThemeData(
              //   data: RadioThemeData(
              //     fillColor: MaterialStateColor.resolveWith((states) {
              //       if (states.contains(MaterialState.selected)) {
              //         return Colors.pink;
              //       }
              //       return Colors.brown;
              //     }),
              //   ),
              // ),
              // SizedBox(height: 20),
              Text(
                  "Note: RadioThemeData is a theme wrapper and needs a child widget to apply the theme. The above commented out code would cause an error if uncommented."),
            ],
          ),
        ),
      ),
    );
  }
}
