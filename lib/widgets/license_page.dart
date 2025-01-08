import 'package:flutter/material.dart';

class LicensePageScreen extends StatelessWidget {
  const LicensePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LicensePage Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("LicensePage - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              LicensePage(),
              SizedBox(height: 20),
              Text("LicensePage - With Custom Theme", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  textTheme: TextTheme(
                    bodyMedium: TextStyle(color: Colors.blue),
                  ),
                ),
                child: LicensePage(),
              ),
              SizedBox(height: 20),
              Text("LicensePage - Wrapped in Container", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                padding: EdgeInsets.all(10),
                child: LicensePage(),
              ),
              SizedBox(height: 20),
              Text("LicensePage - Wrapped in Padding", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: LicensePage(),
              ),
              SizedBox(height: 20),
              Text("LicensePage - Wrapped in Align (Center)", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Align(
                alignment: Alignment.center,
                child: LicensePage(),
              ),
              SizedBox(height: 20),
              Text("LicensePage - Wrapped in SizedBox (Constrained)", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                width: 300,
                height: 200,
                child: LicensePage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class LicensePage extends StatelessWidget {
  const LicensePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("This is a placeholder for the LicensePage widget. Please replace this with the actual LicensePage widget from your license_page.dart file.");
  }
}
