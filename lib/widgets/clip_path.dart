import 'package:flutter/material.dart';

class ClipPathScreen extends StatelessWidget {
  const ClipPathScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClipPath Showcase'),
      ),
      body: SingleChildScrollView(
        child: Wrap(
          spacing: 20,
          runSpacing: 20,
          alignment: WrapAlignment.center,
          children: [
// Basic ClipPath with a RectangularClipper
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('ClipPath - Rectangle'),
                ClipPath(
                  clipper: const RectangularClipper(),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
// ClipPath with a CircleClipper
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('ClipPath - Circle'),
                ClipPath(
                  clipper: const CircleClipper(),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
// ClipPath with a RRectClipper
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('ClipPath - Rounded Rectangle'),
                ClipPath(
                  clipper: const RRectClipper(),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
// ClipPath with a Custom Triangle Clipper
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('ClipPath - Triangle'),
                ClipPath(
                  clipper: const TriangleClipper(),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
// ClipPath without a child (not visually apparent)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('ClipPath - No Child (Invisible)'),
                ClipPath(
                  clipper: const RectangularClipper(),
                ),
              ],
            ),
// ClipPath wrapping Text
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('ClipPath - Wrapping Text'),
                ClipPath(
                  clipper: const RRectClipper(),
                  child: const Text(
                    'Clipped Text',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CircleClipper extends CustomClipper<Path> {
  const CircleClipper();
  @override
  Path getClip(Size size) {
    return Path()
      ..addOval(
          Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: size.width / 2));
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class RectangularClipper extends CustomClipper<Path> {
  const RectangularClipper();
  @override
  Path getClip(Size size) {
    return Path()..addRect(Rect.fromLTWH(0, 0, size.width, size.height));
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class RRectClipper extends CustomClipper<Path> {
  const RRectClipper();
  @override
  Path getClip(Size size) {
    return Path()
      ..addRRect(RRect.fromRectAndRadius(
          Rect.fromLTWH(0, 0, size.width, size.height), const Radius.circular(15)));
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class TriangleClipper extends CustomClipper<Path> {
  const TriangleClipper();
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
