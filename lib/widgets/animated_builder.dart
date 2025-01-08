import 'package:flutter/material.dart';

class AnimatedBuilderScreen extends StatefulWidget {
  const AnimatedBuilderScreen({super.key});

  @override
  State<AnimatedBuilderScreen> createState() => _AnimatedBuilderScreenState();
}

class _AnimatedBuilderScreenState extends State<AnimatedBuilderScreen>
    with TickerProviderStateMixin {
  late final AnimationController _animationControllerBasic;
  late final AnimationController _animationControllerColorChange;
  late final AnimationController _animationControllerSizeChange;
  late final AnimationController _animationControllerRotation;
  late final AnimationController _animationControllerCombined;

  @override
  void initState() {
    super.initState();
    _animationControllerBasic = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animationControllerColorChange = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animationControllerSizeChange = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animationControllerRotation = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animationControllerCombined = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationControllerBasic.dispose();
    _animationControllerColorChange.dispose();
    _animationControllerSizeChange.dispose();
    _animationControllerRotation.dispose();
    _animationControllerCombined.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedBuilder Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("AnimatedBuilder - Basic Animation",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildAnimatedBuilderBasic(),
              const SizedBox(height: 20),
              const Text("AnimatedBuilder - Color Change",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildAnimatedBuilderColorChange(),
              const SizedBox(height: 20),
              const Text("AnimatedBuilder - Size Change",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildAnimatedBuilderSizeChange(),
              const SizedBox(height: 20),
              const Text("AnimatedBuilder - Rotation",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildAnimatedBuilderRotation(),
              const SizedBox(height: 20),
              const Text("AnimatedBuilder - Combined Animation",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildAnimatedBuilderCombined(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedBuilderBasic() {
    return AnimatedBuilder(
      animation: _animationControllerBasic,
      builder: (context, child) {
        return Container(
          width: 100,
          height: 100,
          color: Colors.blue.withValues(alpha: 255 * _animationControllerBasic.value),
        );
      },
    );
  }

  Widget _buildAnimatedBuilderColorChange() {
    final colorTween = ColorTween(begin: Colors.red, end: Colors.green);
    return AnimatedBuilder(
      animation: _animationControllerColorChange,
      builder: (context, child) {
        return Container(
          width: 100,
          height: 100,
          color: colorTween.evaluate(_animationControllerColorChange),
        );
      },
    );
  }

  Widget _buildAnimatedBuilderSizeChange() {
    final sizeTween = Tween<double>(begin: 50, end: 150);
    return AnimatedBuilder(
      animation: _animationControllerSizeChange,
      builder: (context, child) {
        return Container(
          width: sizeTween.evaluate(_animationControllerSizeChange),
          height: sizeTween.evaluate(_animationControllerSizeChange),
          color: Colors.orange,
        );
      },
    );
  }

  Widget _buildAnimatedBuilderRotation() {
    return AnimatedBuilder(
      animation: _animationControllerRotation,
      builder: (context, child) {
        return Transform.rotate(
          angle: _animationControllerRotation.value * 2 * 3.14159,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.purple,
          ),
        );
      },
    );
  }

  Widget _buildAnimatedBuilderCombined() {
    final colorTween = ColorTween(begin: Colors.blue, end: Colors.yellow);
    final sizeTween = Tween<double>(begin: 50, end: 100);
    return AnimatedBuilder(
      animation: _animationControllerCombined,
      builder: (context, child) {
        return Transform.rotate(
          angle: _animationControllerCombined.value * 2 * 3.14159,
          child: Container(
            width: sizeTween.evaluate(_animationControllerCombined),
            height: sizeTween.evaluate(_animationControllerCombined),
            color: colorTween.evaluate(_animationControllerCombined),
          ),
        );
      },
    );
  }
}
