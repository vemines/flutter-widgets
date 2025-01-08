import 'package:flutter/material.dart';

class DefaultTextStyleTransitionScreen extends StatefulWidget {
  const DefaultTextStyleTransitionScreen({super.key});

  @override
  DefaultTextStyleTransitionScreenState createState() => DefaultTextStyleTransitionScreenState();
}

class DefaultTextStyleTransitionScreenState extends State<DefaultTextStyleTransitionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<TextStyle> _textStyleAnimation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _textStyleAnimation = TextStyleTween(
      begin: const TextStyle(fontSize: 16, color: Colors.black),
      end: const TextStyle(fontSize: 32, color: Colors.red),
    ).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DefaultTextStyleTransition Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("DefaultTextStyleTransition Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildVariation(
                    "DefaultTextStyleTransition - Basic",
                    DefaultTextStyleTransition(
                      style: _textStyleAnimation,
                      child: const Text("Hello, World!"),
                    ),
                  ),
                  _buildVariation(
                    "DefaultTextStyleTransition - Animated Size",
                    DefaultTextStyleTransition(
                      style: TextStyleTween(
                        begin: const TextStyle(fontSize: 12, color: Colors.blue),
                        end: const TextStyle(fontSize: 24, color: Colors.blue),
                      ).animate(_controller),
                      child: const Text("Animated Text"),
                    ),
                  ),
                  _buildVariation(
                    "DefaultTextStyleTransition - Animated Color",
                    DefaultTextStyleTransition(
                      style: TextStyleTween(
                        begin: const TextStyle(fontSize: 16, color: Colors.red),
                        end: const TextStyle(fontSize: 16, color: Colors.green),
                      ).animate(_controller),
                      child: const Text("Color Change"),
                    ),
                  ),
                  _buildVariation(
                    "DefaultTextStyleTransition - Animated Style",
                    DefaultTextStyleTransition(
                      style: TextStyleTween(
                        begin: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.normal),
                        end: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                      ).animate(_controller),
                      child: const Text("Styled Text"),
                    ),
                  ),
                  _buildVariation(
                    "DefaultTextStyleTransition - With Container",
                    DefaultTextStyleTransition(
                      style: TextStyleTween(
                        begin: const TextStyle(fontSize: 10, color: Colors.green),
                        end: const TextStyle(fontSize: 18, color: Colors.red),
                      ).animate(_controller),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.grey[200],
                        child: const Text("Text in Container"),
                      ),
                    ),
                  ),
                  _buildVariation(
                    "DefaultTextStyleTransition - With Padding",
                    DefaultTextStyleTransition(
                      style: TextStyleTween(
                        begin: const TextStyle(fontSize: 12, color: Colors.purple),
                        end: const TextStyle(fontSize: 18, color: Colors.orange),
                      ).animate(_controller),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text("Text with Padding"),
                      ),
                    ),
                  ),
                  _buildVariation(
                    "DefaultTextStyleTransition - With Align",
                    DefaultTextStyleTransition(
                      style: TextStyleTween(
                        begin: const TextStyle(fontSize: 14, color: Colors.orange),
                        end: const TextStyle(fontSize: 20, color: Colors.purple),
                      ).animate(_controller),
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text("Aligned Text"),
                      ),
                    ),
                  ),
                  _buildVariation(
                    "DefaultTextStyleTransition - With Opacity",
                    DefaultTextStyleTransition(
                      style: TextStyleTween(
                        begin: const TextStyle(fontSize: 12, color: Colors.brown),
                        end: const TextStyle(fontSize: 18, color: Colors.black),
                      ).animate(_controller),
                      child: const Opacity(
                        opacity: 0.7,
                        child: Text("Opacity Text"),
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

  Widget _buildVariation(String name, Widget widget) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tooltip(
            message: name, child: Text(name, style: const TextStyle(fontWeight: FontWeight.bold))),
        const SizedBox(height: 8),
        widget,
      ],
    );
  }
}
