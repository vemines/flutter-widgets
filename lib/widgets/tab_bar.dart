import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBar Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Default TabBar", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                      tabs: [
                        Tab(text: 'Tab 1'),
                        Tab(text: 'Tab 2'),
                        Tab(text: 'Tab 3'),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                      child: TabBarView(
                        children: [
                          Center(child: Text('Content 1')),
                          Center(child: Text('Content 2')),
                          Center(child: Text('Content 3')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("TabBar with Indicator Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: Colors.blue,
                      tabs: [
                        Tab(text: 'Tab A'),
                        Tab(text: 'Tab B'),
                        Tab(text: 'Tab C'),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                      child: TabBarView(
                        children: [
                          Center(child: Text('Content A')),
                          Center(child: Text('Content B')),
                          Center(child: Text('Content C')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("TabBar with Indicator Weight", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                      indicatorWeight: 4.0,
                      tabs: [
                        Tab(text: 'Tab X'),
                        Tab(text: 'Tab Y'),
                        Tab(text: 'Tab Z'),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                      child: TabBarView(
                        children: [
                          Center(child: Text('Content X')),
                          Center(child: Text('Content Y')),
                          Center(child: Text('Content Z')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("TabBar with Label and Unselected Label Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Colors.green,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(text: 'Tab 1'),
                        Tab(text: 'Tab 2'),
                        Tab(text: 'Tab 3'),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                      child: TabBarView(
                        children: [
                          Center(child: Text('Content 1')),
                          Center(child: Text('Content 2')),
                          Center(child: Text('Content 3')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("TabBar with Indicator Size Label", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: [
                        Tab(text: 'Tab A'),
                        Tab(text: 'Tab B'),
                        Tab(text: 'Tab C'),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                      child: TabBarView(
                        children: [
                          Center(child: Text('Content A')),
                          Center(child: Text('Content B')),
                          Center(child: Text('Content C')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("TabBar with Indicator Padding", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                      indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                      tabs: [
                        Tab(text: 'Tab X'),
                        Tab(text: 'Tab Y'),
                        Tab(text: 'Tab Z'),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                      child: TabBarView(
                        children: [
                          Center(child: Text('Content X')),
                          Center(child: Text('Content Y')),
                          Center(child: Text('Content Z')),
                        ],
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
