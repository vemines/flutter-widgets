import 'package:flutter/material.dart';

class ClipRectScreen extends StatelessWidget {
  const ClipRectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ClipRect Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ClipRect Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildClipRectVariation(
                    "Basic ClipRect",
                    ClipRect(
                      child: Container(
                        color: Colors.blue,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  _buildClipRectVariation(
                    "ClipRect with Rounded Corners",
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.green,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  _buildClipRectVariation(
                    "ClipRect with Custom Clipper",
                    ClipPath(
                      clipper: const _TriangleClipper(),
                      child: Container(
                        color: Colors.orange,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  _buildClipRectVariation(
                    "ClipRect with Different Size",
                    ClipRect(
                      child: Container(
                        color: Colors.red,
                        width: 150,
                        height: 75,
                      ),
                    ),
                  ),
                  _buildClipRectVariation(
                    "ClipRect with Alignment",
                    Align(
                      alignment: Alignment.bottomRight,
                      child: ClipRect(
                        child: Container(
                          color: Colors.purple,
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                  ),
                  _buildClipRectVariation(
                    "ClipRect with Padding",
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipRect(
                        child: Container(
                          color: Colors.teal,
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                  ),
                  // ClipRect without a child will cause an error, so it's commented out.
                  // _buildClipRectVariation(
                  //   "ClipRect without child (Error)",
                  //   ClipRect(),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildClipRectVariation(String name, Widget widget) {
    return Column(
      children: [
        Tooltip(message: name, child: widget),
        Text(name, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

class _TriangleClipper extends CustomClipper<Path> {
  const _TriangleClipper();
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
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
