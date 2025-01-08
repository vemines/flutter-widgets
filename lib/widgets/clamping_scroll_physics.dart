import 'package:flutter/material.dart';

class ClampingScrollPhysicsScreen extends StatelessWidget {
  const ClampingScrollPhysicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ClampingScrollPhysics Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("ClampingScrollPhysics - Default"),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) => Container(
                  width: 50,
                  height: 50,
                  margin: const EdgeInsets.all(4),
                  color: Colors.blue[100 * (index % 9 + 1)],
                  child: Center(child: Text('$index')),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("ClampingScrollPhysics - With Bouncing"),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                physics: const ClampingScrollPhysics(parent: BouncingScrollPhysics()),
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) => Container(
                  width: 50,
                  height: 50,
                  margin: const EdgeInsets.all(4),
                  color: Colors.green[100 * (index % 9 + 1)],
                  child: Center(child: Text('$index')),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("ClampingScrollPhysics - With AlwaysScrollable"),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                physics: const ClampingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) => Container(
                  width: 50,
                  height: 50,
                  margin: const EdgeInsets.all(4),
                  color: Colors.red[100 * (index % 9 + 1)],
                  child: Center(child: Text('$index')),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("ClampingScrollPhysics - With NeverScrollable"),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                physics: const ClampingScrollPhysics(parent: NeverScrollableScrollPhysics()),
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) => Container(
                  width: 50,
                  height: 50,
                  margin: const EdgeInsets.all(4),
                  color: Colors.orange[100 * (index % 9 + 1)],
                  child: Center(child: Text('$index')),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
