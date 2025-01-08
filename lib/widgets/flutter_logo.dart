import 'package:flutter/material.dart';

class FlutterLogoScreen extends StatelessWidget {
  const FlutterLogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterLogo Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("FlutterLogo - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              FlutterLogo(),
              SizedBox(height: 16),
              Text("FlutterLogo - Size 50", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              FlutterLogo(size: 50),
              SizedBox(height: 16),
              Text("FlutterLogo - Size 100, Colors", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text("FlutterLogo - Style Horizontal", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              FlutterLogo(style: FlutterLogoStyle.horizontal),
              SizedBox(height: 16),
              Text("FlutterLogo - Style Stacked", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              FlutterLogo(style: FlutterLogoStyle.stacked),
              SizedBox(height: 16),
              Text("FlutterLogo - Size 75, Style Horizontal, Colors",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text("FlutterLogo - Size 120, Style Stacked, Colors",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text("FlutterLogo - Size 60, Style Horizontal, Colors, textColor",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              FlutterLogo(size: 60, style: FlutterLogoStyle.horizontal, textColor: Colors.black),
              SizedBox(height: 16),
              Text("FlutterLogo - Size 90, Style Stacked, Colors, textColor",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              FlutterLogo(size: 90, style: FlutterLogoStyle.stacked, textColor: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
