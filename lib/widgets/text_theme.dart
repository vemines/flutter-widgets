import 'package:flutter/material.dart';

class TextThemeScreen extends StatelessWidget {
  const TextThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextTheme Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("TextTheme - Default"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(),
                child: Builder(
                  builder: (context) {
                    return Text("Default Text", style: Theme.of(context).textTheme.bodyMedium);
                  }
                ),
              ),
              const SizedBox(height: 16),
              const Text("TextTheme - Primary Color"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
                ),
                child: Builder(
                  builder: (context) {
                    return Text("Primary Color Text", style: Theme.of(context).textTheme.bodyMedium);
                  }
                ),
              ),
              const SizedBox(height: 16),
              const Text("TextTheme - Custom Text Style"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  textTheme: const TextTheme(
                    bodyMedium: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
                child: Builder(
                  builder: (context) {
                    return Text("Custom Style Text", style: Theme.of(context).textTheme.bodyMedium);
                  }
                ),
              ),
              const SizedBox(height: 16),
              const Text("TextTheme - With Container"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  textTheme: const TextTheme(
                    bodyMedium: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                child: Builder(
                  builder: (context) {
                    return Container(
                      color: Colors.black,
                      padding: const EdgeInsets.all(8),
                      child: Text("Text in Container", style: Theme.of(context).textTheme.bodyMedium),
                    );
                  }
                ),
              ),
              const SizedBox(height: 16),
              const Text("TextTheme - With Different Font Family"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  textTheme: const TextTheme(
                    bodyMedium: TextStyle(
                      fontFamily: 'RobotoMono',
                    ),
                  ),
                ),
                child: Builder(
                  builder: (context) {
                    return Text("RobotoMono Font", style: Theme.of(context).textTheme.bodyMedium);
                  }
                ),
              ),
              const SizedBox(height: 16),
              const Text("TextTheme - With Different Font Size"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  textTheme: const TextTheme(
                    bodyMedium: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                child: Builder(
                  builder: (context) {
                    return Text("Larger Font Size", style: Theme.of(context).textTheme.bodyMedium);
                  }
                ),
              ),
              const SizedBox(height: 16),
              const Text("TextTheme - With Different Font Weight"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  textTheme: const TextTheme(
                    bodyMedium: TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                child: Builder(
                  builder: (context) {
                    return Text("Bold Font Weight", style: Theme.of(context).textTheme.bodyMedium);
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
