import 'package:flutter/material.dart';

class ShowAboutDialogScreen extends StatelessWidget {
  const ShowAboutDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ShowAboutDialog Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ShowAboutDialog - Basic"),
              ElevatedButton(
                onPressed: () {
                  showAboutDialog(
                    context: context,
                    applicationName: 'My App',
                    applicationVersion: '1.0.0',
                    applicationIcon: const FlutterLogo(),
                    children: const [
                      Text('This is a basic about dialog.'),
                    ],
                  );
                },
                child: const Text('Show About Dialog'),
              ),
              const SizedBox(height: 20),
              const Text("ShowAboutDialog - Custom Content"),
              ElevatedButton(
                onPressed: () {
                  showAboutDialog(
                    context: context,
                    applicationName: 'My App',
                    applicationVersion: '1.0.0',
                    applicationIcon: const Icon(Icons.info, size: 48),
                    children: const [
                      Text('This is a custom about dialog.'),
                      Text('With additional content.'),
                    ],
                  );
                },
                child: const Text('Show Custom About Dialog'),
              ),
              const SizedBox(height: 20),
              const Text("ShowAboutDialog - With Application Legalese"),
              ElevatedButton(
                onPressed: () {
                  showAboutDialog(
                    context: context,
                    applicationName: 'My App',
                    applicationVersion: '1.0.0',
                    applicationIcon: const FlutterLogo(),
                    applicationLegalese: '© 2024 My Company',
                    children: const [
                      Text('This dialog includes legalese.'),
                    ],
                  );
                },
                child: const Text('Show About Dialog with Legalese'),
              ),
              const SizedBox(height: 20),
              const Text("ShowAboutDialog - With Custom Theme"),
              ElevatedButton(
                onPressed: () {
                  showAboutDialog(
                    context: context,
                    applicationName: 'My App',
                    applicationVersion: '1.0.0',
                    applicationIcon: const FlutterLogo(),
                    applicationLegalese: '© 2024 My Company',
                    children: const [
                      Text('This dialog includes legalese.'),
                    ],
                    
                    
                  );
                },
                child: const Text('Show About Dialog with Custom Theme'),
              ),
              const SizedBox(height: 20),
              const Text("ShowAboutDialog - No Icon"),
              ElevatedButton(
                onPressed: () {
                  showAboutDialog(
                    context: context,
                    applicationName: 'My App',
                    applicationVersion: '1.0.0',
                    children: const [
                      Text('This dialog has no icon.'),
                    ],
                  );
                },
                child: const Text('Show About Dialog without Icon'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
