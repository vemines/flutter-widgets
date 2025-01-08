import 'package:flutter/material.dart';

class OverflowBarScreen extends StatelessWidget {
  const OverflowBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OverflowBar Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("OverflowBar Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              const Text("OverflowBar - Default"),
              OverflowBar(
                children: [
                  ElevatedButton(onPressed: (){}, child: const Text("Button 1")),
                  ElevatedButton(onPressed: (){}, child: const Text("Button 2")),
                  ElevatedButton(onPressed: (){}, child: const Text("Button 3")),
                  ElevatedButton(onPressed: (){}, child: const Text("Button 4")),
                ],
              ),
              const SizedBox(height: 16),
              const Text("OverflowBar - Spacing"),
              OverflowBar(
                spacing: 10,
                children: [
                  ElevatedButton(onPressed: (){}, child: const Text("Button 1")),
                  ElevatedButton(onPressed: (){}, child: const Text("Button 2")),
                  ElevatedButton(onPressed: (){}, child: const Text("Button 3")),
                  ElevatedButton(onPressed: (){}, child: const Text("Button 4")),
                ],
              ),
              const SizedBox(height: 16),
              const Text("OverflowBar - Alignment Start"),
              OverflowBar(
                alignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(onPressed: (){}, child: const Text("Button 1")),
                  ElevatedButton(onPressed: (){}, child: const Text("Button 2")),
                  ElevatedButton(onPressed: (){}, child: const Text("Button 3")),
                  ElevatedButton(onPressed: (){}, child: const Text("Button 4")),
                ],
              ),
              const SizedBox(height: 16),
              const Text("OverflowBar - Alignment End"),
              OverflowBar(
                alignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(onPressed: (){}, child: const Text("Button 1")),
                  ElevatedButton(onPressed: (){}, child: const Text("Button 2")),
                  ElevatedButton(onPressed: (){}, child: const Text("Button 3")),
                  ElevatedButton(onPressed: (){}, child: const Text("Button 4")),
                ],
              ),
              const SizedBox(height: 16),
              const Text("OverflowBar - Alignment Center"),
              OverflowBar(
                alignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){}, child: const Text("Button 1")),
                  ElevatedButton(onPressed: (){}, child: const Text("Button 2")),
                  ElevatedButton(onPressed: (){}, child: const Text("Button 3")),
                  ElevatedButton(onPressed: (){}, child: const Text("Button 4")),
                ],
              ),
              const SizedBox(height: 16),
              const Text("OverflowBar - Overflow Direction Top to Bottom"),
              OverflowBar(
                overflowDirection: VerticalDirection.down,
                children: [
                  ElevatedButton(onPressed: (){}, child: const Text("Button 1")),
                  ElevatedButton(onPressed: (){}, child: const Text("Button 2")),
                  ElevatedButton(onPressed: (){}, child: const Text("Button 3")),
                  ElevatedButton(onPressed: (){}, child: const Text("Button 4")),
                ],
              ),
              const SizedBox(height: 16),
              const Text("OverflowBar - Overflow Direction Bottom to Top"),
              OverflowBar(
                overflowDirection: VerticalDirection.up,
                children: [
                  ElevatedButton(onPressed: (){}, child: const Text("Button 1")),
                  ElevatedButton(onPressed: (){}, child: const Text("Button 2")),
                  ElevatedButton(onPressed: (){}, child: const Text("Button 3")),
                  ElevatedButton(onPressed: (){}, child: const Text("Button 4")),
                ],
              ),
              const SizedBox(height: 16),
              const Text("OverflowBar - Wrapped with Container"),
              Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.all(8),
                child: OverflowBar(
                  children: [
                    ElevatedButton(onPressed: (){}, child: const Text("Button 1")),
                    ElevatedButton(onPressed: (){}, child: const Text("Button 2")),
                    ElevatedButton(onPressed: (){}, child: const Text("Button 3")),
                    ElevatedButton(onPressed: (){}, child: const Text("Button 4")),
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
