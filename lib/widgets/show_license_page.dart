import 'package:flutter/material.dart';

class ShowLicensePageScreen extends StatelessWidget {
  const ShowLicensePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ShowLicensePage Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ShowLicensePage - Basic Usage", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  showLicensePage(context: context);
                },
                child: Text("Show License Page"),
              ),
              SizedBox(height: 20),
              Text("ShowLicensePage - Custom Theme", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  primaryColor: Colors.green,
                  textTheme: TextTheme(
                    bodyMedium: TextStyle(color: Colors.white),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    showLicensePage(context: context);
                  },
                  child: Text("Show License Page (Green Theme)"),
                ),
              ),
              SizedBox(height: 20),
              Text("ShowLicensePage - Custom Application Icon", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  showLicensePage(
                    context: context,
                    applicationIcon: FlutterLogo(size: 50),
                  );
                },
                child: Text("Show License Page (Custom Icon)"),
              ),
              SizedBox(height: 20),
              Text("ShowLicensePage - Custom Application Name", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  showLicensePage(
                    context: context,
                    applicationName: "My Custom App",
                  );
                },
                child: Text("Show License Page (Custom Name)"),
              ),
              SizedBox(height: 20),
              Text("ShowLicensePage - Custom Application Version", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  showLicensePage(
                    context: context,
                    applicationVersion: "1.2.3",
                  );
                },
                child: Text("Show License Page (Custom Version)"),
              ),
              SizedBox(height: 20),
              Text("ShowLicensePage - Custom Application Legalese", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  showLicensePage(
                    context: context,
                    applicationLegalese: "Copyright 2024 My Company",
                  );
                },
                child: Text("Show License Page (Custom Legalese)"),
              ),
              SizedBox(height: 20),
              Text("ShowLicensePage - All Custom Properties", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  primaryColor: Colors.orange,
                  textTheme: TextTheme(
                    bodyMedium: TextStyle(color: Colors.black),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    showLicensePage(
                      context: context,
                      applicationIcon: Icon(Icons.settings, size: 50, color: Colors.white),
                      applicationName: "My App",
                      applicationVersion: "2.0",
                      applicationLegalese: "© 2024 My Company",
                    );
                  },
                  child: Text("Show License Page (All Custom)"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
