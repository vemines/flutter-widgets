import 'package:flutter/material.dart';

class OverlayEntryScreen extends StatelessWidget {
  const OverlayEntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OverlayEntry Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("OverlayEntry - Basic Usage", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  OverlayEntry overlayEntry = OverlayEntry(
                    builder: (context) => Positioned(
                      top: 100,
                      left: 50,
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        color: Colors.blue,
                        child: const Text('Overlay Content', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  );
                  Overlay.of(context).insert(overlayEntry);
                  Future.delayed(const Duration(seconds: 2), () {
                    overlayEntry.remove();
                  });
                },
                child: const Text('Show Overlay'),
              ),
              const SizedBox(height: 20),
              const Text("OverlayEntry - Custom Position", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  OverlayEntry overlayEntry = OverlayEntry(
                    builder: (context) => Positioned(
                      bottom: 50,
                      right: 20,
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        color: Colors.green,
                        child: const Text('Overlay Content Bottom Right', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  );
                  Overlay.of(context).insert(overlayEntry);
                  Future.delayed(const Duration(seconds: 2), () {
                    overlayEntry.remove();
                  });
                },
                child: const Text('Show Overlay Bottom Right'),
              ),
              const SizedBox(height: 20),
              const Text("OverlayEntry - With a Dismiss Button", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  late OverlayEntry overlayEntry;
                  overlayEntry = OverlayEntry(
                    builder: (context) => Positioned(
                      top: 200,
                      left: 100,
                      child: Material(
                        color: Colors.transparent,
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text('Overlay Content with Dismiss', style: TextStyle(color: Colors.white)),
                              ElevatedButton(
                                onPressed: () {
                                  overlayEntry.remove();
                                },
                                child: const Text('Dismiss'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                  Overlay.of(context).insert(overlayEntry);
                },
                child: const Text('Show Overlay with Dismiss'),
              ),
              const SizedBox(height: 20),
              const Text("OverlayEntry - Using a GestureDetector to Dismiss", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  late OverlayEntry overlayEntry;
                  overlayEntry = OverlayEntry(
                    builder: (context) => GestureDetector(
                      onTap: () {
                        overlayEntry.remove();
                      },
                      child: Material(
                        color: Colors.transparent,
                        child: Positioned(
                          top: 300,
                          left: 150,
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text('Tap to Dismiss', style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                    ),
                  );
                  Overlay.of(context).insert(overlayEntry);
                },
                child: const Text('Show Overlay with Tap Dismiss'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
