import 'package:flutter/material.dart';

class AboutDialogScreen extends StatelessWidget {
  const AboutDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AboutDialog Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("AboutDialog Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              
              Text("AboutDialog - Basic", style: TextStyle(fontWeight: FontWeight.bold)),
              AboutDialog(
                applicationName: 'My App',
                applicationVersion: '1.0.0',
                applicationIcon: FlutterLogo(),
                children: [
                  Text('This is a basic about dialog.'),
                ],
              ),
              SizedBox(height: 20),

              Text("AboutDialog - Custom Content", style: TextStyle(fontWeight: FontWeight.bold)),
              AboutDialog(
                applicationName: 'My App',
                applicationVersion: '1.0.0',
                applicationIcon: FlutterLogo(),
                applicationLegalese: '© 2024 My Company',
                children: [
                  Text('This dialog has custom content.'),
                  SizedBox(height: 10),
                  Text('Additional information here.'),
                ],
              ),
              SizedBox(height: 20),

              Text("AboutDialog - No Icon", style: TextStyle(fontWeight: FontWeight.bold)),
              AboutDialog(
                applicationName: 'My App',
                applicationVersion: '1.0.0',
                children: [
                  Text('This dialog has no icon.'),
                ],
              ),
              SizedBox(height: 20),

              Text("AboutDialog - Custom Application Name", style: TextStyle(fontWeight: FontWeight.bold)),
              AboutDialog(
                applicationName: 'Custom App Name',
                applicationVersion: '1.0.0',
                applicationIcon: FlutterLogo(),
                children: [
                  Text('This dialog has a custom application name.'),
                ],
              ),
              SizedBox(height: 20),

              Text("AboutDialog - Custom Version", style: TextStyle(fontWeight: FontWeight.bold)),
              AboutDialog(
                applicationName: 'My App',
                applicationVersion: '2.0.0-beta',
                applicationIcon: FlutterLogo(),
                children: [
                  Text('This dialog has a custom application version.'),
                ],
              ),
              SizedBox(height: 20),

              Text("AboutDialog - With License Button", style: TextStyle(fontWeight: FontWeight.bold)),
              ElevatedButton(
                onPressed: () {
                  showAboutDialog(
                    context: context,
                    applicationName: 'My App',
                    applicationVersion: '1.0.0',
                    applicationIcon: FlutterLogo(),
                    applicationLegalese: '© 2024 My Company',
                    children: [
                      Text('This dialog has a license button.'),
                    ],
                  );
                },
                child: Text('Show About Dialog with License'),
              ),
              SizedBox(height: 20),
              
              Text("AboutDialog - Wrapped in a Container (Demonstrates usage)", style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: AboutDialog(
                  applicationName: 'My App',
                  applicationVersion: '1.0.0',
                  applicationIcon: FlutterLogo(),
                  children: [
                    Text('This dialog is wrapped in a container.'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              
              // AboutDialog without wrapping another widget is not applicable as it's a dialog and needs to be shown using showAboutDialog
              // Text("AboutDialog - Without Wrapping (Not Applicable)", style: TextStyle(fontWeight: FontWeight.bold)),
              // AboutDialog(
              //   applicationName: 'My App',
              //   applicationVersion: '1.0.0',
              //   applicationIcon: FlutterLogo(),
              //   children: [
              //     Text('This dialog is not wrapped.'),
              //   ],
              // ),
              // SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
