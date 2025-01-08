import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTabScaffoldScreen extends StatelessWidget {
  const CupertinoTabScaffoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoTabScaffold Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoTabScaffold - Basic Example", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: CupertinoTabScaffold(
                  tabBar: CupertinoTabBar(
                    items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.home),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.settings),
                        label: 'Settings',
                      ),
                    ],
                  ),
                  tabBuilder: (BuildContext context, int index) {
                    return CupertinoTabView(
                      builder: (BuildContext context) {
                        return Center(
                          child: Text('Tab $index Content'),
                        );
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTabScaffold - Custom Colors", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: CupertinoTabScaffold(
                  tabBar: CupertinoTabBar(
                    backgroundColor: Colors.grey[200],
                    activeColor: Colors.blue,
                    inactiveColor: Colors.grey,
                    items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.home),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.settings),
                        label: 'Settings',
                      ),
                    ],
                  ),
                  tabBuilder: (BuildContext context, int index) {
                    return CupertinoTabView(
                      builder: (BuildContext context) {
                        return Center(
                          child: Text('Tab $index Content', style: const TextStyle(color: Colors.white)),
                        );
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTabScaffold - With Custom Tab Bar Height", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: CupertinoTabScaffold(
                  tabBar: CupertinoTabBar(
                    height: 60,
                    items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.home),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.settings),
                        label: 'Settings',
                      ),
                    ],
                  ),
                  tabBuilder: (BuildContext context, int index) {
                    return CupertinoTabView(
                      builder: (BuildContext context) {
                        return Center(
                          child: Text('Tab $index Content'),
                        );
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTabScaffold - With Different Icons", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: CupertinoTabScaffold(
                  tabBar: CupertinoTabBar(
                    items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.mail),
                        label: 'Mail',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.phone),
                        label: 'Phone',
                      ),
                    ],
                  ),
                  tabBuilder: (BuildContext context, int index) {
                    return CupertinoTabView(
                      builder: (BuildContext context) {
                        return Center(
                          child: Text('Tab $index Content'),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
