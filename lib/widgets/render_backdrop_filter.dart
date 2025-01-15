import 'package:flutter/material.dart';
import 'dart:ui';

class RenderBackdropFilterScreen extends StatelessWidget {
  const RenderBackdropFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RenderBackdropFilter Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("RenderBackdropFilter - Blur", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue.withValues(alpha: 255 * 0.3),
                ),
                child: Center(
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 50,
                        child: Text("Blurred Text", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("RenderBackdropFilter - Different Blur",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.green.withValues(alpha: 255 * 0.3),
                ),
                child: Center(
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 2),
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 50,
                        child: Text("Blurred Text", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("RenderBackdropFilter - With Color Filter",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.red.withValues(alpha: 255 * 0.3),
                ),
                child: Center(
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 50,
                        child: Text("Blurred Text", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("RenderBackdropFilter - With Different Child",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.yellow.withValues(alpha: 255 * 0.3),
                ),
                child: Center(
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Icon(Icons.star, size: 40, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("RenderBackdropFilter - With Different Child and Alignment",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.purple.withValues(alpha: 255 * 0.3),
                ),
                child: Center(
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        alignment: Alignment.bottomRight,
                        width: 100,
                        height: 50,
                        child: Icon(Icons.favorite, size: 30, color: Colors.white),
                      ),
                    ),
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
