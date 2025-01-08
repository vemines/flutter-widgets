import 'package:flutter/material.dart';

class CloseButtonAdaptiveScreen extends StatelessWidget {
  const CloseButtonAdaptiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CloseButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("CloseButton - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CloseButton(),
              SizedBox(height: 20),
              Text("CloseButton - Custom Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CloseButton(
                color: Colors.red,
              ),
              SizedBox(height: 20),
              Text("CloseButton - Custom Size (using IconButton)", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              IconButton(
                icon: Icon(Icons.close, size: 30),
                onPressed: () {},
              ),
              SizedBox(height: 20),
              Text("CloseButton - With a Container", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                padding: EdgeInsets.all(10),
                child: CloseButton(),
              ),
              SizedBox(height: 20),
              Text("CloseButton - With a different icon (using IconButton)", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              IconButton(
                icon: Icon(Icons.arrow_back, size: 24),
                onPressed: () {},
              ),
              SizedBox(height: 20),
              Text("CloseButton - Disabled (using IconButton)", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              IconButton(
                icon: Icon(Icons.close, size: 24),
                onPressed: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
