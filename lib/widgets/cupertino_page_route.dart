import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPageRouteScreen extends StatelessWidget {
  const CupertinoPageRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoPageRoute Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoPageRoute - Navigation",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => const _SecondScreen(),
                    ),
                  );
                },
                child: const Text('Go to Second Screen'),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoPageRoute - Settings",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) =>
                          const _SecondScreen(message: "Hello from first screen!"),
                      settings: const RouteSettings(name: 'second_screen_with_settings'),
                    ),
                  );
                },
                child: const Text('Go to Second Screen with Settings'),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoPageRoute - Fullscreen Dialog",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      fullscreenDialog: true,
                      builder: (context) => const _SecondScreen(message: "Fullscreen Dialog"),
                    ),
                  );
                },
                child: const Text('Open Fullscreen Dialog'),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoPageRoute - Maintain State",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      maintainState: true,
                      builder: (context) => const _SecondScreen(message: "Maintain State"),
                    ),
                  );
                },
                child: const Text('Go to Second Screen with Maintain State'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SecondScreen extends StatefulWidget {
  final String? message;
  const _SecondScreen({this.message});

  @override
  State<_SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<_SecondScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (widget.message != null) Text(widget.message!, style: const TextStyle(fontSize: 20)),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text('Increment Counter'),
            ),
          ],
        ),
      ),
    );
  }
}
