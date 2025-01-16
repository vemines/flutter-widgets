import 'dart:math' as math;

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
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              _buildClipperWidget(
                'Rectangle',
                Colors.blue,
                const _RectangularClipper(),
              ),
              _buildClipperWidget(
                'Circle',
                Colors.green,
                const _CircleClipper2(),
              ),
              _buildClipperWidget(
                'Rounded Rectangle',
                Colors.orange,
                const _RRectClipper(),
              ),
              _buildClipperWidget(
                'No Child (Invisible)',
                Colors.transparent,
                const _RectangularClipper(),
                hasChild: false,
              ),
              _buildClipperText(
                'Wrapping Text',
                const _RRectClipper(),
                const Text('Clipped Text', style: TextStyle(fontSize: 20)),
              ),
              _buildClipPathVariation(
                "ClipRect with Triangle Clipper",
                ClipPath(
                  clipper: const _TriangleClipper(),
                  child: Container(
                    color: Colors.orange,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              _buildClipPathVariation(
                "ClipRect with Circle Clipper",
                ClipPath(
                  clipper: const _CircleClipper(),
                  child: Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              _buildClipPathVariation(
                "ClipRect with Rounded Rectangle Clipper",
                ClipPath(
                  clipper: const _RoundedRectangleClipper(),
                  child: Container(
                    color: Colors.purple,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              _buildClipPathVariation(
                "ClipRect with Star Clipper",
                ClipPath(
                  clipper: const _StarClipper(),
                  child: Container(
                    color: Colors.teal,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              _buildClipPathVariation(
                "ClipRect with Polygon Clipper",
                ClipPath(
                  clipper: const _PolygonClipper(),
                  child: Container(
                    color: Colors.amber,
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

  Widget _buildClipperWidget(String label, Color color, CustomClipper<Path> clipper,
      {bool hasChild = true}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('ClipPath - $label'),
        ClipPath(
          clipper: clipper,
          child: hasChild
              ? Container(
                  width: 100,
                  height: 100,
                  color: color,
                )
              : null,
        ),
      ],
    );
  }

  Widget _buildClipperText(String label, CustomClipper<Path> clipper, Widget child) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('ClipPath - $label'),
        ClipPath(
          clipper: clipper,
          child: child,
        ),
      ],
    );
  }

  Widget _buildClipPathVariation(String name, Widget widget) {
    return Column(
      children: [
        Tooltip(message: name, child: widget),
        Text(name, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

class _CircleClipper2 extends CustomClipper<Path> {
  const _CircleClipper2();
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

class _RectangularClipper extends CustomClipper<Path> {
  const _RectangularClipper();
  @override
  Path getClip(Size size) {
    return Path()..addRect(Rect.fromLTWH(0, 0, size.width, size.height));
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class _RRectClipper extends CustomClipper<Path> {
  const _RRectClipper();
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

class _CircleClipper extends CustomClipper<Path> {
  const _CircleClipper();
  @override
  Path getClip(Size size) {
    final path = Path();
    path.addOval(Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: size.width / 2,
    ));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class _RoundedRectangleClipper extends CustomClipper<Path> {
  const _RoundedRectangleClipper();
  @override
  Path getClip(Size size) {
    final path = Path();
    path.addRRect(RRect.fromRectAndRadius(
      Rect.fromLTWH(0, 0, size.width, size.height),
      const Radius.circular(15),
    ));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class _StarClipper extends CustomClipper<Path> {
  const _StarClipper();
  @override
  Path getClip(Size size) {
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    final double radius = size.width / 2;
    const double numberOfPoints = 5;
    final double startAngle = -math.pi / 2;
    final double angleIncrement = 2 * math.pi / numberOfPoints;
    final Path path = Path();

    path.moveTo(
      centerX + radius * math.cos(startAngle),
      centerY + radius * math.sin(startAngle),
    );

    for (int i = 1; i <= numberOfPoints; i++) {
      double outerAngle = startAngle + i * angleIncrement;
      double innerAngle = startAngle + i * angleIncrement - angleIncrement / 2;
      final innerRadius = radius * 0.4;

      path.lineTo(
        centerX + innerRadius * math.cos(innerAngle),
        centerY + innerRadius * math.sin(innerAngle),
      );
      path.lineTo(
        centerX + radius * math.cos(outerAngle),
        centerY + radius * math.sin(outerAngle),
      );
    }

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class _PolygonClipper extends CustomClipper<Path> {
  const _PolygonClipper();
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width * 0.2, size.height * 0.2);
    path.lineTo(size.width * 0.8, size.height * 0.1);
    path.lineTo(size.width * 0.9, size.height * 0.5);
    path.lineTo(size.width * 0.5, size.height * 0.9);
    path.lineTo(size.width * 0.1, size.height * 0.6);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
