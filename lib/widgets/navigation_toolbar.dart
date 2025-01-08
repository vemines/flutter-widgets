import 'package:flutter/material.dart';

class NavigationToolbarScreen extends StatelessWidget {
  const NavigationToolbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NavigationToolbar Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("NavigationToolbar Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("NavigationToolbar - Default"),
              NavigationToolbar(
                middle: const Text("Default Toolbar"),
              ),
              const SizedBox(height: 20),
              const Text("NavigationToolbar - Custom Leading and Trailing"),
              NavigationToolbar(
                leading: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {},
                ),
                middle: const Text("Custom Leading/Actions"),
                trailing: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 20),
              const Text("NavigationToolbar - Custom Text Style"),
              NavigationToolbar(
                middle: const Text(
                  "Custom Text Style",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              const Text("NavigationToolbar - Custom Padding"),
              Padding(
                padding: const EdgeInsets.all(20),
                child: NavigationToolbar(
                  middle: const Text("Custom Padding"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("NavigationToolbar - Wrapped in Container"),
              Container(
                color: Colors.grey[200],
                child: const NavigationToolbar(
                  middle: Text("Wrapped Toolbar"),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
