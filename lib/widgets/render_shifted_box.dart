import 'package:flutter/material.dart';

class RenderShiftedBoxScreen extends StatelessWidget {
  const RenderShiftedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RenderShiftedBox Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RenderShiftedBox Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildVariation(
                    "RenderShiftedBox - Basic",
                    const _RenderShiftedBoxExample(),
                  ),
                  _buildVariation(
                    "RenderShiftedBox - With Padding",
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: const _RenderShiftedBoxExample(),
                    ),
                  ),
                  _buildVariation(
                    "RenderShiftedBox - With Margin",
                    Container(
                      margin: const EdgeInsets.all(20.0),
                      child: const _RenderShiftedBoxExample(),
                    ),
                  ),
                  _buildVariation(
                    "RenderShiftedBox - With Container",
                    Container(
                      color: Colors.blue.shade100,
                      child: const _RenderShiftedBoxExample(child: Text("Wrapped Text")),
                    ),
                  ),
                  _buildVariation(
                    "RenderShiftedBox - With Alignment",
                    Align(
                      alignment: Alignment.bottomRight,
                      child: const _RenderShiftedBoxExample(child: Text("Aligned Text")),
                    ),
                  ),
                  _buildVariation(
                    "RenderShiftedBox - With SizedBox",
                    const SizedBox(
                      width: 200,
                      height: 100,
                      child: _RenderShiftedBoxExample(child: Text("Sized Text")),
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

  Widget _buildVariation(String name, Widget widget) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(message: name, child: Text(name, style: const TextStyle(fontWeight: FontWeight.bold))),
        const SizedBox(height: 8),
        widget,
      ],
    );
  }
}

class _RenderShiftedBoxExample extends StatelessWidget {
  final Widget? child;
  const _RenderShiftedBoxExample({this.child});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _ShiftedBoxPainter(),
      child: child,
    );
  }
}

class _ShiftedBoxPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);

    final shiftedRect = Rect.fromLTWH(10, 10, size.width - 20, size.height - 20);
    paint.color = Colors.blue;
    canvas.drawRect(shiftedRect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
