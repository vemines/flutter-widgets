import 'package:flutter/material.dart';

class BouncingScrollPhysicsScreen extends StatelessWidget {
  const BouncingScrollPhysicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BouncingScrollPhysics Showcase'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("BouncingScrollPhysics - Default"),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 80,
                    margin: const EdgeInsets.all(8),
                    color: Colors.blue[100 * (index % 9 + 1)],
                    child: Center(child: Text('Item $index')),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("BouncingScrollPhysics - With Different Parent"),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(
                  parent: RangeMaintainingScrollPhysics(),
                ),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 80,
                    margin: const EdgeInsets.all(8),
                    color: Colors.orange[100 * (index % 9 + 1)],
                    child: Center(child: Text('Item $index')),
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
