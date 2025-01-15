import 'package:flutter/material.dart';

class NeverScrollableScrollPhysicsScreen extends StatelessWidget {
  const NeverScrollableScrollPhysicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NeverScrollableScrollPhysics Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("NeverScrollableScrollPhysics - Example"),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(
                  10,
                  (index) => ListTile(
                    title: Text('Item $index'),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("NeverScrollableScrollPhysics - With a Container"),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Container(
                    color: Colors.blue.shade100,
                    height: 100,
                    child: const Center(child: Text("Container")),
                  ),
                  Container(
                    color: Colors.green.shade100,
                    height: 100,
                    child: const Center(child: Text("Container")),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("NeverScrollableScrollPhysics - With a different height"),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(
                  10,
                  (index) => ListTile(
                    title: Text('Item $index'),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("NeverScrollableScrollPhysics - With a different width"),
            ),
            SizedBox(
              width: 200,
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(
                  10,
                  (index) => ListTile(
                    title: Text('Item $index'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
