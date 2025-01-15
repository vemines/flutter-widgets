import 'package:flutter/material.dart';

class NestedScrollViewScreen extends StatelessWidget {
  const NestedScrollViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NestedScrollView Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text("NestedScrollView - Example", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 200,
              child: NestedScrollView(
                headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      title: Text('Sliver App Bar'),
                      expandedHeight: 150.0,
                      floating: false,
                      pinned: true,
                      forceElevated: innerBoxIsScrolled,
                    ),
                  ];
                },
                body: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 20,
                  itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("NestedScrollView - With Custom Scroll Physics",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 200,
              child: NestedScrollView(
                headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      title: Text('Sliver App Bar'),
                      expandedHeight: 150.0,
                      floating: false,
                      pinned: true,
                      forceElevated: innerBoxIsScrolled,
                    ),
                  ];
                },
                body: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 20,
                  itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("NestedScrollView - With Different Header",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 200,
              child: NestedScrollView(
                headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverPersistentHeader(
                      delegate: _MySliverPersistentHeaderDelegate(
                        minHeight: 60.0,
                        maxHeight: 100.0,
                        child: Container(
                          color: Colors.blue,
                          child: Center(
                              child: Text('Custom Header', style: TextStyle(color: Colors.white))),
                        ),
                      ),
                      pinned: true,
                    ),
                  ];
                },
                body: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 20,
                  itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("NestedScrollView - With Different Body",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 200,
              child: NestedScrollView(
                headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      title: Text('Sliver App Bar'),
                      expandedHeight: 150.0,
                      floating: false,
                      pinned: true,
                      forceElevated: innerBoxIsScrolled,
                    ),
                  ];
                },
                body: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemCount: 20,
                  itemBuilder: (context, index) => Container(
                    color: Colors.grey[(index % 5) * 100 + 100],
                    child: Center(child: Text('Grid $index')),
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
