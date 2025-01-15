import 'package:flutter/material.dart';

class CustomPaintScreen extends StatelessWidget {
  const CustomPaintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomPaint Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CustomPaint - Example", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CustomPaint(
                size: const Size(100, 100),
                painter: MyPainter(),
              ),
              const SizedBox(height: 20),
              const Text("CustomPaint - Larger Size",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CustomPaint(
                size: const Size(200, 150),
                painter: MyPainter(),
              ),
              const SizedBox(height: 20),
              const Text("CustomPaint - Different Color",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CustomPaint(
                size: const Size(100, 100),
                painter: MyPainter(color: Colors.red),
              ),
              const SizedBox(height: 20),
              const Text("CustomPaint - Thicker Stroke",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CustomPaint(
                size: const Size(100, 100),
                painter: MyPainter(strokeWidth: 5),
              ),
              const SizedBox(height: 20),
              const Text("CustomPaint - Rounded Stroke",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CustomPaint(
                size: const Size(100, 100),
                painter: MyPainter(strokeCap: StrokeCap.round),
              ),
              const SizedBox(height: 20),
              const Text("CustomPaint - With Child (Not Applicable)",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              // CustomPaint does not directly take a child, so this is not applicable.
              // If you need to draw on top of a child, use a Stack with CustomPaint as one of the children.
              // Example:
              // Stack(
              //   children: [
              //     Container(color: Colors.yellow, width: 100, height: 100),
              //     CustomPaint(
              //       size: const Size(100, 100),
              //       painter: MyPainter(),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final StrokeCap strokeCap;

  MyPainter({this.color = Colors.blue, this.strokeWidth = 3, this.strokeCap = StrokeCap.butt});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..strokeCap = strokeCap
      ..style = PaintingStyle.stroke;

    final center = size.center(Offset.zero);
    final radius = size.width / 3;

    canvas.drawCircle(center, radius, paint);
    canvas.drawLine(Offset(0, size.height / 2), Offset(size.width, size.height / 2), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
