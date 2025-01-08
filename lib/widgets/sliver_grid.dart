import 'package:flutter/material.dart';

class SliverGridScreen extends StatelessWidget {
  const SliverGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SliverGrid Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("SliverGrid - Basic Grid", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 200,
              child: CustomScrollView(
                slivers: [
                  SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 1.0,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.center,
                          color: Colors.teal[100 * (index % 9 + 1)],
                          child: Text('Item $index'),
                        );
                      },
                      childCount: 9,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("SliverGrid - Different Cross Axis Count", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 200,
              child: CustomScrollView(
                slivers: [
                  SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 5.0,
                      crossAxisSpacing: 5.0,
                      childAspectRatio: 1.5,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.center,
                          color: Colors.amber[100 * (index % 9 + 1)],
                          child: Text('Item $index'),
                        );
                      },
                      childCount: 12,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("SliverGrid - Max Extent", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 200,
              child: CustomScrollView(
                slivers: [
                  SliverGrid(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 150.0,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 1.0,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.center,
                          color: Colors.blue[100 * (index % 9 + 1)],
                          child: Text('Item $index'),
                        );
                      },
                      childCount: 10,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("SliverGrid - Different Child Aspect Ratio", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 200,
              child: CustomScrollView(
                slivers: [
                  SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 2.0,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.center,
                          color: Colors.green[100 * (index % 9 + 1)],
                          child: Text('Item $index'),
                        );
                      },
                      childCount: 9,
                    ),
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
