import 'package:flutter/material.dart';

class RenderCustomPaintScreen extends StatelessWidget {
  const RenderCustomPaintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RenderCustomPaint Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("CustomPaint - Basic", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CustomPaint(
                size: Size(100, 100),
                painter: _MyPainter(),
              ),
              SizedBox(height: 20),
              Text("CustomPaint - Red Circle", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CustomPaint(
                size: Size(100, 100),
                painter: _MyPainter(color: Colors.red),
              ),
              SizedBox(height: 20),
              Text("CustomPaint - Larger Size", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CustomPaint(
                size: Size(150, 150),
                painter: _MyPainter(),
              ),
              SizedBox(height: 20),
              Text("CustomPaint - Different Stroke Width",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CustomPaint(
                size: Size(100, 100),
                painter: _MyPainter(strokeWidth: 5),
              ),
              SizedBox(height: 20),
              Text("CustomPaint - With Child (Container)",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CustomPaint(
                size: Size(100, 100),
                painter: _MyPainter(),
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue.withValues(alpha: 255 * 0.5),
                ),
              ),
              SizedBox(height: 20),
              Text("CustomPaint - With Child (Text)",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CustomPaint(
                size: Size(100, 100),
                painter: _MyPainter(),
                child: Center(child: Text("Text", style: TextStyle(color: Colors.white))),
              ),
              SizedBox(height: 20),
              Text("CustomPaint - Different Style", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CustomPaint(
                size: Size(100, 100),
                painter: _MyPainter(style: PaintingStyle.fill),
              ),
              SizedBox(height: 20),
              Text("CustomPaint - With Custom Offset",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CustomPaint(
                size: Size(100, 100),
                painter: _MyPainter(offset: Offset(20, 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MyPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final PaintingStyle style;
  final Offset offset;

  _MyPainter(
      {this.color = Colors.black,
      this.strokeWidth = 1,
      this.style = PaintingStyle.stroke,
      this.offset = Offset.zero});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = style;

    final center = size.center(offset);
    final radius = size.width / 3;

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
