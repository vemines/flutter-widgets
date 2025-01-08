import 'package:flutter/material.dart';

class PreferredSizeScreen extends StatelessWidget {
  const PreferredSizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PreferredSize Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("PreferredSize - Default"),
              const SizedBox(height: 8),
              PreferredSize(
                preferredSize: const Size.fromHeight(50),
                child: Container(
                  color: Colors.grey[300],
                  alignment: Alignment.center,
                  child: const Text("Default PreferredSize"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("PreferredSize - Custom Height and Color"),
              const SizedBox(height: 8),
              PreferredSize(
                preferredSize: const Size.fromHeight(100),
                child: Container(
                  color: Colors.blue[200],
                  alignment: Alignment.center,
                  child: const Text("Height 100, Blue"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("PreferredSize - Custom Width and Height"),
              const SizedBox(height: 8),
              PreferredSize(
                preferredSize: const Size(200, 75),
                child: Container(
                  color: Colors.green[200],
                  alignment: Alignment.center,
                  child: const Text("Width 200, Height 75"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("PreferredSize - With Padding"),
              const SizedBox(height: 8),
              PreferredSize(
                preferredSize: const Size.fromHeight(60),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    color: Colors.orange[200],
                    alignment: Alignment.center,
                    child: const Text("With Padding"),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("PreferredSize - With Border Radius"),
              const SizedBox(height: 8),
              PreferredSize(
                preferredSize: const Size.fromHeight(60),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.purple[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: const Text("Border Radius"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("PreferredSize - Wrapping a Text Widget"),
              const SizedBox(height: 8),
              PreferredSize(
                preferredSize: const Size.fromHeight(40),
                child: const Text("Wrapped Text"),
              ),
              const SizedBox(height: 20),
              // PreferredSize without a child is not very useful and will not render anything visible.
              // const Text("PreferredSize - No Child (Commented out as it's not visible)"),
              // const SizedBox(height: 8),
              // PreferredSize(
              //   preferredSize: const Size.fromHeight(50),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
