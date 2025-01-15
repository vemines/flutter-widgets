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
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Image.network required server providing the correct Content-Type. ex: image/jpeg, image/png, image/gif",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text("Image - Network Image", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Image.network(
                'https://picsum.photos/300/300',
                width: 150,
                height: 150,
              ),
              SizedBox(height: 20),
              Text("Image - Network Image with BoxFit.cover",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                width: 150,
                height: 150,
                child: Image.network(
                  'https://picsum.photos/300/300',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text("Image - Network Image with BoxFit.contain 200 on 350",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                width: 350,
                height: 350,
                child: Image.network(
                  'https://picsum.photos/200/200',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              Text("Image - Network Image with different width and height",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Image.network(
                'https://picsum.photos/300/300',
                width: 300,
                height: 300,
              ),
              SizedBox(height: 20),
              Text("Image - Asset Image with errorBuilder",
                  style: TextStyle(fontWeight: FontWeight.bold)),
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
              Text("Image - Network Image with color + colorBlendMode",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Image.network(
                'https://picsum.photos/300/300',
                width: 150,
                height: 150,
                color: Colors.blue,
                colorBlendMode: BlendMode.color,
              ),
              SizedBox(height: 20),
              Text("Image - Network Image with Alignment",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                width: 300,
                height: 300,
                color: Colors.grey[200],
                child: Image.network(
                  'https://picsum.photos/200/200',
                  alignment: Alignment.bottomRight,
                ),
              ),
              SizedBox(height: 20),
              Text(
                  "Image - Network Image with repeat. perfect when 3x3.\nIt can weird in Debug mode 0.5,1,1,0.5",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                width: 300,
                height: 300,
                child: Image.network(
                  'https://picsum.photos/100/100',
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
