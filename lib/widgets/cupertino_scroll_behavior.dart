import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoScrollBehaviorScreen extends StatelessWidget {
  const CupertinoScrollBehaviorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoScrollBehavior Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoScrollBehavior - Default"),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: ScrollConfiguration(
                  behavior: const CupertinoScrollBehavior(),
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) =>
                        ListTile(title: Text("Item $index")),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoScrollBehavior - With Custom Color"),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: ScrollConfiguration(
                  behavior: const CupertinoScrollBehavior().copyWith(
                    physics: const BouncingScrollPhysics(),
                  ),
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) =>
                        ListTile(title: Text("Item $index")),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoScrollBehavior - With Custom Physics"),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: ScrollConfiguration(
                  behavior: const CupertinoScrollBehavior().copyWith(
                    physics: const AlwaysScrollableScrollPhysics(),
                  ),
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) =>
                        ListTile(title: Text("Item $index")),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoScrollBehavior - Wrapping a Container"),
              const SizedBox(height: 8),
              ScrollConfiguration(
                behavior: const CupertinoScrollBehavior(),
                child: Container(
                  height: 50,
                  color: Colors.grey[200],
                  child: const Center(child: Text("Wrapped Container")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
