import 'package:flutter/material.dart';

class ScaleTransitionScreen extends StatelessWidget {
  const ScaleTransitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ScaleTransition Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ScaleTransition Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              _buildScaleTransitionVariation(
                "ScaleTransition - Basic",
                ScaleTransition(
                  scale: const AlwaysStoppedAnimation(0.5),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
                "A basic ScaleTransition with scale 0.5."
              ),
              const SizedBox(height: 20),
              _buildScaleTransitionVariation(
                "ScaleTransition - Animated",
                _AnimatedScaleTransition(),
                "An animated ScaleTransition using an AnimationController."
              ),
              const SizedBox(height: 20),
              _buildScaleTransitionVariation(
                "ScaleTransition - Different Alignment",
                ScaleTransition(
                  scale: const AlwaysStoppedAnimation(0.7),
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                ),
                "ScaleTransition with alignment set to bottomRight."
              ),
              const SizedBox(height: 20),
              _buildScaleTransitionVariation(
                "ScaleTransition - Larger Scale",
                ScaleTransition(
                  scale: const AlwaysStoppedAnimation(1.2),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.orange,
                  ),
                ),
                "ScaleTransition with scale 1.2."
              ),
              const SizedBox(height: 20),
              _buildScaleTransitionVariation(
                "ScaleTransition - With Text",
                ScaleTransition(
                  scale: const AlwaysStoppedAnimation(0.8),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.purple,
                    child: const Text("Scaled Text", style: TextStyle(color: Colors.white)),
                  ),
                ),
                "ScaleTransition wrapping a Container with text."
              ),
              const SizedBox(height: 20),
              // _buildScaleTransitionVariation(
              //   "ScaleTransition - No Child (Error)",
              //   ScaleTransition(
              //     scale: const AlwaysStoppedAnimation(0.5),
              //   ),
              //   "ScaleTransition without a child will cause an error, so it's commented out."
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildScaleTransitionVariation(String title, Widget widget, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tooltip(message: description, child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold))),
        const SizedBox(height: 8),
        Center(child: widget),
        const SizedBox(height: 16),
      ],
    );
  }
}

class _AnimatedScaleTransition extends StatefulWidget {
  @override
  _AnimatedScaleTransitionState createState() => _AnimatedScaleTransitionState();
}

class _AnimatedScaleTransitionState extends State<_AnimatedScaleTransition> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
    );
  }
}
