import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShortcutsScreen extends StatelessWidget {
  const ShortcutsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shortcuts Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Shortcuts - Basic Usage", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              // Shortcuts without a child widget
              // This will cause an error because Shortcuts requires a child
              // const Shortcuts(
              //   shortcuts: <LogicalKeySet, Intent>{
              //     LogicalKeySet(LogicalKeyboardKey.control, LogicalKeyboardKey.keyA): const ActivateIntent(),
              //   },
              // ),
              const Text("Shortcuts - With a child widget",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Shortcuts(
                shortcuts: <LogicalKeySet, Intent>{
                  LogicalKeySet(LogicalKeyboardKey.control, LogicalKeyboardKey.keyA):
                      ActivateIntent(),
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.blue.shade100,
                  child: const Text("Press Ctrl+A"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Shortcuts - With different shortcuts",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Shortcuts(
                shortcuts: <LogicalKeySet, Intent>{
                  LogicalKeySet(LogicalKeyboardKey.control, LogicalKeyboardKey.keyB):
                      ActivateIntent(),
                  LogicalKeySet(LogicalKeyboardKey.control, LogicalKeyboardKey.shift,
                      LogicalKeyboardKey.keyC): ActivateIntent(),
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.green.shade100,
                  child: const Text("Press Ctrl+B or Ctrl+Shift+C"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Shortcuts - With custom actions",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Shortcuts(
                shortcuts: <LogicalKeySet, Intent>{
                  LogicalKeySet(LogicalKeyboardKey.control, LogicalKeyboardKey.keyD):
                      MyCustomIntent(),
                },
                child: Actions(
                  actions: <Type, Action<Intent>>{
                    MyCustomIntent: CallbackAction<MyCustomIntent>(
                      onInvoke: (MyCustomIntent intent) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Custom Action Triggered!")));
                        return null;
                      },
                    ),
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.orange.shade100,
                    child: const Text("Press Ctrl+D"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCustomIntent extends Intent {}
