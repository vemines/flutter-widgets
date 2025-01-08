import 'package:flutter/material.dart';

class PageRouteBuilderScreen extends StatelessWidget {
  const PageRouteBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PageRouteBuilder Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("PageRouteBuilder - Default Transition", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => const _SecondPage(),
                    ),
                  );
                },
                child: const Text("Go to Second Page"),
              ),
              const SizedBox(height: 20),
              const Text("PageRouteBuilder - Custom Fade Transition", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 500),
                      pageBuilder: (context, animation, secondaryAnimation) => const _SecondPage(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                    ),
                  );
                },
                child: const Text("Go to Second Page (Fade)"),
              ),
              const SizedBox(height: 20),
              const Text("PageRouteBuilder - Custom Slide Transition", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 500),
                      pageBuilder: (context, animation, secondaryAnimation) => const _SecondPage(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.ease;
                        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);
                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                    ),
                  );
                },
                child: const Text("Go to Second Page (Slide)"),
              ),
              const SizedBox(height: 20),
              const Text("PageRouteBuilder - Custom Scale Transition", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 500),
                      pageBuilder: (context, animation, secondaryAnimation) => const _SecondPage(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        return ScaleTransition(
                          scale: animation,
                          child: child,
                        );
                      },
                    ),
                  );
                },
                child: const Text("Go to Second Page (Scale)"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SecondPage extends StatelessWidget {
  const _SecondPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Page")),
      body: const Center(child: Text("This is the second page")),
    );
  }
}
