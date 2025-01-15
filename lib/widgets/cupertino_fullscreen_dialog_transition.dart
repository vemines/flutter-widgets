import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoFullscreenDialogTransitionScreen extends StatelessWidget {
  const CupertinoFullscreenDialogTransitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoFullscreenDialogTransition Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoFullscreenDialogTransition - Transition",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const _DialogContent(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        return CupertinoFullscreenDialogTransition(
                          primaryRouteAnimation: animation,
                          secondaryRouteAnimation: secondaryAnimation,
                          linearTransition: true,
                          child: child,
                        );
                      },
                    ),
                  );
                },
                child: const Text("Show Dialog"),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoFullscreenDialogTransition - Custom Transition",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const _DialogContent(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        return CupertinoFullscreenDialogTransition(
                          primaryRouteAnimation: animation,
                          secondaryRouteAnimation: secondaryAnimation,
                          linearTransition: false,
                          child: child,
                        );
                      },
                    ),
                  );
                },
                child: const Text("Show Custom Dialog"),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoFullscreenDialogTransition - With Different Child",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const _DifferentDialogContent(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        return CupertinoFullscreenDialogTransition(
                          primaryRouteAnimation: animation,
                          secondaryRouteAnimation: secondaryAnimation,
                          linearTransition: true,
                          child: child,
                        );
                      },
                    ),
                  );
                },
                child: const Text("Show Different Dialog"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DialogContent extends StatelessWidget {
  const _DialogContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog Content"),
      ),
      body: const Center(
        child: Text("This is the dialog content."),
      ),
    );
  }
}

class _DifferentDialogContent extends StatelessWidget {
  const _DifferentDialogContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Different Dialog Content"),
      ),
      body: const Center(
        child: Icon(Icons.star, size: 100, color: Colors.amber),
      ),
    );
  }
}
