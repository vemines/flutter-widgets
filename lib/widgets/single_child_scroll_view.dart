import 'package:flutter/material.dart';

class SingleChildScrollViewScreen extends StatelessWidget {
  const SingleChildScrollViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SingleChildScrollView Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("SingleChildScrollView - Basic"),
            Container(
              height: 200,
              width: 200,
              color: Colors.grey[300],
              child: const SingleChildScrollView(
                child: Text(
                  'This is a long text that should overflow the container. This is a long text that should overflow the container. This is a long text that should overflow the container. This is a long text that should overflow the container. This is a long text that should overflow the container.',
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text("SingleChildScrollView - Horizontal Scroll"),
            SizedBox(
              height: 100,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    10,
                    (index) => Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue[100 * (index % 9 + 1)],
                      margin: const EdgeInsets.all(8),
                      child: Center(child: Text('Item $index')),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text("SingleChildScrollView - With Padding"),
            Container(
              height: 200,
              width: 200,
              color: Colors.grey[300],
              child: const SingleChildScrollView(
                padding: EdgeInsets.all(20),
                child: Text(
                  'This is a long text with padding. This is a long text with padding. This is a long text with padding. This is a long text with padding. This is a long text with padding.',
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text("SingleChildScrollView - With Custom Scrollbar"),
            SizedBox(
              height: 200,
              child: Scrollbar(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: const Text(
                      'This is a long text with a custom scrollbar. This is a long text with a custom scrollbar. This is a long text with a custom scrollbar. This is a long text with a custom scrollbar. This is a long text with a custom scrollbar.',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text("SingleChildScrollView - With a child Container"),
            Container(
              height: 100,
              width: 100,
              color: Colors.red[100],
              child: const SingleChildScrollView(
                child: Text("This is a text inside a SingleChildScrollView"),
              ),
            ),
            const SizedBox(height: 20),
            // SingleChildScrollView without a child is not very useful, so it's not shown here.
            // It would just be an empty scrollable area.
            // const Text("SingleChildScrollView - No Child (Not Recommended)"),
            // const SingleChildScrollView(),
          ],
        ),
      ),
    );
  }
}
