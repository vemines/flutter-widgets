import 'package:flutter/material.dart';

class RenderClipPathScreen extends StatelessWidget {
  const RenderClipPathScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RenderClipPath Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("RenderClipPath Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildClipPathVariation(
                    "Basic ClipPath",
                    ClipPath(
                      clipper: _TriangleClipper(),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  _buildClipPathVariation(
                    "ClipPath with Red Background",
                    ClipPath(
                      clipper: _TriangleClipper(),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  _buildClipPathVariation(
                    "ClipPath with Larger Size",
                    ClipPath(
                      clipper: _TriangleClipper(),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  _buildClipPathVariation(
                    "ClipPath with Custom Clipper",
                    ClipPath(
                      clipper: _CustomClipperExample(),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  _buildClipPathVariation(
                    "ClipPath with Different Color Container",
                    ClipPath(
                      clipper: _TriangleClipper(),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.purple,
                        child: Center(child: Text("Text", style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ),
                  _buildClipPathVariation(
                    "ClipPath with Padding",
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipPath(
                        clipper: _TriangleClipper(),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                  ),
                  _buildClipPathVariation(
                    "ClipPath with Margin",
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      child: ClipPath(
                        clipper: _TriangleClipper(),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.lime,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildClipPathVariation(String label, Widget clipPath) {
    return Column(
      children: [
        Tooltip(message: label, child: clipPath),
        SizedBox(height: 8),
        Text(label, textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}

class _TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(_TriangleClipper oldClipper) => false;
}

class _CustomClipperExample extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.addOval(
        Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: size.width / 2));
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
