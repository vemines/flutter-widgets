import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTabControllerScreen extends StatelessWidget {
  const CupertinoTabControllerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoTabController Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoTabController Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              _buildTabControllerVariation(
                title: "CupertinoTabController",
                description: "A CupertinoTabController with default settings.",
                child: _buildBasicTabController(),
              ),
              const SizedBox(height: 20),
              _buildTabControllerVariation(
                title: "CupertinoTabController with Custom Colors",
                description:
                    "A CupertinoTabController with custom background and active tab colors.",
                child: _buildCustomColorTabController(),
              ),
              const SizedBox(height: 20),
              _buildTabControllerVariation(
                title: "CupertinoTabController with Custom Tab Bar Height",
                description: "A CupertinoTabController with a custom tab bar height.",
                child: _buildCustomHeightTabController(),
              ),
              const SizedBox(height: 20),
              _buildTabControllerVariation(
                title: "CupertinoTabController with Custom Tab Bar Border",
                description: "A CupertinoTabController with a custom tab bar border.",
                child: _buildCustomBorderTabController(),
              ),
              const SizedBox(height: 20),
              _buildTabControllerVariation(
                title: "CupertinoTabController with Custom Tab Bar Alignment",
                description: "A CupertinoTabController with a custom tab bar alignment.",
                child: _buildCustomAlignmentTabController(),
              ),
              const SizedBox(height: 20),
              _buildTabControllerVariation(
                title: "CupertinoTabController Wrapping a Container",
                description: "A CupertinoTabController wrapping a Container.",
                child: _buildWrappedTabController(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabControllerVariation(
      {required String title, required String description, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        Tooltip(
            message: description,
            child: Text(description, style: const TextStyle(fontSize: 12, color: Colors.grey))),
        const SizedBox(height: 8),
        child,
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildBasicTabController() {
    return SizedBox(
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
    );
  }

  Widget _buildCustomColorTabController() {
    return SizedBox(
      height: 200,
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: Colors.grey[200],
          activeColor: Colors.blue,
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
    );
  }

  Widget _buildCustomHeightTabController() {
    return SizedBox(
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
    );
  }

  Widget _buildCustomBorderTabController() {
    return SizedBox(
      height: 200,
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          border: Border(top: BorderSide(color: Colors.red, width: 2)),
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
    );
  }

  Widget _buildCustomAlignmentTabController() {
    return SizedBox(
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
    );
  }

  Widget _buildWrappedTabController() {
    return SizedBox(
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
              return Container(
                color: Colors.yellow[100],
                child: Center(
                  child: Text('Tab $index Content'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
