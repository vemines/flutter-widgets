import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("GridView.count - Basic", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              children: List.generate(9, (index) => Container(
                color: Colors.blue[100 * (index % 9 + 1)],
                child: Center(child: Text('Item $index')),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("GridView.count - Spacing", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: List.generate(9, (index) => Container(
                color: Colors.green[100 * (index % 9 + 1)],
                child: Center(child: Text('Item $index')),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("GridView.count - Aspect Ratio", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              childAspectRatio: 2,
              children: List.generate(9, (index) => Container(
                color: Colors.red[100 * (index % 9 + 1)],
                child: Center(child: Text('Item $index')),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("GridView.builder - Basic", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 200,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemCount: 9,
                itemBuilder: (context, index) => Container(
                  color: Colors.yellow[100 * (index % 9 + 1)],
                  child: Center(child: Text('Item $index')),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("GridView.builder - Max Cross Axis Extent", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 200,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100),
                itemCount: 9,
                itemBuilder: (context, index) => Container(
                  color: Colors.purple[100 * (index % 9 + 1)],
                  child: Center(child: Text('Item $index')),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("GridView.custom - Basic", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 200,
              child: GridView.custom(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                childrenDelegate: SliverChildListDelegate(
                  List.generate(9, (index) => Container(
                    color: Colors.orange[100 * (index % 9 + 1)],
                    child: Center(child: Text('Item $index')),
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("GridView - With Scroll Physics", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 200,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                children: List.generate(20, (index) => Container(
                  color: Colors.teal[100 * (index % 9 + 1)],
                  child: Center(child: Text('Item $index')),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
