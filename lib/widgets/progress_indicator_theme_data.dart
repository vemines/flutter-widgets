import 'package:flutter/material.dart';

class ProgressIndicatorThemeDataScreen extends StatelessWidget {
  const ProgressIndicatorThemeDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ProgressIndicatorThemeData Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ProgressIndicatorThemeData - Default",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  progressIndicatorTheme: ProgressIndicatorThemeData(),
                ),
                child: CircularProgressIndicator(),
              ),
              SizedBox(height: 20),
              Text("ProgressIndicatorThemeData - Color",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  progressIndicatorTheme: ProgressIndicatorThemeData(
                    color: Colors.blue,
                    circularTrackColor: Colors.grey[300],
                    linearTrackColor: Colors.grey[300],
                    refreshBackgroundColor: Colors.grey[100],
                  ),
                ),
                child: CircularProgressIndicator(),
              ),
              SizedBox(height: 20),
              Text("ProgressIndicatorThemeData - Linear Indicator",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  progressIndicatorTheme: ProgressIndicatorThemeData(
                    color: Colors.green,
                    linearTrackColor: Colors.grey[300],
                  ),
                ),
                child: LinearProgressIndicator(
                  value: 0.5,
                ),
              ),
              SizedBox(height: 20),
              Text("ProgressIndicatorThemeData - With Container",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  progressIndicatorTheme: ProgressIndicatorThemeData(
                    color: Colors.red,
                    circularTrackColor: Colors.grey[300],
                    linearTrackColor: Colors.grey[300],
                  ),
                ),
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: CircularProgressIndicator(),
                ),
              ),
              SizedBox(height: 20),
              Text("ProgressIndicatorThemeData - With Linear Container",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  progressIndicatorTheme: ProgressIndicatorThemeData(
                    color: Colors.orange,
                    linearTrackColor: Colors.grey[300],
                  ),
                ),
                child: SizedBox(
                  width: 200,
                  height: 20,
                  child: LinearProgressIndicator(
                    value: 0.7,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("ProgressIndicatorThemeData - With Refresh Indicator",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  progressIndicatorTheme: ProgressIndicatorThemeData(
                    color: Colors.purple,
                    refreshBackgroundColor: Colors.yellow[100],
                  ),
                ),
                child: RefreshIndicator(
                  onRefresh: () async {
                    await Future.delayed(Duration(seconds: 1));
                  },
                  child: ListView(
                    children: [
                      ListTile(title: Text("Item 1")),
                      ListTile(title: Text("Item 2")),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
