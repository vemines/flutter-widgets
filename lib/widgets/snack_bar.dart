import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar Showcase'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("SnackBar - Basic"),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Basic SnackBar')),
                );
              },
              child: const Text('Show Basic SnackBar'),
            ),
            const SizedBox(height: 20),
            const Text("SnackBar - With Action"),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('SnackBar with Action'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Perform undo action
                      },
                    ),
                  ),
                );
              },
              child: const Text('Show SnackBar with Action'),
            ),
            const SizedBox(height: 20),
            const Text("SnackBar - Custom Background Color"),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Custom Background SnackBar'),
                    backgroundColor: Colors.blue,
                  ),
                );
              },
              child: const Text('Show Custom Background SnackBar'),
            ),
            const SizedBox(height: 20),
            const Text("SnackBar - Custom Text Color"),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Custom Text Color SnackBar', style: TextStyle(color: Colors.white)),
                    backgroundColor: Colors.grey,
                  ),
                );
              },
              child: const Text('Show Custom Text Color SnackBar'),
            ),
            const SizedBox(height: 20),
            const Text("SnackBar - Custom Duration"),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Custom Duration SnackBar'),
                    duration: Duration(seconds: 5),
                  ),
                );
              },
              child: const Text('Show Custom Duration SnackBar'),
            ),
            const SizedBox(height: 20),
            const Text("SnackBar - With Padding"),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text('SnackBar with Padding'),
                    ),
                  ),
                );
              },
              child: const Text('Show SnackBar with Padding'),
            ),
            const SizedBox(height: 20),
            const Text("SnackBar - With Margin"),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('SnackBar with Margin'),
                    margin: const EdgeInsets.all(20),
                  ),
                );
              },
              child: const Text('Show SnackBar with Margin'),
            ),
            const SizedBox(height: 20),
            const Text("SnackBar - With Shape"),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('SnackBar with Shape'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                );
              },
              child: const Text('Show SnackBar with Shape'),
            ),
            const SizedBox(height: 20),
            const Text("SnackBar - With Behavior"),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('SnackBar with Behavior'),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: const Text('Show SnackBar with Behavior'),
            ),
          ],
        ),
      ),
    );
  }
}
