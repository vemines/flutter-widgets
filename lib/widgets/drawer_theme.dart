import 'package:flutter/material.dart';

class DrawerThemeScreen extends StatelessWidget {
  const DrawerThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DrawerTheme Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("DrawerTheme Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("DrawerTheme - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              // DrawerTheme without a child is not applicable, it's a wrapper.
              // DrawerTheme(
              //   child: Container(), // This would not show anything visually
              // ),
              const Text("DrawerTheme - With Custom Colors", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              DrawerTheme(
                data: const DrawerThemeData(
                  backgroundColor: Colors.lightBlue,
                  scrimColor: Colors.black26,
                  elevation: 8,
                ),
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(16),
                  child: const Text("Drawer Content", style: TextStyle(color: Colors.black)),
                ),
              ),
              const SizedBox(height: 20),
              const Text("DrawerTheme - With Custom Shape", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              DrawerTheme(
                data: DrawerThemeData(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(16),
                  child: const Text("Drawer Content with Rounded Shape", style: TextStyle(color: Colors.black)),
                ),
              ),
              const SizedBox(height: 20),
              const Text("DrawerTheme - With Custom Elevation", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              DrawerTheme(
                data: const DrawerThemeData(
                  elevation: 16,
                ),
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(16),
                  child: const Text("Drawer Content with Higher Elevation", style: TextStyle(color: Colors.black)),
                ),
              ),
              const SizedBox(height: 20),
              const Text("DrawerTheme - With Custom Shadow Color", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              DrawerTheme(
                data: const DrawerThemeData(
                  shadowColor: Colors.red,
                ),
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(16),
                  child: const Text("Drawer Content with Red Shadow", style: TextStyle(color: Colors.black)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
