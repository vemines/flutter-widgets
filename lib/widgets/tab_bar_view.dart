import 'package:flutter/material.dart';

class TabBarViewScreen extends StatelessWidget {
  const TabBarViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TabBarView Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("TabBarView - Example", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      const TabBar(
                        tabs: [
                          Tab(text: 'Tab 1'),
                          Tab(text: 'Tab 2'),
                          Tab(text: 'Tab 3'),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Container(
                                color: Colors.red, child: const Center(child: Text('Content 1'))),
                            Container(
                                color: Colors.green, child: const Center(child: Text('Content 2'))),
                            Container(
                                color: Colors.blue, child: const Center(child: Text('Content 3'))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("TabBarView - Different Height",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 300,
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      const TabBar(
                        tabs: [
                          Tab(text: 'Tab 1'),
                          Tab(text: 'Tab 2'),
                          Tab(text: 'Tab 3'),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Container(
                                color: Colors.orange,
                                child: const Center(child: Text('Content 1'))),
                            Container(
                                color: Colors.purple,
                                child: const Center(child: Text('Content 2'))),
                            Container(
                                color: Colors.teal, child: const Center(child: Text('Content 3'))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("TabBarView - With Custom TabBar",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.grey,
                        indicator: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        tabs: const [
                          Tab(text: 'Tab A'),
                          Tab(text: 'Tab B'),
                          Tab(text: 'Tab C'),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Container(
                                color: Colors.pink, child: const Center(child: Text('Content A'))),
                            Container(
                                color: Colors.lime, child: const Center(child: Text('Content B'))),
                            Container(
                                color: Colors.indigo,
                                child: const Center(child: Text('Content C'))),
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
