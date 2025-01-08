import 'package:flutter/material.dart';

class ModalRouteScreen extends StatelessWidget {
  const ModalRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ModalRoute Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ModalRoute - Basic Usage", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => Scaffold(
                        appBar: AppBar(title: const Text('Modal Route')),
                        body: const Center(child: Text('This is a modal route')),
                      ),
                    ),
                  );
                },
                child: const Text('Open Modal Route'),
              ),
              const SizedBox(height: 20),
              const Text("ModalRoute - Custom Settings",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      settings: const RouteSettings(name: 'customModal'),
                      fullscreenDialog: true,
                      maintainState: false,
                      pageBuilder: (context, animation, secondaryAnimation) => Scaffold(
                        appBar: AppBar(title: const Text('Custom Modal Route')),
                        body: const Center(child: Text('This is a custom modal route')),
                      ),
                    ),
                  );
                },
                child: const Text('Open Custom Modal Route'),
              ),
              const SizedBox(height: 20),
              const Text("ModalRoute - With Barrier Color",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      barrierColor: Colors.black.withValues(alpha: 255 * 0.5),
                      barrierDismissible: true,
                      pageBuilder: (context, animation, secondaryAnimation) => Scaffold(
                        appBar: AppBar(title: const Text('Barrier Color Modal')),
                        body: const Center(child: Text('This modal has a barrier color')),
                      ),
                    ),
                  );
                },
                child: const Text('Open Barrier Color Modal'),
              ),
              const SizedBox(height: 20),
              const Text("ModalRoute - With Custom Transition",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => Scaffold(
                        appBar: AppBar(title: const Text('Custom Transition Modal')),
                        body: const Center(child: Text('This modal has a custom transition')),
                      ),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        const begin = Offset(0.0, 1.0);
                        const end = Offset.zero;
                        const curve = Curves.ease;
                        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);
                        return SlideTransition(position: offsetAnimation, child: child);
                      },
                    ),
                  );
                },
                child: const Text('Open Custom Transition Modal'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
