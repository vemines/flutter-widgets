import 'package:flutter/material.dart';

class UnderlineTabIndicatorScreen extends StatelessWidget {
  const UnderlineTabIndicatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UnderlineTabIndicator Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("UnderlineTabIndicator Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              _buildVariation(
                "Default UnderlineTabIndicator",
                const TabBar(
                  tabs: [
                    Tab(text: 'Tab 1'),
                    Tab(text: 'Tab 2'),
                  ],
                  indicator: UnderlineTabIndicator(),
                ),
              ),
              _buildVariation(
                "UnderlineTabIndicator - Custom Color",
                const TabBar(
                  tabs: [
                    Tab(text: 'Tab 1'),
                    Tab(text: 'Tab 2'),
                  ],
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(color: Colors.red, width: 3.0),
                  ),
                ),
              ),
              _buildVariation(
                "UnderlineTabIndicator - Custom Height",
                const TabBar(
                  tabs: [
                    Tab(text: 'Tab 1'),
                    Tab(text: 'Tab 2'),
                  ],
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 5.0),
                  ),
                ),
              ),
              _buildVariation(
                "UnderlineTabIndicator - Custom Insets",
                const TabBar(
                  tabs: [
                    Tab(text: 'Tab 1'),
                    Tab(text: 'Tab 2'),
                  ],
                  indicator: UnderlineTabIndicator(
                    insets: EdgeInsets.symmetric(horizontal: 20.0),
                  ),
                ),
              ),
              _buildVariation(
                "UnderlineTabIndicator - Custom Color and Height",
                const TabBar(
                  tabs: [
                    Tab(text: 'Tab 1'),
                    Tab(text: 'Tab 2'),
                  ],
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(color: Colors.green, width: 4.0),
                  ),
                ),
              ),
              _buildVariation(
                "UnderlineTabIndicator - Custom Color, Height and Insets",
                const TabBar(
                  tabs: [
                    Tab(text: 'Tab 1'),
                    Tab(text: 'Tab 2'),
                  ],
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    insets: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVariation(String name, Widget widget) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        widget,
        const SizedBox(height: 20),
      ],
    );
  }
}
