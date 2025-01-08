import 'package:flutter/material.dart';

class ListBodyScreen extends StatelessWidget {
  const ListBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListBody Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ListBody Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("ListBody - Default"),
              ListBody(
                children: const [
                  Text("Item 1"),
                  Text("Item 2"),
                  Text("Item 3"),
                ],
              ),
              const SizedBox(height: 20),
              const Text("ListBody - With Alignment"),
              ListBody(
                mainAxis: Axis.vertical,
                reverse: false,
                children: const [
                  Text("Item 1"),
                  Text("Item 2"),
                  Text("Item 3"),
                ],
              ),
              const SizedBox(height: 20),
              const Text("ListBody - With Reverse"),
              ListBody(
                mainAxis: Axis.vertical,
                reverse: true,
                children: const [
                  Text("Item 1"),
                  Text("Item 2"),
                  Text("Item 3"),
                ],
              ),
              const SizedBox(height: 20),
              const Text("ListBody - Horizontal"),
              ListBody(
                mainAxis: Axis.horizontal,
                children: const [
                  Text("Item 1"),
                  Text("Item 2"),
                  Text("Item 3"),
                ],
              ),
              const SizedBox(height: 20),
              const Text("ListBody - Horizontal with Reverse"),
              ListBody(
                mainAxis: Axis.horizontal,
                reverse: true,
                children: const [
                  Text("Item 1"),
                  Text("Item 2"),
                  Text("Item 3"),
                ],
              ),
              const SizedBox(height: 20),
              const Text("ListBody - With Different Text Styles"),
              ListBody(
                children: const [
                  Text("Item 1", style: TextStyle(fontSize: 18, color: Colors.blue)),
                  Text("Item 2", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("Item 3", style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic)),
                ],
              ),
              const SizedBox(height: 20),
              const Text("ListBody - With Padding"),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListBody(
                  children: const [
                    Text("Item 1"),
                    Text("Item 2"),
                    Text("Item 3"),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("ListBody - With Container"),
              Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.all(10.0),
                child: ListBody(
                  children: const [
                    Text("Item 1"),
                    Text("Item 2"),
                    Text("Item 3"),
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
