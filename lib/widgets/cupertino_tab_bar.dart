import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTabBarScreen extends StatelessWidget {
  const CupertinoTabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoTabBar Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoTabBar Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              const Text("Default CupertinoTabBar:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTabBar(
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.search), label: 'Search'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.settings), label: 'Settings'),
                ],
                onTap: (index) {},
              ),
              const SizedBox(height: 16),
              const Text("CupertinoTabBar - Selected Color Red:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTabBar(
                activeColor: Colors.red,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.search), label: 'Search'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.settings), label: 'Settings'),
                ],
                onTap: (index) {},
              ),
              const SizedBox(height: 16),
              const Text("CupertinoTabBar - Inactive Color Grey:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTabBar(
                inactiveColor: Colors.grey,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.search), label: 'Search'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.settings), label: 'Settings'),
                ],
                onTap: (index) {},
              ),
              const SizedBox(height: 16),
              const Text("CupertinoTabBar - Background Color Light Blue:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                color: Colors.lightBlue.withValues(alpha: 255 * 0.3),
                child: CupertinoTabBar(
                  backgroundColor: Colors.transparent,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.home), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.search), label: 'Search'),
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.settings), label: 'Settings'),
                  ],
                  onTap: (index) {},
                ),
              ),
              const SizedBox(height: 16),
              const Text("CupertinoTabBar - With Border:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: CupertinoTabBar(
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.home), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.search), label: 'Search'),
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.settings), label: 'Settings'),
                  ],
                  onTap: (index) {},
                ),
              ),
              const SizedBox(height: 16),
              const Text("CupertinoTabBar - With Different Icon Sizes:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTabBar(
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.home, size: 30), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.search, size: 20),
                      label: 'Search'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.settings, size: 40),
                      label: 'Settings'),
                ],
                onTap: (index) {},
              ),
              const SizedBox(height: 16),
              const Text("CupertinoTabBar - With Different Colors:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTabBar(
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.search), label: 'Search'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.settings), label: 'Settings'),
                ],
                activeColor: Colors.green,
                inactiveColor: Colors.grey,
                onTap: (index) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
