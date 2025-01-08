import 'package:flutter/material.dart';

class AnimatedModalBarrierScreen extends StatelessWidget {
  const AnimatedModalBarrierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedModalBarrier Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("AnimatedModalBarrier Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildBarrierVariation(
                    'Default Barrier',
                    AnimatedModalBarrier(
                      color: AlwaysStoppedAnimation<Color>(
                          Colors.black.withAlpha((255 * 0.5).floor())),
                      dismissible: true,
                      onDismiss: () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(content: Text('Barrier Dismissed')));
                      },
                    ),
                    context,
                  ),
                  _buildBarrierVariation(
                    'Red Barrier',
                    AnimatedModalBarrier(
                      color:
                          AlwaysStoppedAnimation<Color>(Colors.red.withAlpha((255 * 0.7).floor())),
                      dismissible: false,
                    ),
                    context,
                  ),
                  _buildBarrierVariation(
                    'Green Barrier',
                    AnimatedModalBarrier(
                      color: AlwaysStoppedAnimation<Color>(
                          Colors.green.withAlpha((255 * 0.3).floor())),
                      dismissible: true,
                      onDismiss: () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(content: Text('Barrier Dismissed')));
                      },
                    ),
                    context,
                  ),
                  _buildBarrierVariation(
                    'Blue Barrier',
                    AnimatedModalBarrier(
                      color:
                          AlwaysStoppedAnimation<Color>(Colors.blue.withAlpha((255 * 0.9).floor())),
                      dismissible: false,
                    ),
                    context,
                  ),
                  _buildBarrierVariation(
                    'Transparent Barrier',
                    AnimatedModalBarrier(
                      color: AlwaysStoppedAnimation<Color>(Colors.transparent),
                      dismissible: true,
                      onDismiss: () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(content: Text('Barrier Dismissed')));
                      },
                    ),
                    context,
                  ),
                  _buildBarrierVariation(
                    'Barrier with Opacity 0.1',
                    AnimatedModalBarrier(
                      color: AlwaysStoppedAnimation<Color>(
                          Colors.black.withAlpha((255 * 0.1).floor())),
                      dismissible: true,
                      onDismiss: () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(content: Text('Barrier Dismissed')));
                      },
                    ),
                    context,
                  ),
                  _buildBarrierVariation(
                    'Barrier with Opacity 0.9',
                    AnimatedModalBarrier(
                      color: AlwaysStoppedAnimation<Color>(
                          Colors.black.withAlpha((255 * 0.9).floor())),
                      dismissible: true,
                      onDismiss: () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(content: Text('Barrier Dismissed')));
                      },
                    ),
                    context,
                  ),
                  _buildBarrierVariation(
                    'Barrier wrapping a Container',
                    Stack(
                      children: [
                        Container(
                          color: Colors.grey[200],
                          width: 100,
                          height: 100,
                        ),
                        AnimatedModalBarrier(
                          color: AlwaysStoppedAnimation<Color>(
                              Colors.black.withAlpha((255 * 0.5).floor())),
                          dismissible: true,
                          onDismiss: () {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(content: Text('Barrier Dismissed')));
                          },
                        ),
                      ],
                    ),
                    context,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBarrierVariation(String name, Widget barrier, BuildContext context) {
    return Tooltip(
      message: name,
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Stack(
                children: [
                  Container(
                    color: Colors.white,
                  ),
                  barrier,
                ],
              );
            },
          );
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(name),
        ),
      ),
    );
  }
}
