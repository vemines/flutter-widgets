import 'package:flutter/material.dart';

class ScrollPhysicsScreen extends StatelessWidget {
  const ScrollPhysicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScrollPhysics Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("AlwaysScrollableScrollPhysics", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: ListView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  children: List.generate(5, (index) => ListTile(title: Text('Item $index'))),
                ),
              ),
              const SizedBox(height: 16),
              const Text("NeverScrollableScrollPhysics", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: List.generate(5, (index) => ListTile(title: Text('Item $index'))),
                ),
              ),
              const SizedBox(height: 16),
              const Text("BouncingScrollPhysics", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: List.generate(5, (index) => ListTile(title: Text('Item $index'))),
                ),
              ),
              const SizedBox(height: 16),
              const Text("ClampingScrollPhysics", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: ListView(
                  physics: const ClampingScrollPhysics(),
                  children: List.generate(5, (index) => ListTile(title: Text('Item $index'))),
                ),
              ),
              const SizedBox(height: 16),
              const Text("FixedExtentScrollPhysics", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: ListWheelScrollView(
                  itemExtent: 50,
                  physics: const FixedExtentScrollPhysics(),
                  children: List.generate(5, (index) => ListTile(title: Text('Item $index'))),
                ),
              ),
              const SizedBox(height: 16),
              const Text("PageScrollPhysics", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: PageView(
                  physics: const PageScrollPhysics(),
                  children: List.generate(5, (index) => Center(child: Text('Page $index'))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
