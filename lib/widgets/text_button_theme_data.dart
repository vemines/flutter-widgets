import 'package:flutter/material.dart';

class TextButtonThemeDataScreen extends StatelessWidget {
  const TextButtonThemeDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextButtonThemeData Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("TextButtonThemeData - Default Theme",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextButton(
                onPressed: () {},
                child: Text("Default Button"),
              ),
              SizedBox(height: 20),
              Text("TextButtonThemeData - Custom Theme",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  textButtonTheme: TextButtonThemeData(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.blue),
                      foregroundColor: WidgetStateProperty.all(Colors.white),
                      padding: WidgetStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                      shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text("Custom Button"),
                ),
              ),
              SizedBox(height: 20),
              Text("TextButtonThemeData - Custom Theme with Text Style",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  textButtonTheme: TextButtonThemeData(
                    style: ButtonStyle(
                      textStyle: WidgetStateProperty.all(
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      foregroundColor: WidgetStateProperty.all(Colors.green),
                      overlayColor:
                          WidgetStateProperty.all(Colors.green.withValues(alpha: 255 * 0.2)),
                    ),
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text("Styled Text Button"),
                ),
              ),
              SizedBox(height: 20),
              Text("TextButtonThemeData - Custom Theme with Border",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  textButtonTheme: TextButtonThemeData(
                    style: ButtonStyle(
                      side: WidgetStateProperty.all(BorderSide(color: Colors.red, width: 2)),
                      foregroundColor: WidgetStateProperty.all(Colors.red),
                    ),
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text("Bordered Button"),
                ),
              ),
              SizedBox(height: 20),
              Text("TextButtonThemeData - Custom Theme with Padding",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  textButtonTheme: TextButtonThemeData(
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(EdgeInsets.all(20)),
                    ),
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text("Padded Button"),
                ),
              ),
              SizedBox(height: 20),
              Text("TextButtonThemeData - Theme wrapping a Container",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  textButtonTheme: TextButtonThemeData(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.amber),
                      foregroundColor: WidgetStateProperty.all(Colors.black),
                    ),
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text("Button in Container"),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // TextButtonThemeData without wrapping another widget is not applicable, as it's a theme data class.
              // It's used to configure the theme for TextButton widgets.
            ],
          ),
        ),
      ),
    );
  }
}
