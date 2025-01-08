import 'package:flutter/material.dart';

class WidgetsBindingScreen extends StatelessWidget {
  const WidgetsBindingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WidgetsBinding Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("WidgetsBinding - Basic Usage", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text("WidgetsBinding is a singleton that provides access to the Flutter engine's binding. It's not a widget, so we can't display it directly. Instead, we'll demonstrate its usage by accessing its instance."),
              const SizedBox(height: 16),
              const Text("WidgetsBinding - Accessing Instance", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Post-frame callback executed!")));
                  });
                },
                child: const Text("Trigger Post-Frame Callback"),
              ),
              const SizedBox(height: 16),
              const Text("WidgetsBinding - Observing Lifecycle", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text("This example demonstrates how to observe the lifecycle of the app using WidgetsBinding. We'll print to the console when the app is resumed or paused. (Check the console output)"),
              const SizedBox(height: 8),
              _LifecycleObserver(),
              const SizedBox(height: 16),
              const Text("WidgetsBinding - Other Methods", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text("WidgetsBinding provides access to various other methods, such as 'ensureInitialized', 'scheduleFrame', etc. These are not directly visual, but are important for the framework's operation."),
            ],
          ),
        ),
      ),
    );
  }
}

class _LifecycleObserver extends StatefulWidget {
  const _LifecycleObserver();

  @override
  _LifecycleObserverState createState() => _LifecycleObserverState();
}

class _LifecycleObserverState extends State<_LifecycleObserver> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      debugPrint("App Resumed");
    } else if (state == AppLifecycleState.paused) {
      debugPrint("App Paused");
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Text("Lifecycle Observer (Check Console)");
  }
}
