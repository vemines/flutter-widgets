import 'package:flutter/material.dart';

class SliverPaddingScreen extends StatelessWidget {
  const SliverPaddingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverPadding Showcase'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("SliverPadding - Default"),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(8.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    height: 50,
                    color: Colors.blue[100],
                    child: const Center(child: Text('Item 1')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue[200],
                    child: const Center(child: Text('Item 2')),
                  ),
                ]),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("SliverPadding - Different Padding"),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    height: 50,
                    color: Colors.green[100],
                    child: const Center(child: Text('Item 1')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.green[200],
                    child: const Center(child: Text('Item 2')),
                  ),
                ]),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("SliverPadding - Only Top Padding"),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(top: 30),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    height: 50,
                    color: Colors.red[100],
                    child: const Center(child: Text('Item 1')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.red[200],
                    child: const Center(child: Text('Item 2')),
                  ),
                ]),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("SliverPadding - With a different Sliver"),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(16.0),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      color: Colors.orange[100 + (index * 100) % 400],
                      child: Center(child: Text('Grid Item $index')),
                    );
                  },
                  childCount: 4,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("SliverPadding - With a negative padding (not recommended)"),
            ),
            // Negative padding can cause unexpected layout issues, so it's commented out.
            /*SliverPadding(
              padding: const EdgeInsets.all(-10.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    height: 50,
                    color: Colors.purple[100],
                    child: const Center(child: Text('Item 1')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.purple[200],
                    child: const Center(child: Text('Item 2')),
                  ),
                ]),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
