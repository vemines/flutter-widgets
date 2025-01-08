import 'package:flutter/material.dart';

class ImageIconScreen extends StatelessWidget {
  const ImageIconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageIcon Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ImageIcon Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  Column(
                    children: [
                      Text("Default ImageIcon"),
                      ImageIcon(
                        AssetImage('assets/icon.png'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("ImageIcon - Color Red"),
                      ImageIcon(
                        AssetImage('assets/icon.png'),
                        color: Colors.red,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("ImageIcon - Size 48"),
                      ImageIcon(
                        AssetImage('assets/icon.png'),
                        size: 48,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("ImageIcon - Color Blue, Size 32"),
                      ImageIcon(
                        AssetImage('assets/icon.png'),
                        color: Colors.blue,
                        size: 32,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("ImageIcon - Opacity 0.5"),
                      Opacity(
                        opacity: 0.5,
                        child: ImageIcon(
                          AssetImage('assets/icon.png'),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("ImageIcon - With Padding"),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ImageIcon(
                          AssetImage('assets/icon.png'),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("ImageIcon - With Container Background"),
                      Container(
                        color: Colors.grey[200],
                        child: ImageIcon(
                          AssetImage('assets/icon.png'),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("ImageIcon - With Alignment"),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: ImageIcon(
                          AssetImage('assets/icon.png'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
