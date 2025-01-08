import 'package:flutter/material.dart';

class RenderClipOvalScreen extends StatelessWidget {
  const RenderClipOvalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RenderClipOval Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ClipOval - Basic"),
              const SizedBox(height: 8),
              ClipOval(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              const Text("ClipOval - With Container"),
              const SizedBox(height: 8),
              ClipOval(
                child: Container(
                  width: 150,
                  height: 100,
                  color: Colors.green,
                  child: const Center(child: Text("Oval")),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ClipOval - Different Size"),
              const SizedBox(height: 8),
              ClipOval(
                child: Container(
                  width: 80,
                  height: 120,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 20),
              const Text("ClipOval - With Image"),
              const SizedBox(height: 8),
              ClipOval(
                child: Image.network(
                  'https://via.placeholder.com/150',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              const Text("ClipOval - With Border"),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: ClipOval(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ClipOval - With Padding"),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ClipOval(
                  child: Container(
                    width: 80,
                    height: 80,
                    color: Colors.purple,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ClipOval - With Alignment (Not directly applicable)"),
              const SizedBox(height: 8),
              // ClipOval does not directly support alignment.
              // Alignment is typically handled by the parent widget.
              // This example shows how to align the ClipOval within a Container.
              Container(
                alignment: Alignment.center,
                child: ClipOval(
                  child: Container(
                    width: 70,
                    height: 70,
                    color: Colors.orange,
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
