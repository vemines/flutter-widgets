import 'package:flutter/material.dart';

class AspectRatioScreen extends StatelessWidget {
  const AspectRatioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AspectRatio Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("AspectRatio - 16:9 Aspect Ratio", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  color: Colors.blue,
                  child: const Center(child: Text("16:9", style: TextStyle(color: Colors.white))),
                ),
              ),
              const SizedBox(height: 20),
              const Text("AspectRatio - 4:3 Aspect Ratio", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              AspectRatio(
                aspectRatio: 4 / 3,
                child: Container(
                  color: Colors.green,
                  child: const Center(child: Text("4:3", style: TextStyle(color: Colors.white))),
                ),
              ),
              const SizedBox(height: 20),
              const Text("AspectRatio - 1:1 Aspect Ratio", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  color: Colors.red,
                  child: const Center(child: Text("1:1", style: TextStyle(color: Colors.white))),
                ),
              ),
              const SizedBox(height: 20),
              const Text("AspectRatio - Custom Aspect Ratio (2:1)", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              AspectRatio(
                aspectRatio: 2,
                child: Container(
                  color: Colors.orange,
                  child: const Center(child: Text("2:1", style: TextStyle(color: Colors.white))),
                ),
              ),
              const SizedBox(height: 20),
              const Text("AspectRatio - With different child", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network('https://via.placeholder.com/150', fit: BoxFit.cover),
              ),
              const SizedBox(height: 20),
              const Text("AspectRatio - With a very tall child", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              AspectRatio(
                aspectRatio: 16/9,
                child: Container(
                  color: Colors.purple,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Tall Child", style: TextStyle(color: Colors.white)),
                      Text("Tall Child", style: TextStyle(color: Colors.white)),
                      Text("Tall Child", style: TextStyle(color: Colors.white)),
                    ],
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
