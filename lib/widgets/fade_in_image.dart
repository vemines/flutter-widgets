import 'package:flutter/material.dart';

class FadeInImageScreen extends StatelessWidget {
  const FadeInImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FadeInImage Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("FadeInImage - Usage", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              FadeInImage(
                placeholder:
                    AssetImage('assets/placeholder.png'), // Replace with your placeholder asset
                image: NetworkImage('https://via.placeholder.com/150'),
                width: 150,
                height: 150,
              ),
              SizedBox(height: 20),
              Text("FadeInImage - Different Size", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              FadeInImage(
                placeholder:
                    AssetImage('assets/placeholder.png'), // Replace with your placeholder asset
                image: NetworkImage('https://via.placeholder.com/200'),
                width: 200,
                height: 100,
              ),
              SizedBox(height: 20),
              Text("FadeInImage - With Error Widget",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              FadeInImage(
                placeholder:
                    AssetImage('assets/placeholder.png'), // Replace with your placeholder asset
                image: NetworkImage('invalid_url'),
                width: 150,
                height: 150,
                imageErrorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 150,
                    height: 150,
                    color: Colors.grey[300],
                    child: Center(child: Icon(Icons.error, color: Colors.red)),
                  );
                },
              ),
              SizedBox(height: 20),
              Text("FadeInImage - Fit Cover", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                width: 150,
                height: 150,
                child: FadeInImage(
                  placeholder:
                      AssetImage('assets/placeholder.png'), // Replace with your placeholder asset
                  image: NetworkImage('https://via.placeholder.com/300'),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text("FadeInImage - Fit Contain", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                width: 150,
                height: 150,
                child: FadeInImage(
                  placeholder:
                      AssetImage('assets/placeholder.png'), // Replace with your placeholder asset
                  image: NetworkImage('https://via.placeholder.com/300'),
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              Text("FadeInImage - With Placeholder Size",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              FadeInImage(
                placeholder:
                    AssetImage('assets/placeholder.png'), // Replace with your placeholder asset
                image: NetworkImage('https://via.placeholder.com/150'),
                width: 150,
                height: 150,
                placeholderFit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text("FadeInImage - With Different Placeholder",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              FadeInImage(
                placeholder: NetworkImage('https://via.placeholder.com/50'),
                image: NetworkImage('https://via.placeholder.com/150'),
                width: 150,
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
