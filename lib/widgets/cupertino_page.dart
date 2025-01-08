import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPageScreen extends StatelessWidget {
  const CupertinoPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoPage Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoPage - Default"),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: CupertinoPageScaffold(
                  navigationBar: const CupertinoNavigationBar(
                    middle: Text('Default Page'),
                  ),
                  child: Center(
                    child: Text('Default Content'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoPage - Custom Background Color"),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: CupertinoPageScaffold(
                  backgroundColor: Colors.lightBlue[100],
                  navigationBar: const CupertinoNavigationBar(
                    middle: Text('Custom Background'),
                  ),
                  child: Center(
                    child: Text('Custom Background Content'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoPage - Custom Navigation Bar Color"),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: CupertinoPageScaffold(
                  navigationBar: const CupertinoNavigationBar(
                    backgroundColor: Colors.green,
                    middle: Text(
                      'Custom Navigation Bar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  child: Center(
                    child: Text('Custom Navigation Bar Content'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoPage - With Custom Padding"),
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
                      child: Text('Custom Padding Content'),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoPage - With Custom Content"),
              const SizedBox(height: 8),
              SizedBox(
                height: 150,
                child: CupertinoPageScaffold(
                  navigationBar: const CupertinoNavigationBar(
                    middle: Text('Custom Content'),
                  ),
                  child: Center(
                    child: Container(
                      width: 150,
                      height: 100,
                      color: Colors.orange,
                      child: const Center(child: Text('Custom Container')),
                    ),
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
