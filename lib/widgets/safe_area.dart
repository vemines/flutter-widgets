import 'package:flutter/material.dart';

class SafeAreaScreen extends StatelessWidget {
  const SafeAreaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SafeArea Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("SafeArea - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: SafeArea(
                  child: Container(
                    color: Colors.blue.withValues(alpha: 255 * 0.2),
                    padding: const EdgeInsets.all(16),
                    child: const Text("This text is inside a SafeArea"),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("SafeArea - With minimum EdgeInsets",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: SafeArea(
                  minimum: const EdgeInsets.all(30),
                  child: Container(
                    color: Colors.green.withValues(alpha: 255 * 0.2),
                    padding: const EdgeInsets.all(16),
                    child: const Text("This text is inside a SafeArea with minimum padding"),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("SafeArea - With left and right minimum EdgeInsets",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: SafeArea(
                  minimum: const EdgeInsets.only(left: 50, right: 50),
                  child: Container(
                    color: Colors.orange.withValues(alpha: 255 * 0.2),
                    padding: const EdgeInsets.all(16),
                    child: const Text(
                        "This text is inside a SafeArea with left and right minimum padding"),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("SafeArea - With top and bottom minimum EdgeInsets",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: SafeArea(
                  minimum: const EdgeInsets.only(top: 40, bottom: 40),
                  child: Container(
                    color: Colors.purple.withValues(alpha: 255 * 0.2),
                    padding: const EdgeInsets.all(16),
                    child: const Text(
                        "This text is inside a SafeArea with top and bottom minimum padding"),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("SafeArea - Wrapping a Container",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: SafeArea(
                  child: Container(
                    color: Colors.red.withValues(alpha: 255 * 0.2),
                    height: 100,
                    width: 200,
                    child: const Center(child: Text("Container inside SafeArea")),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // SafeArea without wrapping a widget. This will not cause an error but will not be visible as it doesn't have a child to apply the safe area to.
              // const Text("SafeArea - Without child (not visible)", style: TextStyle(fontWeight: FontWeight.bold)),
              // const SizedBox(height: 8),
              // Container(
              //   decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              //   child: const SafeArea(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
