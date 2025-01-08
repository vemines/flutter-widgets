import 'package:flutter/material.dart';

class DecoratedBoxTransitionScreen extends StatefulWidget {
  const DecoratedBoxTransitionScreen({super.key});

  @override
  DecoratedBoxTransitionScreenState createState() => DecoratedBoxTransitionScreenState();
}

class DecoratedBoxTransitionScreenState extends State<DecoratedBoxTransitionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Decoration> _decorationAnimation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _decorationAnimation = DecorationTween(
      begin: const BoxDecoration(color: Colors.blue),
      end: const BoxDecoration(color: Colors.red),
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
                decoration: _decorationAnimation,
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
                decoration: Tween<Decoration>(
                  begin: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  end: const BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ).animate(_controller), // Using the controller but we need a different controller
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
                decoration: Tween<Decoration>(
                  begin: BoxDecoration(
                    color: Colors.yellow,
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  end: BoxDecoration(
                    color: Colors.teal,
                    border: Border.all(color: Colors.red, width: 4),
                  ),
                ).animate(_controller),
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
                decoration: Tween<Decoration>(
                    begin: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.red, Colors.orange],
                      ),
                    ),
                    end: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blue, Colors.green],
                      ),
                    )).animate(_controller),
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
                decoration: Tween<Decoration>(
                  begin: const BoxDecoration(color: Colors.purple),
                  end: const BoxDecoration(color: Colors.grey),
                ).animate(_controller),
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
