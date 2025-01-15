import 'package:flutter/material.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  void showSnakeBar(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigator Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Navigator - Push"),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const _SecondScreen()),
                  );
                },
                child: const Text("Push to Second Screen"),
              ),
              const SizedBox(height: 20),
              const Text("Navigator - Push Replacement"),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const ThirdScreen()),
                  );
                },
                child: const Text("Push Replacement to Third Screen"),
              ),
              const SizedBox(height: 20),
              const Text("Navigator - Pop"),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PopScreen()),
                  );
                },
                child: const Text("Go to Pop Screen"),
              ),
              const SizedBox(height: 20),
              const Text("Navigator - Push Named"),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/named');
                },
                child: const Text("Push Named to Named Screen"),
              ),
              const SizedBox(height: 20),
              const Text("Navigator - Pop Until"),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PopUntilScreen()),
                  );
                },
                child: const Text("Go to Pop Until Screen"),
              ),
              const SizedBox(height: 20),
              const Text("Navigator - Can Pop"),
              ElevatedButton(
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(content: Text("Can Pop")));
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(content: Text("Cannot Pop")));
                  }
                },
                child: const Text("Check Can Pop"),
              ),
              const SizedBox(height: 20),
              const Text("Navigator - Maybe Pop"),
              ElevatedButton(
                onPressed: () async {
                  final result = await Navigator.maybePop(context);
                  showSnakeBar("Maybe Pop Result: $result");
                },
                child: const Text("Check Maybe Pop"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SecondScreen extends StatelessWidget {
  const _SecondScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen")),
      body: Center(
          child: ElevatedButton(
              onPressed: () => Navigator.pop(context), child: const Text("Go Back"))),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Third Screen")),
      body: Center(
          child: ElevatedButton(
              onPressed: () => Navigator.pop(context), child: const Text("Go Back"))),
    );
  }
}

class PopScreen extends StatelessWidget {
  const PopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pop Screen")),
      body: Center(
          child: ElevatedButton(
              onPressed: () => Navigator.pop(context), child: const Text("Go Back"))),
    );
  }
}

class NamedScreen extends StatelessWidget {
  const NamedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Named Screen")),
      body: Center(
          child: ElevatedButton(
              onPressed: () => Navigator.pop(context), child: const Text("Go Back"))),
    );
  }
}

class PopUntilScreen extends StatelessWidget {
  const PopUntilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pop Until Screen")),
      body: Center(
          child: ElevatedButton(
              onPressed: () => Navigator.popUntil(context, ModalRoute.withName('/')),
              child: const Text("Pop Until Root"))),
    );
  }
}
