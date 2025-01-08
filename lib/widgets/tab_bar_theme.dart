import 'package:flutter/material.dart';

class TabBarThemeScreen extends StatelessWidget {
  const TabBarThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TabBarTheme Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("TabBarTheme - Default"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  tabBarTheme: const TabBarTheme(),
                ),
                child: const TabBar(
                  tabs: [
                    Tab(text: 'Tab 1'),
                    Tab(text: 'Tab 2'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("TabBarTheme - Custom Colors"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  tabBarTheme: const TabBarTheme(
                    indicator: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.red, width: 2.0),
                      ),
                    ),
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.grey,
                  ),
                ),
                child: const TabBar(
                  tabs: [
                    Tab(text: 'Tab 1'),
                    Tab(text: 'Tab 2'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("TabBarTheme - Custom Indicator"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  tabBarTheme: const TabBarTheme(
                    indicator: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                    ),
                    indicatorSize: TabBarIndicatorSize.label,
                  ),
                ),
                child: const TabBar(
                  tabs: [
                    Tab(text: 'Tab 1'),
                    Tab(text: 'Tab 2'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("TabBarTheme - Custom Label Style"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  tabBarTheme: const TabBarTheme(
                    labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    unselectedLabelStyle: TextStyle(fontSize: 14),
                  ),
                ),
                child: const TabBar(
                  tabs: [
                    Tab(text: 'Tab 1'),
                    Tab(text: 'Tab 2'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("TabBarTheme - Wrapped in TabBarView"),
              const SizedBox(height: 8),
              DefaultTabController(
                length: 2,
                child: Theme(
                  data: ThemeData(
                    tabBarTheme: const TabBarTheme(
                      indicator: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.purple, width: 3.0),
                        ),
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      const TabBar(
                        tabs: [
                          Tab(text: 'Tab 1'),
                          Tab(text: 'Tab 2'),
                        ],
                      ),
                      SizedBox(
                        height: 200,
                        child: TabBarView(
                          children: [
                            Container(color: Colors.yellow, child: const Center(child: Text("Content 1"))),
                            Container(color: Colors.cyan, child: const Center(child: Text("Content 2"))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
