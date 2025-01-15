import 'package:flutter/material.dart';

class RenderClipRectScreen extends StatelessWidget {
  const RenderClipRectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RenderClipRect Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RenderClipRect - Clip"),
              const SizedBox(height: 8),
              ClipRect(
                child: Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderClipRect - Rounded Clip"),
              const SizedBox(height: 8),
              ClipRect(
                clipper: RoundedRectClipper(),
                child: Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderClipRect - With Child"),
              const SizedBox(height: 8),
              ClipRect(
                child: Container(
                  color: Colors.yellow,
                  width: 150,
                  height: 150,
                  child: const Center(child: Text("Clipped Text")),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderClipRect - Custom Clipper"),
              const SizedBox(height: 8),
              ClipRect(
                clipper: const MyCustomClipper(),
                child: Container(
                  color: Colors.orange,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderClipRect - With Different Size"),
              const SizedBox(height: 8),
              ClipRect(
                child: Container(
                  color: Colors.purple,
                  width: 50,
                  height: 150,
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderClipRect - With Margin"),
              const SizedBox(height: 8),
              Container(
                margin: const EdgeInsets.all(20),
                child: ClipRect(
                  child: Container(
                    color: Colors.teal,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderClipRect - With Padding"),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ClipRect(
                  child: Container(
                    color: Colors.lime,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoundedRectClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, size.width, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}

class MyCustomClipper extends CustomClipper<Rect> {
  const MyCustomClipper();
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, size.width / 2, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
