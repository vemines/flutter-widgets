import 'package:flutter/material.dart';

class CardThemeScreen extends StatelessWidget {
  const CardThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CardTheme Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CardTheme - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Default Card"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CardTheme - Custom Colors", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Card(
                color: Colors.blue[100],
                shadowColor: Colors.blue[900],
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Custom Colors Card", style: TextStyle(color: Colors.black)),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CardTheme - Rounded Corners", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Rounded Corners Card"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CardTheme - Custom Margin", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Card(
                margin: const EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Margin Card"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CardTheme - Custom Elevation", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Card(
                elevation: 12,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Elevation Card"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CardTheme - With Container", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Card(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.grey[200],
                  child: Text("Card with Container"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CardTheme - With Text", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Card(
                child: Text("Card with Text", style: TextStyle(fontSize: 20),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
