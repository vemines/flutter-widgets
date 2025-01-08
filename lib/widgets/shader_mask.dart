import 'package:flutter/material.dart';

class ShaderMaskScreen extends StatelessWidget {
  const ShaderMaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShaderMask Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ShaderMask Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildShaderMaskVariation(
                    'Basic ShaderMask',
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return const LinearGradient(
                          colors: [Colors.red, Colors.blue],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ).createShader(bounds);
                      },
                      blendMode: BlendMode.srcATop,
                      child: const Text('Hello ShaderMask', style: TextStyle(fontSize: 24, color: Colors.white)),
                    ),
                    'Basic ShaderMask with a linear gradient.'
                  ),
                  _buildShaderMaskVariation(
                    'ShaderMask with Image',
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return const LinearGradient(
                          colors: [Colors.yellow, Colors.green],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ).createShader(bounds);
                      },
                      blendMode: BlendMode.srcATop,
                      child: Image.network(
                        'https://via.placeholder.com/150',
                        width: 150,
                        height: 150,
                      ),
                    ),
                    'ShaderMask with an image and a linear gradient.'
                  ),
                  _buildShaderMaskVariation(
                    'ShaderMask with Radial Gradient',
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return const RadialGradient(
                          colors: [Colors.purple, Colors.orange],
                          center: Alignment.center,
                          radius: 0.5,
                        ).createShader(bounds);
                      },
                      blendMode: BlendMode.srcATop,
                      child: const Icon(Icons.star, size: 100, color: Colors.white),
                    ),
                    'ShaderMask with a radial gradient and an icon.'
                  ),
                  _buildShaderMaskVariation(
                    'ShaderMask with different BlendMode',
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return const LinearGradient(
                          colors: [Colors.pink, Colors.cyan],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ).createShader(bounds);
                      },
                      blendMode: BlendMode.dstATop,
                      child: const Text('BlendMode.dstATop', style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                    'ShaderMask with BlendMode.dstATop.'
                  ),
                  _buildShaderMaskVariation(
                    'ShaderMask with different BlendMode 2',
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return const LinearGradient(
                          colors: [Colors.lightGreen, Colors.deepPurple],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ).createShader(bounds);
                      },
                      blendMode: BlendMode.multiply,
                      child: const Text('BlendMode.multiply', style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                    'ShaderMask with BlendMode.multiply.'
                  ),
                  _buildShaderMaskVariation(
                    'ShaderMask with Container',
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return const LinearGradient(
                          colors: [Colors.teal, Colors.amber],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ).createShader(bounds);
                      },
                      blendMode: BlendMode.srcATop,
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.white,
                      ),
                    ),
                    'ShaderMask with a Container.'
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildShaderMaskVariation(String title, Widget shaderMask, String description) {
    return Tooltip(
      message: description,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          shaderMask,
        ],
      ),
    );
  }
}
