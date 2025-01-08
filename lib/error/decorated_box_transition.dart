import 'package:flutter/material.dart';

class DecoratedBoxTransitionScreen extends StatelessWidget {
  const DecoratedBoxTransitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DecoratedBoxTransition Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("DecoratedBoxTransition - Basic"),
              const SizedBox(height: 8),
              DecoratedBoxTransition(
                decoration: const BoxDecoration(color: Colors.blue),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              const Text("DecoratedBoxTransition - Rounded Corners"),
              const SizedBox(height: 8),
              DecoratedBoxTransition(
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              const Text("DecoratedBoxTransition - Border"),
              const SizedBox(height: 8),
              DecoratedBoxTransition(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              const Text("DecoratedBoxTransition - Gradient"),
              const SizedBox(height: 8),
              DecoratedBoxTransition(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.orange],
                  ),
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              const Text("DecoratedBoxTransition - With Container"),
              const SizedBox(height: 8),
              DecoratedBoxTransition(
                decoration: const BoxDecoration(color: Colors.purple),
                child: Container(
                  width: 150,
                  height: 150,
                  alignment: Alignment.center,
                  child: const Text("Wrapped Text", style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 20),
              const Text("DecoratedBoxTransition - Different Duration"),
              const SizedBox(height: 8),
              AnimatedSwitcher(
                duration: const Duration(seconds: 2),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return DecoratedBoxTransition(
                    decoration: Tween<Decoration>(
                      begin: const BoxDecoration(color: Colors.pink),
                      end: const BoxDecoration(color: Colors.cyan),
                    ).animate(animation),
                    child: child,
                  );
                },
                child: Container(
                  key: UniqueKey(),
                  width: 100,
                  height: 100,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
