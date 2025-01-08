import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPageScaffoldScreen extends StatelessWidget {
  const CupertinoPageScaffoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoPageScaffold Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoPageScaffold - Default"),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: CupertinoPageScaffold(
                  navigationBar: const CupertinoNavigationBar(
                    middle: Text('Default'),
                  ),
                  child: Center(
                    child: Container(
                      color: Colors.grey[200],
                      padding: const EdgeInsets.all(20),
                      child: const Text('Content Area'),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoPageScaffold - With Background Color"),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: CupertinoPageScaffold(
                  backgroundColor: Colors.blue[100],
                  navigationBar: const CupertinoNavigationBar(
                    middle: Text('Blue Background'),
                  ),
                  child: Center(
                    child: Container(
                      color: Colors.grey[200],
                      padding: const EdgeInsets.all(20),
                      child: const Text('Content Area'),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoPageScaffold - With Different Navigation Bar Color"),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: CupertinoPageScaffold(
                  navigationBar: const CupertinoNavigationBar(
                    backgroundColor: Colors.green,
                    middle: Text('Green Nav Bar', style: TextStyle(color: Colors.white)),
                  ),
                  child: Center(
                    child: Container(
                      color: Colors.grey[200],
                      padding: const EdgeInsets.all(20),
                      child: const Text('Content Area'),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoPageScaffold - With Custom Padding"),
              const SizedBox(height: 8),
              SizedBox(
                height: 150,
                child: CupertinoPageScaffold(
                  navigationBar: const CupertinoNavigationBar(
                    middle: Text('Custom Padding'),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Center(
                      child: Container(
                        color: Colors.grey[200],
                        padding: const EdgeInsets.all(20),
                        child: const Text('Content Area'),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoPageScaffold - With a Simple Text Widget"),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: CupertinoPageScaffold(
                  navigationBar: const CupertinoNavigationBar(
                    middle: Text('Text Widget'),
                  ),
                  child: const Center(
                    child: Text('This is a simple text widget inside CupertinoPageScaffold'),
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
