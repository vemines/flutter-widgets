import 'package:flutter/material.dart';

class BlendModeScreen extends StatelessWidget {
  const BlendModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BlendMode Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("BlendMode.srcOver", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Tooltip(
                    message: "BlendMode.srcOver - Default blend mode",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.red.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.srcOver,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Tooltip(
                    message: "BlendMode.srcOver - With different colors",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.yellow.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.srcOver,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text("BlendMode.multiply", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Tooltip(
                    message: "BlendMode.multiply - Darkens the base color",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.red.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.multiply,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Tooltip(
                    message: "BlendMode.multiply - With different colors",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.blue.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.multiply,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text("BlendMode.screen", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Tooltip(
                    message: "BlendMode.screen - Lightens the base color",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.red.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.screen,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Tooltip(
                    message: "BlendMode.screen - With different colors",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.blue.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.screen,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text("BlendMode.overlay", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Tooltip(
                    message: "BlendMode.overlay - Combines multiply and screen",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.red.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.overlay,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Tooltip(
                    message: "BlendMode.overlay - With different colors",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.blue.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.overlay,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text("BlendMode.darken", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Tooltip(
                    message: "BlendMode.darken - Keeps the darker color",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.red.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.darken,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Tooltip(
                    message: "BlendMode.darken - With different colors",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.blue.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.darken,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text("BlendMode.lighten", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Tooltip(
                    message: "BlendMode.lighten - Keeps the lighter color",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.red.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.lighten,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Tooltip(
                    message: "BlendMode.lighten - With different colors",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.blue.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.lighten,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text("BlendMode.colorDodge", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Tooltip(
                    message: "BlendMode.colorDodge - Brightens the base color",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.red.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.colorDodge,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Tooltip(
                    message: "BlendMode.colorDodge - With different colors",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.blue.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.colorDodge,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text("BlendMode.colorBurn", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Tooltip(
                    message: "BlendMode.colorBurn - Darkens the base color",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.red.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.colorBurn,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Tooltip(
                    message: "BlendMode.colorBurn - With different colors",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.blue.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.colorBurn,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text("BlendMode.hardLight", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Tooltip(
                    message: "BlendMode.hardLight - Combines multiply and screen",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.red.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.hardLight,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Tooltip(
                    message: "BlendMode.hardLight - With different colors",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.blue.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.hardLight,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text("BlendMode.softLight", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Tooltip(
                    message: "BlendMode.softLight - Similar to overlay but softer",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.red.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.softLight,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Tooltip(
                    message: "BlendMode.softLight - With different colors",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.blue.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.softLight,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text("BlendMode.difference", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Tooltip(
                    message: "BlendMode.difference - Inverts colors",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.red.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.difference,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Tooltip(
                    message: "BlendMode.difference - With different colors",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.blue.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.difference,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text("BlendMode.exclusion", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Tooltip(
                    message: "BlendMode.exclusion - Similar to difference but softer",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.red.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.exclusion,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Tooltip(
                    message: "BlendMode.exclusion - With different colors",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.blue.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.exclusion,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text("BlendMode.hue", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Tooltip(
                    message: "BlendMode.hue - Uses the hue of the source",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.red.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.hue,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Tooltip(
                    message: "BlendMode.hue - With different colors",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.blue.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.hue,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text("BlendMode.saturation", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Tooltip(
                    message: "BlendMode.saturation - Uses the saturation of the source",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.red.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.saturation,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Tooltip(
                    message: "BlendMode.saturation - With different colors",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.blue.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.saturation,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text("BlendMode.color", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Tooltip(
                    message: "BlendMode.color - Uses the hue and saturation of the source",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.red.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.color,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Tooltip(
                    message: "BlendMode.color - With different colors",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.blue.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.color,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text("BlendMode.luminosity", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Tooltip(
                    message: "BlendMode.luminosity - Uses the luminosity of the source",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.red.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.luminosity,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Tooltip(
                    message: "BlendMode.luminosity - With different colors",
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                      foregroundDecoration: BoxDecoration(
                        color: Colors.blue.withValues(alpha: 255 * 0.5),
                        backgroundBlendMode: BlendMode.luminosity,
                      ),
                      child: const Text(
                        "Text",
                        style: TextStyle(color: Colors.black),
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
}
