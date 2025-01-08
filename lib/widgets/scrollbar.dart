import 'package:flutter/material.dart';

class ScrollbarScreen extends StatelessWidget {
  const ScrollbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scrollbar Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Scrollbar - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: Scrollbar(
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Scrollbar - With Thickness and Radius",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: Scrollbar(
                  thickness: 10,
                  radius: const Radius.circular(8),
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Scrollbar - With Track Color",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("Scrollbar - With Interactive Thumb",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: Scrollbar(
                  interactive: true,
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Scrollbar - With Always Show Scrollbar",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: Scrollbar(
                  thumbVisibility: true,
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Scrollbar - With isAlwaysShown",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: Scrollbar(
                  thumbVisibility: true,
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
