import 'package:flutter/material.dart';

class SliverFillViewportScreen extends StatelessWidget {
  const SliverFillViewportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SliverFillViewport Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("SliverFillViewport - Default", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverFillViewport(
                    delegate: SliverChildListDelegate([
                      Container(
                        color: Colors.blue,
                        child: Center(child: Text("Default", style: TextStyle(color: Colors.white))),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("SliverFillViewport - With Different Color", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverFillViewport(
                    delegate: SliverChildListDelegate([
                      Container(
                        color: Colors.green,
                        child: Center(child: Text("Green", style: TextStyle(color: Colors.white))),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("SliverFillViewport - With Different Height", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            SizedBox(
              height: 300,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverFillViewport(
                    delegate: SliverChildListDelegate([
                      Container(
                        color: Colors.red,
                        child: Center(child: Text("Height 300", style: TextStyle(color: Colors.white))),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("SliverFillViewport - With Multiple Children", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverFillViewport(
                    delegate: SliverChildListDelegate([
                      Container(
                        color: Colors.orange,
                        child: Center(child: Text("Child 1", style: TextStyle(color: Colors.white))),
                      ),
                      Container(
                        color: Colors.purple,
                        child: Center(child: Text("Child 2", style: TextStyle(color: Colors.white))),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("SliverFillViewport - With viewportFraction", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverFillViewport(
                    viewportFraction: 0.5,
                    delegate: SliverChildListDelegate([
                      Container(
                        color: Colors.teal,
                        child: Center(child: Text("viewportFraction 0.5", style: TextStyle(color: Colors.white))),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
