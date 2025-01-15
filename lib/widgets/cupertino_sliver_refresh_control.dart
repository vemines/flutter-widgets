import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSliverRefreshControlScreen extends StatelessWidget {
  const CupertinoSliverRefreshControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoSliverRefreshControl Showcase'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("CupertinoSliverRefreshControl",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 200,
              child: CustomScrollView(
                slivers: <Widget>[
                  CupertinoSliverRefreshControl(
                    onRefresh: () async {
                      await Future.delayed(const Duration(seconds: 1));
                    },
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
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("CupertinoSliverRefreshControl with different colors",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 200,
              child: CustomScrollView(
                slivers: <Widget>[
                  CupertinoSliverRefreshControl(
                    refreshTriggerPullDistance: 150.0,
                    refreshIndicatorExtent: 80.0,
                    onRefresh: () async {
                      await Future.delayed(const Duration(seconds: 1));
                    },
                    builder: (BuildContext context,
                        RefreshIndicatorMode refreshState,
                        double pulledExtent,
                        double refreshTriggerPullDistance,
                        double refreshIndicatorExtent) {
                      const double opacity = 1.0;
                      return Opacity(
                        opacity: opacity,
                        child: Center(
                          child: Icon(
                            CupertinoIcons.refresh_circled,
                            size: 40,
                            color: Colors.red,
                          ),
                        ),
                      );
                    },
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
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "CupertinoSliverRefreshControl with custom refreshTriggerPullDistance and refreshIndicatorExtent",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 200,
              child: CustomScrollView(
                slivers: <Widget>[
                  CupertinoSliverRefreshControl(
                    refreshTriggerPullDistance: 100.0,
                    refreshIndicatorExtent: 50.0,
                    onRefresh: () async {
                      await Future.delayed(const Duration(seconds: 1));
                    },
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
            ),
          ],
        ),
      ),
    );
  }
}
