import 'package:flutter/material.dart';

class AnimatedPhysicalModelScreen extends StatelessWidget {
  const AnimatedPhysicalModelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedPhysicalModel Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("AnimatedPhysicalModel Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildAnimatedPhysicalModelVariation(
                    name: "Default",
                    description: "Default AnimatedPhysicalModel with no modifications.",
                    child: AnimatedPhysicalModel(
                      duration: const Duration(milliseconds: 500),
                      shape: BoxShape.rectangle,
                      elevation: 0,
                      color: Colors.white,
                      shadowColor: Colors.black,
                      borderRadius: BorderRadius.circular(0),
                      child: const SizedBox(width: 100, height: 100),
                    ),
                  ),
                  _buildAnimatedPhysicalModelVariation(
                    name: "Rounded Corners",
                    description: "AnimatedPhysicalModel with rounded corners.",
                    child: AnimatedPhysicalModel(
                      duration: const Duration(milliseconds: 500),
                      shape: BoxShape.rectangle,
                      elevation: 5,
                      color: Colors.blue,
                      shadowColor: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                      child: const SizedBox(width: 100, height: 100),
                    ),
                  ),
                  _buildAnimatedPhysicalModelVariation(
                    name: "Circular Shape",
                    description: "AnimatedPhysicalModel with a circular shape.",
                    child: AnimatedPhysicalModel(
                      duration: const Duration(milliseconds: 500),
                      shape: BoxShape.circle,
                      elevation: 10,
                      color: Colors.green,
                      shadowColor: Colors.black,
                      borderRadius: BorderRadius.circular(0),
                      child: const SizedBox(width: 100, height: 100),
                    ),
                  ),
                  _buildAnimatedPhysicalModelVariation(
                    name: "Elevated",
                    description: "AnimatedPhysicalModel with elevation.",
                    child: AnimatedPhysicalModel(
                      duration: const Duration(milliseconds: 500),
                      shape: BoxShape.rectangle,
                      elevation: 15,
                      color: Colors.red,
                      shadowColor: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                      child: const SizedBox(width: 100, height: 100),
                    ),
                  ),
                  _buildAnimatedPhysicalModelVariation(
                    name: "Custom Shadow Color",
                    description: "AnimatedPhysicalModel with a custom shadow color.",
                    child: AnimatedPhysicalModel(
                      duration: const Duration(milliseconds: 500),
                      shape: BoxShape.rectangle,
                      elevation: 5,
                      color: Colors.yellow,
                      shadowColor: Colors.purple,
                      borderRadius: BorderRadius.circular(10),
                      child: const SizedBox(width: 100, height: 100),
                    ),
                  ),
                  _buildAnimatedPhysicalModelVariation(
                    name: "Different Size",
                    description: "AnimatedPhysicalModel with different size.",
                    child: AnimatedPhysicalModel(
                      duration: const Duration(milliseconds: 500),
                      shape: BoxShape.rectangle,
                      elevation: 5,
                      color: Colors.orange,
                      shadowColor: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      child: const SizedBox(width: 150, height: 75),
                    ),
                  ),
                  _buildAnimatedPhysicalModelVariation(
                    name: "Animated Color Change",
                    description: "AnimatedPhysicalModel with animated color change on tap.",
                    child: _AnimatedColorChangePhysicalModel(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedPhysicalModelVariation({required String name, required String description, required Widget child}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(message: description, child: Text(name, style: const TextStyle(fontWeight: FontWeight.bold))),
        const SizedBox(height: 8),
        child,
      ],
    );
  }
}

class _AnimatedColorChangePhysicalModel extends StatefulWidget {
  @override
  _AnimatedColorChangePhysicalModelState createState() => _AnimatedColorChangePhysicalModelState();
}

class _AnimatedColorChangePhysicalModelState extends State<_AnimatedColorChangePhysicalModel> {
  bool _isBlue = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isBlue = !_isBlue;
        });
      },
      child: AnimatedPhysicalModel(
        duration: const Duration(milliseconds: 500),
        shape: BoxShape.rectangle,
        elevation: 5,
        color: _isBlue ? Colors.blue : Colors.red,
        shadowColor: Colors.black,
        borderRadius: BorderRadius.circular(10),
        child: const SizedBox(width: 100, height: 100),
      ),
    );
  }
}
