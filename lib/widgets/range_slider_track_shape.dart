// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class RangeSliderTrackShapeScreen extends StatelessWidget {
  const RangeSliderTrackShapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RangeSliderTrackShape Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Default RangeSliderTrackShape",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  rangeTrackShape: const RoundedRectRangeSliderTrackShape(),
                ),
                child: RangeSlider(
                  values: const RangeValues(0.2, 0.8),
                  onChanged: (RangeValues values) {},
                ),
              ),
              const SizedBox(height: 20),
              const Text("Custom RangeSliderTrackShape - Rounded Ends",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  rangeTrackShape: const RoundedRectRangeSliderTrackShape(),
                ),
                child: RangeSlider(
                  values: const RangeValues(0.2, 0.8),
                  onChanged: (RangeValues values) {},
                ),
              ),
              const SizedBox(height: 20),
              const Text("Custom RangeSliderTrackShape - Height and Color",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  rangeTrackShape: RectangularRangeSliderTrackShape(
                    trackHeight: 10,
                    trackColor: Colors.blue.shade200,
                  ),
                ),
                child: RangeSlider(
                  values: const RangeValues(0.2, 0.8),
                  onChanged: (RangeValues values) {},
                ),
              ),
              const SizedBox(height: 20),
              const Text("Custom RangeSliderTrackShape - Different Active Color",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  rangeTrackShape: RectangularRangeSliderTrackShape(
                    activeTrackColor: Colors.green,
                    inactiveTrackColor: Colors.grey.shade300,
                  ),
                ),
                child: RangeSlider(
                  values: const RangeValues(0.2, 0.8),
                  onChanged: (RangeValues values) {},
                ),
              ),
              const SizedBox(height: 20),
              const Text("Custom RangeSliderTrackShape - Height and Radius",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  rangeTrackShape: const RoundedRectRangeSliderTrackShape(
                    trackHeight: 15,
                    radius: 8,
                  ),
                ),
                child: RangeSlider(
                  values: const RangeValues(0.2, 0.8),
                  onChanged: (RangeValues values) {},
                ),
              ),
              const SizedBox(height: 20),
              const Text("Custom RangeSliderTrackShape - Custom Overlay",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  rangeTrackShape: RectangularRangeSliderTrackShape(
                    overlayColor: Colors.purple.withValues(alpha: 255 * 0.3),
                  ),
                ),
                child: RangeSlider(
                  values: const RangeValues(0.2, 0.8),
                  onChanged: (RangeValues values) {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoundedRectRangeSliderTrackShape extends RangeSliderTrackShape {
  final double trackHeight;
  final double radius;

  const RoundedRectRangeSliderTrackShape({this.trackHeight = 4, this.radius = 4});

  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = this.trackHeight;
    final double trackLeft = offset.dx;
    final double trackTop = offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required Offset startThumbCenter,
    required Offset endThumbCenter,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    if (sliderTheme.trackHeight == null || sliderTheme.trackShape == null) {
      return;
    }

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    final Paint activePaint = Paint()
      ..color = sliderTheme.activeTrackColor ?? Colors.blue
      ..style = PaintingStyle.fill;

    final Paint inactivePaint = Paint()
      ..color = sliderTheme.inactiveTrackColor ?? Colors.grey
      ..style = PaintingStyle.fill;

    final Paint overlayPaint = Paint()
      ..color = sliderTheme.overlayColor ?? Colors.transparent
      ..style = PaintingStyle.fill;

    final double radius = this.radius;

    final Rect activesRect = Rect.fromLTRB(
      trackRect.left,
      trackRect.top,
      startThumbCenter.dx,
      trackRect.bottom,
    );

    final Rect activeRangeRect = Rect.fromLTRB(
      startThumbCenter.dx,
      trackRect.top,
      endThumbCenter.dx,
      trackRect.bottom,
    );
    final Rect leftInactiveRect = Rect.fromLTRB(
      trackRect.left,
      trackRect.top,
      startThumbCenter.dx,
      trackRect.bottom,
    );
    final Rect rightInactiveRect = Rect.fromLTRB(
      endThumbCenter.dx,
      trackRect.top,
      trackRect.right,
      trackRect.bottom,
    );
    context.canvas.drawRRect(
        RRect.fromRectAndRadius(leftInactiveRect, Radius.circular(radius)), inactivePaint);
    context.canvas
        .drawRRect(RRect.fromRectAndRadius(activeRangeRect, Radius.circular(radius)), activePaint);
    context.canvas.drawRRect(
        RRect.fromRectAndRadius(rightInactiveRect, Radius.circular(radius)), inactivePaint);

    if (sliderTheme.overlayColor != null) {
      final Rect overlayRect = Rect.fromLTWH(
        trackRect.left,
        trackRect.top,
        trackRect.width,
        trackRect.height,
      );
      context.canvas
          .drawRRect(RRect.fromRectAndRadius(overlayRect, Radius.circular(radius)), overlayPaint);
    }
  }
}

class RectangularRangeSliderTrackShape extends RangeSliderTrackShape {
  final double trackHeight;
  final Color? trackColor;
  final Color? activeTrackColor;
  final Color? inactiveTrackColor;
  final Color? overlayColor;

  const RectangularRangeSliderTrackShape({
    this.trackHeight = 4,
    this.trackColor,
    this.activeTrackColor,
    this.inactiveTrackColor,
    this.overlayColor,
  });

  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = this.trackHeight;
    final double trackLeft = offset.dx;
    final double trackTop = offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required Offset startThumbCenter,
    required Offset endThumbCenter,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    if (sliderTheme.trackHeight == null || sliderTheme.trackShape == null) {
      return;
    }

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    final Paint activePaint = Paint()
      ..color = activeTrackColor ?? sliderTheme.activeTrackColor ?? Colors.blue
      ..style = PaintingStyle.fill;

    final Paint inactivePaint = Paint()
      ..color = inactiveTrackColor ?? sliderTheme.inactiveTrackColor ?? Colors.grey
      ..style = PaintingStyle.fill;

    final Paint overlayPaint = Paint()
      ..color = overlayColor ?? sliderTheme.overlayColor ?? Colors.transparent
      ..style = PaintingStyle.fill;

    final Rect activeRect = Rect.fromLTRB(
      trackRect.left,
      trackRect.top,
      startThumbCenter.dx,
      trackRect.bottom,
    );

    final Rect inactiveRect = Rect.fromLTRB(
      startThumbCenter.dx,
      trackRect.top,
      trackRect.right,
      trackRect.bottom,
    );

    final Rect activeRangeRect = Rect.fromLTRB(
      startThumbCenter.dx,
      trackRect.top,
      endThumbCenter.dx,
      trackRect.bottom,
    );
    final Rect leftInactiveRect = Rect.fromLTRB(
      trackRect.left,
      trackRect.top,
      startThumbCenter.dx,
      trackRect.bottom,
    );
    final Rect rightInactiveRect = Rect.fromLTRB(
      endThumbCenter.dx,
      trackRect.top,
      trackRect.right,
      trackRect.bottom,
    );
    context.canvas.drawRect(leftInactiveRect, inactivePaint);
    context.canvas.drawRect(activeRangeRect, activePaint);
    context.canvas.drawRect(rightInactiveRect, inactivePaint);

    if (overlayColor != null) {
      final Rect overlayRect = Rect.fromLTWH(
        trackRect.left,
        trackRect.top,
        trackRect.width,
        trackRect.height,
      );
      context.canvas.drawRect(overlayRect, overlayPaint);
    }
  }
}
