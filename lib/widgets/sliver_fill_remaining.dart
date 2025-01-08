import 'package:flutter/material.dart';

class SliverFillRemainingScreen extends StatelessWidget {
  const SliverFillRemainingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SliverFillRemaining Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("SliverFillRemaining - Default"),
            ),
            SliverFillRemaining(
              child: Container(
                color: Colors.grey[300],
                alignment: Alignment.center,
                child: const Text("Default SliverFillRemaining"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("SliverFillRemaining - With Color and Alignment"),
            ),
            SliverFillRemaining(
              child: Container(
                color: Colors.blue[100],
                alignment: Alignment.bottomRight,
                child: const Text("Bottom Right Alignment", style: TextStyle(color: Colors.black)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("SliverFillRemaining - With Padding"),
            ),
            SliverFillRemaining(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  color: Colors.green[100],
                  alignment: Alignment.center,
                  child: const Text("With Padding", style: TextStyle(color: Colors.black)),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("SliverFillRemaining - With Expanded Child"),
            ),
            SliverFillRemaining(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.orange[100],
                      alignment: Alignment.center,
                      child: const Text("Expanded Child", style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("SliverFillRemaining - With Different Child"),
            ),
            SliverFillRemaining(
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.purple[100],
                  child: const Icon(Icons.star, size: 50, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
