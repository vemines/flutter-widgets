import 'package:flutter/material.dart';

class PageRouteScreen extends StatelessWidget {
  const PageRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PageRoute Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("PageRoute Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              const Text("PageRoute - Basic"),
              //PageRoute without wrapping another widget is not applicable.
              //It is an abstract class and cannot be instantiated directly.
              //It is used to define the transition between pages.
              //Example of usage is in the Navigator.push method.
              //Example: Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage()));
              const SizedBox(height: 16),
              const Text("PageRoute - MaterialPageRoute Example"),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NextPage()),
                  );
                },
                child: const Text("Go to Next Page"),
              ),
              const SizedBox(height: 16),
              const Text("PageRoute - CupertinoPageRoute Example"),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => const NextPage(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.ease;
                        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);
                        return SlideTransition(position: offsetAnimation, child: child);
                      },
                    ),
                  );
                },
                child: const Text("Go to Next Page (Slide Transition)"),
              ),
              const SizedBox(height: 16),
              const Text("PageRoute - Custom PageRoute Example"),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => const NextPage(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        return FadeTransition(opacity: animation, child: child);
                      },
                    ),
                  );
                },
                child: const Text("Go to Next Page (Fade Transition)"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Next Page"),
      ),
      body: const Center(
        child: Text("This is the next page!"),
      ),
    );
  }
}
