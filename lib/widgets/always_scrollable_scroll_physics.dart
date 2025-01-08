import 'package:flutter/material.dart';

class AlwaysScrollableScrollPhysicsScreen extends StatelessWidget {
  const AlwaysScrollableScrollPhysicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AlwaysScrollableScrollPhysics Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("AlwaysScrollableScrollPhysics - Default"),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children: List.generate(
                  5,
                  (index) => ListTile(
                    title: Text('Item $index'),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("AlwaysScrollableScrollPhysics - With BouncingScrollPhysics"),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
                children: List.generate(
                  5,
                  (index) => ListTile(
                    title: Text('Item $index'),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("AlwaysScrollableScrollPhysics - With ClampingScrollPhysics"),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(parent: ClampingScrollPhysics()),
                children: List.generate(
                  5,
                  (index) => ListTile(
                    title: Text('Item $index'),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("AlwaysScrollableScrollPhysics - With NeverScrollableScrollPhysics (Should still scroll)"),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(parent: NeverScrollableScrollPhysics()),
                children: List.generate(
                  5,
                  (index) => ListTile(
                    title: Text('Item $index'),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("AlwaysScrollableScrollPhysics - With FixedExtentScrollPhysics"),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(parent: FixedExtentScrollPhysics()),
                children: List.generate(
                  5,
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
