import 'package:flutter/material.dart';

class IconScreen extends StatelessWidget {
  const IconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Icon - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              Icon(Icons.star),
              SizedBox(height: 20),
              Text("Icon - Large Size", style: TextStyle(fontWeight: FontWeight.bold)),
              Icon(Icons.star, size: 48),
              SizedBox(height: 20),
              Text("Icon - Small Size", style: TextStyle(fontWeight: FontWeight.bold)),
              Icon(Icons.star, size: 16),
              SizedBox(height: 20),
              Text("Icon - Red Color", style: TextStyle(fontWeight: FontWeight.bold)),
              Icon(Icons.star, color: Colors.red),
              SizedBox(height: 20),
              Text("Icon - Blue Color with Size", style: TextStyle(fontWeight: FontWeight.bold)),
              Icon(Icons.star, color: Colors.blue, size: 32),
              SizedBox(height: 20),
              Text("Icon - opticalSize", style: TextStyle(fontWeight: FontWeight.bold)),
              Icon(Icons.star, opticalSize: 0.5),
              SizedBox(height: 20),
              Text("Icon - Direction RTL", style: TextStyle(fontWeight: FontWeight.bold)),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Icon(Icons.star),
              ),
              SizedBox(height: 20),
              Text("Icon - Semantic Label", style: TextStyle(fontWeight: FontWeight.bold)),
              Icon(Icons.star, semanticLabel: 'Favorite'),
              SizedBox(height: 20),
              Text("Icon - With Shadow (Not Directly Supported)",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              // Icon does not directly support shadow. Use a Container with decoration for shadow effect.
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 255 * 0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Icon(Icons.star),
              ),
              SizedBox(height: 20),
              Text("Icon - With Padding (Using Container)",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.star),
              ),
              SizedBox(height: 20),
              Text("Icon - With Margin (Using Container)",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                margin: EdgeInsets.all(10),
                child: Icon(Icons.star),
              ),
              SizedBox(height: 20),
              Text("Icon - With Alignment (Using Align)",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Align(
                alignment: Alignment.bottomRight,
                child: Icon(Icons.star),
              ),
              SizedBox(height: 20),
              Text("Icon - With Rotation (Using Transform)",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Transform.rotate(
                angle: 45 * 3.1415926535 / 180,
                child: Icon(Icons.star),
              ),
            ],
          ),
        ),
      ),
    );
  }
}