import 'package:flutter/material.dart';

class ClipRRectScreen extends StatelessWidget {
  const ClipRRectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ClipRRect Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ClipRRect - Basic Rounded Corners"),
              const SizedBox(height: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              const Text("ClipRRect - Different Corner Radii"),
              const SizedBox(height: 8),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 20),
              const Text("ClipRRect - Circular Clip"),
              const SizedBox(height: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 20),
              const Text("ClipRRect - With Image"),
              const SizedBox(height: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  'https://via.placeholder.com/150',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              const Text("ClipRRect - With Border"),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ClipRRect - Wrapping a Text Widget"),
              const SizedBox(height: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  color: Colors.grey[200],
                  padding: const EdgeInsets.all(8),
                  child: const Text("Clipped Text"),
                ),
              ),
              const SizedBox(height: 20),
              // The following variation is commented out because ClipRRect without a child will not render anything visually.
              // const Text("ClipRRect - No Child (Will not be visible)"),
              // const SizedBox(height: 8),
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(10),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
