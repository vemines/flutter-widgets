import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTabViewScreen extends StatelessWidget {
  const CupertinoTabViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoTabView Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoTabView - Basic"),
              const SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: CupertinoTabView(
                  builder: (context) => CupertinoPageScaffold(child: const Center(child: Text("Tab 1 Content"))),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTabView - With Background Color"),
              const SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: CupertinoTabView(
                  builder: (context) => CupertinoPageScaffold(
                    child: Container(
                      color: Colors.blue.shade100,
                      child: const Center(child: Text("Tab 2 Content")),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTabView - With Different Tab Content"),
              const SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: CupertinoTabView(
                  builder: (context) => CupertinoPageScaffold(child: const Center(child: Icon(CupertinoIcons.heart_fill, size: 50, color: Colors.red))),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTabView - With Navigation"),
              const SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: CupertinoTabView(
                  builder: (context) => CupertinoPageScaffold(
                    navigationBar: const CupertinoNavigationBar(
                      middle: Text("Tab with Navigation"),
                    ),
                    child: const Center(child: Text("Tab 4 Content")),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTabView - With Custom Builder"),
              const SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: CupertinoTabView(
                  builder: (context) => CupertinoPageScaffold(
                    child: Container(
                      color: Colors.green.shade100,
                      child: const Center(child: Text("Custom Builder Content")),
                    ),
                  ),
                  navigatorKey: GlobalKey<NavigatorState>(),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTabView - With Initial Route"),
              const SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: CupertinoTabView(
                  routes: {
                    '/': (context) => CupertinoPageScaffold(child: const Center(child: Text("Initial Route Content"))),
                    '/second': (context) => CupertinoPageScaffold(child: const Center(child: Text("Second Route Content"))),
                  },
                  onGenerateRoute: (settings) {
                    if (settings.name == '/second') {
                      return CupertinoPageRoute(builder: (context) => CupertinoPageScaffold(child: const Center(child: Text("Second Route Content"))));
                    }
                    return null;
                  },
                  initialRoute: '/',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
