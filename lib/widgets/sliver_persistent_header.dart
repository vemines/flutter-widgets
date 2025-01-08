import 'package:flutter/material.dart';

class SliverPersistentHeaderScreen extends StatelessWidget {
  const SliverPersistentHeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SliverPersistentHeader Showcase"),
      ),
      body:  CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: _MySliverPersistentHeaderDelegate(
              minHeight: 60,
              maxHeight: 200,
              child: Container(
                color: Colors.blue,
                alignment: Alignment.center,
                child: const Text("SliverPersistentHeader - Blue", style: TextStyle(color: Colors.white)),
              ),
            ),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
              childCount: 20,
            ),
          ),
          SliverPersistentHeader(
            delegate: _MySliverPersistentHeaderDelegate(
              minHeight: 40,
              maxHeight: 100,
              child: Container(
                color: Colors.green,
                alignment: Alignment.center,
                child: const Text("SliverPersistentHeader - Green", style: TextStyle(color: Colors.white)),
              ),
            ),
            pinned: false,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
              childCount: 20,
            ),
          ),
          SliverPersistentHeader(
            delegate: _MySliverPersistentHeaderDelegate(
              minHeight: 80,
              maxHeight: 150,
              child: Container(
                color: Colors.red,
                alignment: Alignment.center,
                child: const Text("SliverPersistentHeader - Red", style: TextStyle(color: Colors.white)),
              ),
            ),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class _MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _MySliverPersistentHeaderDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_MySliverPersistentHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
