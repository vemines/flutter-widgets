import 'package:flutter/material.dart';
import 'dart:ui';

class BackdropFilterScreen extends StatelessWidget {
  const BackdropFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BackdropFilter Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("BackdropFilter - Basic Blur",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey.withValues(alpha: 255 * 0.3),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        'https://placekitten.com/200/100',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned.fill(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Container(
                          color: Colors.black.withValues(alpha: 255 * 0),
                        ),
                      ),
                    ),
                    const Center(
                        child: Text("Blurred Text", style: TextStyle(color: Colors.white))),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("BackdropFilter - Different Blur",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey.withValues(alpha: 255 * 0.3),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        'https://placekitten.com/200/100',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned.fill(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          color: Colors.black.withValues(alpha: 255 * 0),
                        ),
                      ),
                    ),
                    const Center(
                        child: Text("More Blurred Text", style: TextStyle(color: Colors.white))),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("BackdropFilter - With Color Filter",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey.withValues(alpha: 255 * 0.3),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        'https://placekitten.com/200/100',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned.fill(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Container(
                          color: Colors.blue.withValues(alpha: 255 * 0.2),
                        ),
                      ),
                    ),
                    const Center(
                        child: Text("Colored Blur", style: TextStyle(color: Colors.white))),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("BackdropFilter - With Different Image",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey.withValues(alpha: 255 * 0.3),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        'https://placekitten.com/200/101',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned.fill(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Container(
                          color: Colors.black.withValues(alpha: 255 * 0),
                        ),
                      ),
                    ),
                    const Center(
                        child: Text("Blurred Text", style: TextStyle(color: Colors.white))),
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
