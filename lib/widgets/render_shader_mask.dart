import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class RenderShaderMaskScreen extends StatelessWidget {
  const RenderShaderMaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RenderShaderMask Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("RenderShaderMask - Basic Example",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    colors: [Colors.red, Colors.blue],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcATop,
                child: Text("Gradient Text", style: TextStyle(fontSize: 30, color: Colors.white)),
              ),
              SizedBox(height: 20),
              Text("RenderShaderMask - With Image", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    colors: [Colors.yellow, Colors.green],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcATop,
                child: Image.network(
                  'https://via.placeholder.com/150',
                  width: 150,
                  height: 150,
                ),
              ),
              SizedBox(height: 20),
              Text("RenderShaderMask - Different Blend Mode",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return RadialGradient(
                    colors: [Colors.purple, Colors.orange],
                    center: Alignment.center,
                    radius: 0.5,
                  ).createShader(bounds);
                },
                blendMode: BlendMode.dstOut,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              Text("RenderShaderMask - Complex Shader",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return ui.Gradient.sweep(
                    Offset(bounds.width / 2, bounds.height / 2),
                    [Colors.pink, Colors.cyan, Colors.lime],
                    [0.0, 0.5, 1.0],
                    TileMode.clamp,
                    0.0,
                    3.14 * 2,
                  );
                },
                blendMode: BlendMode.srcATop,
                child: Icon(Icons.star, size: 80, color: Colors.white),
              ),
              SizedBox(height: 20),
              Text("RenderShaderMask - With Custom Shader",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return ui.Gradient.linear(
                    Offset(0, 0),
                    Offset(bounds.width, bounds.height),
                    [Colors.teal, Colors.indigo],
                    [0.0, 1.0],
                  );
                },
                blendMode: BlendMode.srcOver,
                child: Container(
                  width: 120,
                  height: 60,
                  color: Colors.white,
                  child:
                      Center(child: Text("Custom Shader", style: TextStyle(color: Colors.black))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
