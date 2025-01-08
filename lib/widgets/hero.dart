import 'package:flutter/material.dart';

class HeroScreen extends StatelessWidget {
  const HeroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Hero - Basic"),
              const SizedBox(height: 8),
              Hero(
                tag: 'hero-basic',
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              const Text("Hero - Different Size"),
              const SizedBox(height: 8),
              Hero(
                tag: 'hero-different-size',
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 20),
              const Text("Hero - Rounded Corners"),
              const SizedBox(height: 8),
              Hero(
                tag: 'hero-rounded',
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Hero - With Text"),
              const SizedBox(height: 8),
              Hero(
                tag: 'hero-with-text',
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.yellow,
                  child: const Center(
                    child: Text(
                      'Text',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Hero - With Image"),
              const SizedBox(height: 8),
              Hero(
                tag: 'hero-with-image',
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://via.placeholder.com/100'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Hero - With Different Tag"),
              const SizedBox(height: 8),
              Hero(
                tag: 'hero-different-tag',
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
