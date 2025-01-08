import 'package:flutter/material.dart';

class CircularProgressIndicatorScreen extends StatelessWidget {
  const CircularProgressIndicatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CircularProgressIndicator Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("CircularProgressIndicator - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CircularProgressIndicator(),
              SizedBox(height: 20),
              Text("CircularProgressIndicator - Blue Value Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
              SizedBox(height: 20),
              Text("CircularProgressIndicator - Red Background Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CircularProgressIndicator(
                backgroundColor: Colors.red,
              ),
              SizedBox(height: 20),
              Text("CircularProgressIndicator - Stroke Width 10", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CircularProgressIndicator(
                strokeWidth: 10,
              ),
              SizedBox(height: 20),
              Text("CircularProgressIndicator - Value 0.7", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CircularProgressIndicator(
                value: 0.7,
              ),
              SizedBox(height: 20),
              Text("CircularProgressIndicator - ValueColor and BackgroundColor", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                backgroundColor: Colors.yellow,
              ),
              SizedBox(height: 20),
              Text("CircularProgressIndicator - Stroke Width 2 and Value 0.3", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CircularProgressIndicator(
                strokeWidth: 2,
                value: 0.3,
              ),
              SizedBox(height: 20),
              Text("CircularProgressIndicator - With a Container", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: CircularProgressIndicator(),
              ),
              SizedBox(height: 20),
              Text("CircularProgressIndicator - With a Container and custom size", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                width: 100,
                height: 100,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: CircularProgressIndicator(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
