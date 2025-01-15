import 'package:flutter/material.dart';

class AnimatedGridScreen extends StatelessWidget {
  const AnimatedGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedGrid Showcase'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('AnimatedGrid - Grid'),
            ),
            SizedBox(
              height: 200,
              child: AnimatedGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                initialItemCount: 6,
                itemBuilder: (context, index, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      color: Colors.blue[200],
                      child: Center(child: Text('Item $index')),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('AnimatedGrid - Different Cross Axis Count'),
            ),
            SizedBox(
              height: 200,
              child: AnimatedGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                initialItemCount: 8,
                itemBuilder: (context, index, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      color: Colors.green[200],
                      child: Center(child: Text('Item $index')),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('AnimatedGrid - Max Cross Axis Extent'),
            ),
            SizedBox(
              height: 200,
              child: AnimatedGrid(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100,
                ),
                initialItemCount: 10,
                itemBuilder: (context, index, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      color: Colors.orange[200],
                      child: Center(child: Text('Item $index')),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('AnimatedGrid - Custom Spacing'),
            ),
            SizedBox(
              height: 200,
              child: AnimatedGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 15.0,
                  crossAxisSpacing: 10.0,
                ),
                initialItemCount: 6,
                itemBuilder: (context, index, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: Container(
                      color: Colors.purple[200],
                      child: Center(child: Text('Item $index')),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
