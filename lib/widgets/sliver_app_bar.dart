import 'package:flutter/material.dart';

class SliverAppBarScreen extends StatelessWidget {
  const SliverAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SliverAppBar Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("SliverAppBar - Example", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    title: Text('SliverAppBar'),
                    expandedHeight: 150.0,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Image.network(
                        'https://placehold.co/200x200x150',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return ListTile(title: Text('Item #$index'));
                      },
                      childCount: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("SliverAppBar - Pinned Example", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    pinned: true,
                    title: Text('Pinned SliverAppBar'),
                    expandedHeight: 150.0,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Image.network(
                        'https://placehold.co/200x200x150',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return ListTile(title: Text('Item #$index'));
                      },
                      childCount: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("SliverAppBar - Floating Example", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    floating: true,
                    title: Text('Floating SliverAppBar'),
                    expandedHeight: 150.0,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Image.network(
                        'https://placehold.co/200x200x150',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return ListTile(title: Text('Item #$index'));
                      },
                      childCount: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("SliverAppBar - Snap Example", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    snap: true,
                    floating: true,
                    title: Text('Snap SliverAppBar'),
                    expandedHeight: 150.0,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Image.network(
                        'https://placehold.co/200x200x150',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return ListTile(title: Text('Item #$index'));
                      },
                      childCount: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("SliverAppBar - With Actions", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    title: Text('SliverAppBar with Actions'),
                    expandedHeight: 150.0,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Image.network(
                        'https://placehold.co/200x200x150',
                        fit: BoxFit.cover,
                      ),
                    ),
                    actions: [
                      IconButton(icon: Icon(Icons.settings), onPressed: () {}),
                      IconButton(icon: Icon(Icons.add), onPressed: () {}),
                    ],
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return ListTile(title: Text('Item #$index'));
                      },
                      childCount: 20,
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
