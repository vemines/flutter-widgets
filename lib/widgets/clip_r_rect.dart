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
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ClipRRect - BorderRadius 10"),
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
              const Text("ClipRRect - topLeft bottomRight Radius"),
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
              const Text("ClipRRect - Circular Clip 50% width and height"),
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
                  'https://placehold.co/150x150',
                  fit: BoxFit.cover,
                  width: 150,
                  height: 150,
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
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
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
