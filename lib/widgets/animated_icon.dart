import 'package:flutter/material.dart';

class AnimatedIconScreen extends StatelessWidget {
  const AnimatedIconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedIcon Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("AnimatedIcon Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  Column(
                    children: [
                      const Text("AnimatedIcon - Default"),
                      const AnimatedIcon(
                        icon: AnimatedIcons.menu_close,
                        progress: AlwaysStoppedAnimation(0),
                        size: 50,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("AnimatedIcon - Color Red"),
                      AnimatedIcon(
                        icon: AnimatedIcons.menu_close,
                        progress: const AlwaysStoppedAnimation(0),
                        color: Colors.red,
                        size: 50,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("AnimatedIcon - Size 70"),
                      const AnimatedIcon(
                        icon: AnimatedIcons.menu_close,
                        progress: AlwaysStoppedAnimation(0),
                        size: 70,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("AnimatedIcon - Progress 0.5"),
                      const AnimatedIcon(
                        icon: AnimatedIcons.menu_close,
                        progress: AlwaysStoppedAnimation(0.5),
                        size: 50,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("AnimatedIcon - Progress 1"),
                      const AnimatedIcon(
                        icon: AnimatedIcons.menu_close,
                        progress: AlwaysStoppedAnimation(1),
                        size: 50,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("AnimatedIcon - Menu Arrow"),
                      const AnimatedIcon(
                        icon: AnimatedIcons.menu_arrow,
                        progress: AlwaysStoppedAnimation(0),
                        size: 50,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("AnimatedIcon - Play Pause"),
                      const AnimatedIcon(
                        icon: AnimatedIcons.play_pause,
                        progress: AlwaysStoppedAnimation(0),
                        size: 50,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("AnimatedIcon - Add Event"),
                      const AnimatedIcon(
                        icon: AnimatedIcons.add_event,
                        progress: AlwaysStoppedAnimation(0),
                        size: 50,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("AnimatedIcon - Search Ellipsis"),
                      const AnimatedIcon(
                        icon: AnimatedIcons.search_ellipsis,
                        progress: AlwaysStoppedAnimation(0),
                        size: 50,
                      ),
                    ],
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
