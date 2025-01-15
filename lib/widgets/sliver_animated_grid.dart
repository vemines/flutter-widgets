import 'package:flutter/material.dart';

class SliverAnimatedGridScreen extends StatelessWidget {
  const SliverAnimatedGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliverAnimatedGrid Showcase'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('SliverAnimatedGrid', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 200,
              child: CustomScrollView(
                slivers: [
                  SliverAnimatedGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 8.0,
                      crossAxisSpacing: 8.0,
                      childAspectRatio: 1.0,
                    ),
                    initialItemCount: 6,
                    itemBuilder: (context, index, animation) {
                      return ScaleTransition(
                        scale: animation,
                        child: Container(
                          color: Colors.blue[100 * (index % 9 + 1)],
                          alignment: Alignment.center,
                          child: Text('Item $index'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('SliverAnimatedGrid with different crossAxisCount',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 200,
              child: CustomScrollView(
                slivers: [
                  SliverAnimatedGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 4.0,
                      crossAxisSpacing: 4.0,
                      childAspectRatio: 1.5,
                    ),
                    initialItemCount: 8,
                    itemBuilder: (context, index, animation) {
                      return FadeTransition(
                        opacity: animation,
                        child: Container(
                          color: Colors.green[100 * (index % 9 + 1)],
                          alignment: Alignment.center,
                          child: Text('Item $index'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('SliverAnimatedGrid with extent based layout',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 200,
              child: CustomScrollView(
                slivers: [
                  SliverAnimatedGrid(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 100.0,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 0.75,
                    ),
                    initialItemCount: 10,
                    itemBuilder: (context, index, animation) {
                      return SizeTransition(
                        sizeFactor: animation,
                        child: Container(
                          color: Colors.orange[100 * (index % 9 + 1)],
                          alignment: Alignment.center,
                          child: Text('Item $index'),
                        ),
                      );
                    },
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
