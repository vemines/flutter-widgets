import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Image - Basic Network Image", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Image.network(
                'https://via.placeholder.com/150',
                width: 150,
                height: 150,
              ),
              SizedBox(height: 20),
              Text("Image - Network Image with BoxFit.cover", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                width: 150,
                height: 150,
                child: Image.network(
                  'https://via.placeholder.com/150',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text("Image - Network Image with BoxFit.contain", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                width: 150,
                height: 150,
                child: Image.network(
                  'https://via.placeholder.com/150',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              Text("Image - Network Image with different width and height", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Image.network(
                'https://via.placeholder.com/150',
                width: 200,
                height: 100,
              ),
              SizedBox(height: 20),
              Text("Image - Asset Image", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              // Assuming you have an image named 'assets/my_image.png' in your project
              // If not, this will show a placeholder.
              Image.asset(
                'assets/my_image.png',
                width: 150,
                height: 150,
                errorBuilder: (context, error, stackTrace) {
                  return Text("Error loading asset image. Ensure 'assets/my_image.png' exists.");
                },
              ),
              SizedBox(height: 20),
              Text("Image - Network Image with Color Filter", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Image.network(
                'https://via.placeholder.com/150',
                width: 150,
                height: 150,
                color: Colors.blue,
                colorBlendMode: BlendMode.color,
              ),
              SizedBox(height: 20),
              Text("Image - Network Image with Alignment", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                width: 150,
                height: 150,
                color: Colors.grey[200],
                child: Image.network(
                  'https://via.placeholder.com/150',
                  alignment: Alignment.bottomRight,
                ),
              ),
              SizedBox(height: 20),
              Text("Image - Network Image with repeat", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                width: 150,
                height: 150,
                child: Image.network(
                  'https://via.placeholder.com/50',
                  repeat: ImageRepeat.repeat,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
