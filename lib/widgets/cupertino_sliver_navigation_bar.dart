import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSliverNavigationBarScreen extends StatelessWidget {
  const CupertinoSliverNavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CupertinoSliverNavigationBar Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("CupertinoSliverNavigationBar - Basic", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: CustomScrollView(
                  slivers: <Widget>[
                    CupertinoSliverNavigationBar(
                      largeTitle: Text('Basic'),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Container(
                            alignment: Alignment.center,
                            color: Colors.lightBlue[100 * (index % 9 + 1)],
                            height: 60.0,
                            child: Text('Item $index'),
                          );
                        },
                        childCount: 10,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("CupertinoSliverNavigationBar - With Background Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: CustomScrollView(
                  slivers: <Widget>[
                    CupertinoSliverNavigationBar(
                      backgroundColor: Colors.green[200],
                      largeTitle: Text('Background Color'),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Container(
                            alignment: Alignment.center,
                            color: Colors.lightBlue[100 * (index % 9 + 1)],
                            height: 60.0,
                            child: Text('Item $index'),
                          );
                        },
                        childCount: 10,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("CupertinoSliverNavigationBar - With Border", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: CustomScrollView(
                  slivers: <Widget>[
                    CupertinoSliverNavigationBar(
                      border: Border(bottom: BorderSide(color: Colors.red, width: 2)),
                      largeTitle: Text('Border'),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Container(
                            alignment: Alignment.center,
                            color: Colors.lightBlue[100 * (index % 9 + 1)],
                            height: 60.0,
                            child: Text('Item $index'),
                          );
                        },
                        childCount: 10,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("CupertinoSliverNavigationBar - With Leading and Trailing", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: CustomScrollView(
                  slivers: <Widget>[
                    CupertinoSliverNavigationBar(
                      leading: Icon(CupertinoIcons.back),
                      trailing: Icon(CupertinoIcons.add),
                      largeTitle: Text('Leading and Trailing'),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Container(
                            alignment: Alignment.center,
                            color: Colors.lightBlue[100 * (index % 9 + 1)],
                            height: 60.0,
                            child: Text('Item $index'),
                          );
                        },
                        childCount: 10,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("CupertinoSliverNavigationBar - With Middle", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: CustomScrollView(
                  slivers: <Widget>[
                    CupertinoSliverNavigationBar(
                      middle: Text('Middle Title'),
                      largeTitle: Text('Middle'),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Container(
                            alignment: Alignment.center,
                            color: Colors.lightBlue[100 * (index % 9 + 1)],
                            height: 60.0,
                            child: Text('Item $index'),
                          );
                        },
                        childCount: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
