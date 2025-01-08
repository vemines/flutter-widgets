import 'package:flutter/material.dart';

class ShowGeneralDialogScreen extends StatelessWidget {
  const ShowGeneralDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ShowGeneralDialog Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ShowGeneralDialog - Basic Dialog",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              ElevatedButton(
                onPressed: () {
                  showGeneralDialog(
                    context: context,
                    barrierLabel: "Barrier",
                    barrierDismissible: true,
                    barrierColor: Colors.black.withValues(alpha: 255 * 0.5),
                    transitionDuration: const Duration(milliseconds: 300),
                    transitionBuilder: (context, anim1, anim2, child) {
                      return FadeTransition(
                        opacity: anim1,
                        child: child,
                      );
                    },
                    pageBuilder: (context, anim1, anim2) {
                      return const Center(
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Text("Basic Dialog Content"),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: const Text("Show Basic Dialog"),
              ),
              const SizedBox(height: 20),
              const Text("ShowGeneralDialog - Custom Transition",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              ElevatedButton(
                onPressed: () {
                  showGeneralDialog(
                    context: context,
                    barrierLabel: "Barrier",
                    barrierDismissible: true,
                    barrierColor: Colors.black.withValues(alpha: 255 * 0.5),
                    transitionDuration: const Duration(milliseconds: 500),
                    transitionBuilder: (context, anim1, anim2, child) {
                      return ScaleTransition(
                        scale: Tween<double>(begin: 0.0, end: 1.0).animate(anim1),
                        child: child,
                      );
                    },
                    pageBuilder: (context, anim1, anim2) {
                      return const Center(
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Text("Custom Transition Dialog"),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: const Text("Show Custom Transition Dialog"),
              ),
              const SizedBox(height: 20),
              const Text("ShowGeneralDialog - No Barrier Dismiss",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              ElevatedButton(
                onPressed: () {
                  showGeneralDialog(
                    context: context,
                    barrierLabel: "Barrier",
                    barrierDismissible: false,
                    barrierColor: Colors.black.withValues(alpha: 255 * 0.5),
                    transitionDuration: const Duration(milliseconds: 300),
                    transitionBuilder: (context, anim1, anim2, child) {
                      return FadeTransition(
                        opacity: anim1,
                        child: child,
                      );
                    },
                    pageBuilder: (context, anim1, anim2) {
                      return const Center(
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Text("No Barrier Dismiss Dialog"),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: const Text("Show No Barrier Dismiss Dialog"),
              ),
              const SizedBox(height: 20),
              const Text("ShowGeneralDialog - Custom Barrier Color",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              ElevatedButton(
                onPressed: () {
                  showGeneralDialog(
                    context: context,
                    barrierLabel: "Barrier",
                    barrierDismissible: true,
                    barrierColor: Colors.red.withValues(alpha: 255 * 0.5),
                    transitionDuration: const Duration(milliseconds: 300),
                    transitionBuilder: (context, anim1, anim2, child) {
                      return FadeTransition(
                        opacity: anim1,
                        child: child,
                      );
                    },
                    pageBuilder: (context, anim1, anim2) {
                      return const Center(
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Text("Custom Barrier Color Dialog"),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: const Text("Show Custom Barrier Color Dialog"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
