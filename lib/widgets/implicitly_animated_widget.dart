import 'package:flutter/material.dart';

class ImplicitlyAnimatedWidgetScreen extends StatelessWidget {
  const ImplicitlyAnimatedWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ImplicitlyAnimatedWidget Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ImplicitlyAnimatedWidget - Default"),
              const SizedBox(height: 8),
              const ImplicitlyAnimatedWidget(),
              const SizedBox(height: 20),
              const Text("ImplicitlyAnimatedWidget - Animated Container"),
              const SizedBox(height: 8),
              ImplicitlyAnimatedWidget(
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              const Text("ImplicitlyAnimatedWidget - Animated Padding"),
              const SizedBox(height: 8),
              ImplicitlyAnimatedWidget(
                child: AnimatedPadding(
                  duration: const Duration(seconds: 1),
                  padding: const EdgeInsets.all(20),
                  child: const Text("Padding"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ImplicitlyAnimatedWidget - Animated Align"),
              const SizedBox(height: 8),
              ImplicitlyAnimatedWidget(
                child: AnimatedAlign(
                  duration: const Duration(seconds: 1),
                  alignment: Alignment.bottomRight,
                  child: const Text("Aligned"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ImplicitlyAnimatedWidget - Animated Opacity"),
              const SizedBox(height: 8),
              ImplicitlyAnimatedWidget(
                child: AnimatedOpacity(
                  duration: const Duration(seconds: 1),
                  opacity: 0.5,
                  child: const Text("Opacity"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ImplicitlyAnimatedWidget - Animated Positioned"),
              const SizedBox(height: 8),
              SizedBox(
                height: 150,
                child: Stack(
                  children: [
                    ImplicitlyAnimatedWidget(
                      child: AnimatedPositioned(
                        duration: const Duration(seconds: 1),
                        top: 20,
                        left: 20,
                        child: Container(
                          width: 50,
                          height: 50,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("ImplicitlyAnimatedWidget - Animated DefaultTextStyle"),
              const SizedBox(height: 8),
              ImplicitlyAnimatedWidget(
                child: AnimatedDefaultTextStyle(
                  duration: const Duration(seconds: 1),
                  style: const TextStyle(fontSize: 20, color: Colors.red),
                  child: const Text("Styled Text"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImplicitlyAnimatedWidget extends StatefulWidget {
  final Widget? child;
  const ImplicitlyAnimatedWidget({super.key, this.child});

  @override
  State<ImplicitlyAnimatedWidget> createState() => _ImplicitlyAnimatedWidgetState();
}

class _ImplicitlyAnimatedWidgetState extends State<ImplicitlyAnimatedWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        padding: _isExpanded ? const EdgeInsets.all(20) : const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: widget.child ?? const Text("Tap to Animate"),
      ),
    );
  }
}
