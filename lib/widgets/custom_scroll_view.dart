import 'package:flutter/material.dart';

class CustomScrollViewScreen extends StatelessWidget {
  const CustomScrollViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomScrollView Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("CustomScrollView - Basic Example", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    title: Text('Sliver App Bar'),
                    expandedHeight: 150.0,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Container(color: Colors.blue),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return ListTile(title: Text('Item $index'));
                      },
                      childCount: 10,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("CustomScrollView - With Different Scroll Direction", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            SizedBox(
              height: 150,
              child: CustomScrollView(
                scrollDirection: Axis.horizontal,
                slivers: <Widget>[
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          width: 100,
                          color: index % 2 == 0 ? Colors.grey[300] : Colors.grey[200],
                          child: Center(child: Text('Item $index')),
                        );
                      },
                      childCount: 10,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("CustomScrollView - With Grid", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: CustomScrollView(
                slivers: <Widget>[
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
                          color: index % 2 == 0 ? Colors.green[300] : Colors.green[200],
                          child: Center(child: Text('Item $index')),
                        );
                      },
                      childCount: 9,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("CustomScrollView - With Header and Footer", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Container(
                      height: 50,
                      color: Colors.amber,
                      child: Center(child: Text('Header')),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return ListTile(title: Text('Item $index'));
                      },
                      childCount: 5,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      height: 50,
                      color: Colors.amber,
                      child: Center(child: Text('Footer')),
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
