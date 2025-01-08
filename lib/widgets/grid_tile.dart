import 'package:flutter/material.dart';

class GridTileScreen extends StatelessWidget {
  const GridTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridTile Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("GridTile Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("Basic GridTile", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              GridTile(
                header: const Text("Header"),
                footer: const Text("Footer"),
                child: Container(color: Colors.blue, height: 100),
              ),
              const SizedBox(height: 20),
              const Text("GridTile with different colors",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              GridTile(
                header: const Text("Header", style: TextStyle(color: Colors.white)),
                footer: const Text("Footer", style: TextStyle(color: Colors.white)),
                child: Container(color: Colors.green, height: 100),
              ),
              const SizedBox(height: 20),
              const Text("GridTile with custom padding",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              GridTile(
                header: const Text("Header"),
                footer: const Text("Footer"),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(color: Colors.orange, height: 60),
                ),
              ),
              const SizedBox(height: 20),
              const Text("GridTile with custom header and footer alignment",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              GridTile(
                header: const Align(alignment: Alignment.centerLeft, child: Text("Header Left")),
                footer: const Align(alignment: Alignment.centerRight, child: Text("Footer Right")),
                child: Container(color: Colors.purple, height: 100),
              ),
              const SizedBox(height: 20),
              const Text("GridTile with custom text styles",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              GridTile(
                header: const Text("Header",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                footer: const Text("Footer", style: TextStyle(fontStyle: FontStyle.italic)),
                child: Container(color: Colors.teal, height: 100),
              ),
              const SizedBox(height: 20),
              const Text("GridTile with a different child",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              GridTile(
                header: const Text("Header"),
                footer: const Text("Footer"),
                child: const Center(child: Icon(Icons.star, size: 50, color: Colors.white)),
              ),
              const SizedBox(height: 20),
              const Text("GridTile with a different child and no header/footer",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              GridTile(
                child: const Center(
                    child: Text("No Header/Footer", style: TextStyle(color: Colors.white))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
