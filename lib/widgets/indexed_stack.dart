import 'package:flutter/material.dart';

class IndexedStackScreen extends StatelessWidget {
  const IndexedStackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IndexedStack Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("IndexedStack - Example", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: IndexedStack(
                  index: 0,
                  children: [
                    Container(color: Colors.red, child: const Center(child: Text("Item 1"))),
                    Container(color: Colors.green, child: const Center(child: Text("Item 2"))),
                    Container(color: Colors.blue, child: const Center(child: Text("Item 3"))),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("IndexedStack - Index 1", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: IndexedStack(
                  index: 1,
                  children: [
                    Container(color: Colors.red, child: const Center(child: Text("Item 1"))),
                    Container(color: Colors.green, child: const Center(child: Text("Item 2"))),
                    Container(color: Colors.blue, child: const Center(child: Text("Item 3"))),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("IndexedStack - Index 2", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: IndexedStack(
                  index: 2,
                  children: [
                    Container(color: Colors.red, child: const Center(child: Text("Item 1"))),
                    Container(color: Colors.green, child: const Center(child: Text("Item 2"))),
                    Container(color: Colors.blue, child: const Center(child: Text("Item 3"))),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("IndexedStack - Different Heights",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 150,
                child: IndexedStack(
                  index: 0,
                  children: [
                    Container(
                        height: 50, color: Colors.red, child: const Center(child: Text("Item 1"))),
                    Container(
                        height: 100,
                        color: Colors.green,
                        child: const Center(child: Text("Item 2"))),
                    Container(
                        height: 150,
                        color: Colors.blue,
                        child: const Center(child: Text("Item 3"))),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("IndexedStack - With Alignment",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: IndexedStack(
                  index: 0,
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(color: Colors.red, child: const Center(child: Text("Item 1"))),
                    Container(color: Colors.green, child: const Center(child: Text("Item 2"))),
                    Container(color: Colors.blue, child: const Center(child: Text("Item 3"))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
