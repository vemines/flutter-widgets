import 'package:flutter/material.dart';

class SliverToBoxAdapterScreen extends StatelessWidget {
  const SliverToBoxAdapterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverToBoxAdapter Showcase'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('SliverToBoxAdapter - Basic'),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 100,
                color: Colors.blue.shade100,
                alignment: Alignment.center,
                child: const Text('SliverToBoxAdapter'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('SliverToBoxAdapter - With Padding'),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 100,
                  color: Colors.green.shade100,
                  alignment: Alignment.center,
                  child: const Text('SliverToBoxAdapter with Padding'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('SliverToBoxAdapter - With Margin'),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.all(20.0),
                height: 100,
                color: Colors.red.shade100,
                alignment: Alignment.center,
                child: const Text('SliverToBoxAdapter with Margin'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('SliverToBoxAdapter - With Border Radius'),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.yellow.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text('SliverToBoxAdapter with Border Radius'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('SliverToBoxAdapter - With Different Height'),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 50,
                color: Colors.purple.shade100,
                alignment: Alignment.center,
                child: const Text('SliverToBoxAdapter with Different Height'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('SliverToBoxAdapter - With Different Alignment'),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 100,
                color: Colors.orange.shade100,
                alignment: Alignment.bottomRight,
                child: const Text('SliverToBoxAdapter with Different Alignment'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('SliverToBoxAdapter - Wrapping a Text Widget'),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.teal.shade100,
                child: const Text('SliverToBoxAdapter wrapping Text'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
