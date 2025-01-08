import 'package:flutter/material.dart';

class ConstrainedBoxScreen extends StatelessWidget {
  const ConstrainedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ConstrainedBox Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ConstrainedBox - Basic Constraints", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 100,
                  maxWidth: 200,
                  minHeight: 50,
                  maxHeight: 100,
                ),
                child: Container(
                  color: Colors.blue,
                  child: const Text("Constrained Box", textAlign: TextAlign.center,),
                ),
              ),
              const SizedBox(height: 16),
              const Text("ConstrainedBox - Different Max Width", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 150,
                  minHeight: 50,
                ),
                child: Container(
                  color: Colors.green,
                  child: const Text("Max Width 150", textAlign: TextAlign.center,),
                ),
              ),
              const SizedBox(height: 16),
              const Text("ConstrainedBox - Different Min Height", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 100,
                  minHeight: 80,
                ),
                child: Container(
                  color: Colors.orange,
                  child: const Text("Min Height 80", textAlign: TextAlign.center,),
                ),
              ),
              const SizedBox(height: 16),
              const Text("ConstrainedBox - Infinite Width", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              // ConstrainedBox with infinite width will cause an error if not wrapped in a widget that provides a finite width
              // such as a SizedBox or Container with a width.
              SizedBox(
                width: 200,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: double.infinity,
                    minHeight: 50,
                  ),
                  child: Container(
                    color: Colors.purple,
                    child: const Text("Infinite Width", textAlign: TextAlign.center,),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text("ConstrainedBox - With Child Alignment", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 150,
                  minHeight: 100,
                ),
                child: Container(
                  color: Colors.teal,
                  alignment: Alignment.bottomRight,
                  child: const Text("Bottom Right", textAlign: TextAlign.center,),
                ),
              ),
              const SizedBox(height: 16),
              const Text("ConstrainedBox - With Different Child", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 100,
                  minHeight: 50,
                ),
                child: const Icon(Icons.star, size: 40, color: Colors.red,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
