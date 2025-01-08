import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoThumbPainterScreen extends StatelessWidget {
  const CupertinoThumbPainterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoThumbPainter Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Default CupertinoThumbPainter", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                width: 20,
                height: 20,
                child: CustomPaint(
                  painter: CupertinoThumbPainter(),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoThumbPainter - Custom Color", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                width: 20,
                height: 20,
                child: CustomPaint(
                  painter: CupertinoThumbPainter(color: Colors.red),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoThumbPainter - Custom Radius", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                width: 20,
                height: 20,
                child: CustomPaint(
                  painter: CupertinoThumbPainter(radius: 10),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoThumbPainter - Custom Color and Radius", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                width: 20,
                height: 20,
                child: CustomPaint(
                  painter: CupertinoThumbPainter(color: Colors.blue, radius: 5),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoThumbPainter - Larger Size", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                width: 40,
                height: 40,
                child: CustomPaint(
                  painter: CupertinoThumbPainter(),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoThumbPainter - Different Color and Larger Size", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                width: 40,
                height: 40,
                child: CustomPaint(
                  painter: CupertinoThumbPainter(color: Colors.green),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoThumbPainter - Custom Radius and Larger Size", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                width: 40,
                height: 40,
                child: CustomPaint(
                  painter: CupertinoThumbPainter(radius: 15),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoThumbPainter - Custom Color, Radius and Larger Size", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                width: 40,
                height: 40,
                child: CustomPaint(
                  painter: CupertinoThumbPainter(color: Colors.purple, radius: 10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
