import 'package:flutter/material.dart';

class NavigationBarThemeScreen extends StatelessWidget {
  const NavigationBarThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NavigationBarTheme Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("NavigationBarTheme - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              NavigationBarTheme(
                data: const NavigationBarThemeData(),
                child: NavigationBar(
                  destinations: const [
                    NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                    NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("NavigationBarTheme - Custom Colors", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              NavigationBarTheme(
                data: NavigationBarThemeData(
                  backgroundColor: Colors.grey[200],
                  indicatorColor: Colors.blue[100],
                  labelTextStyle: WidgetStateProperty.all(const TextStyle(color: Colors.black)),
                  iconTheme: WidgetStateProperty.all(const IconThemeData(color: Colors.black)),
                ),
                child: NavigationBar(
                  destinations: const [
                    NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                    NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("NavigationBarTheme - Custom Height and Padding", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              NavigationBarTheme(
                data: NavigationBarThemeData(
                  height: 80,
                  labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
                  indicatorShape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  
                ),
                child: NavigationBar(
                  destinations: const [
                    NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                    NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("NavigationBarTheme - Wrapping a Container", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              NavigationBarTheme(
                data: const NavigationBarThemeData(),
                child: Container(
                  color: Colors.yellow[100],
                  padding: const EdgeInsets.all(16),
                  child: const Text("This is a container wrapped by NavigationBarTheme"),
                ),
              ),
              const SizedBox(height: 20),
              // The following code would cause an error because NavigationBarTheme expects a NavigationBar as a child, not a Text widget.
              // const Text("NavigationBarTheme - Wrapping a Text (Error)", style: TextStyle(fontWeight: FontWeight.bold)),
              // const SizedBox(height: 8),
              // NavigationBarTheme(
              //   data: const NavigationBarThemeData(),
              //   child: const Text("This will cause an error"),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
