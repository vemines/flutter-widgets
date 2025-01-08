import 'package:flutter/material.dart';

class DrawerHeaderScreen extends StatelessWidget {
  const DrawerHeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DrawerHeader Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("DrawerHeader - Default"),
              const DrawerHeader(
                child: Text("Default Drawer Header"),
              ),
              const SizedBox(height: 20),
              const Text("DrawerHeader - Custom Styling"),
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Custom Drawer Header",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Subtitle",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("DrawerHeader - With Padding"),
              DrawerHeader(
                padding: const EdgeInsets.all(30),
                child: Container(
                  color: Colors.green.shade100,
                  child: const Text("Drawer Header with Padding"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("DrawerHeader - With Margin"),
              Container(
                margin: const EdgeInsets.all(20),
                child: const DrawerHeader(
                  child: Text("Drawer Header with Margin"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("DrawerHeader - With Decoration and Image"),
              DrawerHeader(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://placekitten.com/200/100'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                    "Image Background",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("DrawerHeader - With Child Alignment"),
              DrawerHeader(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: const Text("Aligned Right"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("DrawerHeader - With Text Style"),
              DrawerHeader(
                child: Text(
                  "Styled Text",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple.shade900,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("DrawerHeader - With Container Child"),
              DrawerHeader(
                child: Container(
                  color: Colors.orange.shade100,
                  child: const Center(child: Text("Container Child")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
