import 'package:flutter/material.dart';

class ScrollbarThemeDataScreen extends StatelessWidget {
  const ScrollbarThemeDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ScrollbarThemeData Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ScrollbarThemeData - Default"),
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
              const Text("ScrollbarThemeData - Custom Thumb Color"),
              SizedBox(
                height: 100,
                child: Scrollbar(
                  thumbVisibility: true,
                  trackVisibility: true,
                  thickness: 10,
                  radius: const Radius.circular(10),
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ScrollbarThemeData - Custom Track Color"),
              SizedBox(
                height: 100,
                child: Scrollbar(
                  thumbVisibility: true,
                  trackVisibility: true,
                  thickness: 10,
                  radius: const Radius.circular(10),
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ScrollbarThemeData - Custom Shape"),
              SizedBox(
                height: 100,
                child: Scrollbar(
                  thumbVisibility: true,
                  trackVisibility: true,
                  thickness: 10,
                  radius: const Radius.circular(10),
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ScrollbarThemeData - Custom Thickness"),
              SizedBox(
                height: 100,
                child: Scrollbar(
                  thumbVisibility: true,
                  trackVisibility: true,
                  thickness: 20,
                  radius: const Radius.circular(10),
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ScrollbarThemeData - Custom Track Visibility"),
              SizedBox(
                height: 100,
                child: Scrollbar(
                  thumbVisibility: true,
                  trackVisibility: false,
                  thickness: 10,
                  radius: const Radius.circular(10),
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ScrollbarThemeData - Custom Thumb Visibility"),
              SizedBox(
                height: 100,
                child: Scrollbar(
                  thumbVisibility: false,
                  trackVisibility: true,
                  thickness: 10,
                  radius: const Radius.circular(10),
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ScrollbarThemeData - Custom Scrollbar Orientation"),
              SizedBox(
                height: 100,
                child: Scrollbar(
                  thumbVisibility: true,
                  trackVisibility: true,
                  thickness: 10,
                  radius: const Radius.circular(10),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (context, index) =>
                        SizedBox(width: 100, child: ListTile(title: Text('Item $index'))),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ScrollbarThemeData - Wrapped with Theme"),
              SizedBox(
                height: 100,
                child: Theme(
                  data: ThemeData(
                      scrollbarTheme:
                          const ScrollbarThemeData(thumbColor: WidgetStatePropertyAll(Colors.red))),
                  child: Scrollbar(
                    child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
                    ),
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
