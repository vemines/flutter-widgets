import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  // Reusable spacing constant
  static const _sectionSpacing = SizedBox(height: 20);

  // Reusable function to build a TabBar section
  Widget _buildTabBarSection({
    required String title,
    required TabBar tabBar,
    required List<Widget> tabBarViewChildren,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        DefaultTabController(
          length: tabBar.tabs.length,
          child: Column(
            children: [
              tabBar,
              SizedBox(
                height: 100,
                child: TabBarView(children: tabBarViewChildren),
              ),
            ],
          ),
        ),
        _sectionSpacing,
        const Divider(), // Adds a visual separation
        _sectionSpacing,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TabBar Showcase"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Default TabBar
            _buildTabBarSection(
              title: "Default TabBar",
              tabBar: TabBar(
                tabs: const [
                  Tab(text: 'Tab 1'),
                  Tab(text: 'Tab 2'),
                  Tab(text: 'Tab 3'),
                ],
              ),
              tabBarViewChildren: const [
                Center(child: Text('Content 1')),
                Center(child: Text('Content 2')),
                Center(child: Text('Content 3')),
              ],
            ),

            // TabBar with Indicator Color
            _buildTabBarSection(
              title: "TabBar with Indicator Color",
              tabBar: TabBar(
                indicatorColor: Colors.blue,
                tabs: const [
                  Tab(text: 'Tab A'),
                  Tab(text: 'Tab B'),
                  Tab(text: 'Tab C'),
                ],
              ),
              tabBarViewChildren: const [
                Center(child: Text('Content A')),
                Center(child: Text('Content B')),
                Center(child: Text('Content C')),
              ],
            ),

            // TabBar with Indicator Weight
            _buildTabBarSection(
              title: "TabBar with Indicator Weight",
              tabBar: TabBar(
                indicatorWeight: 10.0,
                tabs: const [
                  Tab(text: 'Tab X'),
                  Tab(text: 'Tab Y'),
                  Tab(text: 'Tab Z'),
                ],
              ),
              tabBarViewChildren: const [
                Center(child: Text('Content X')),
                Center(child: Text('Content Y')),
                Center(child: Text('Content Z')),
              ],
            ),

            // TabBar with Label and Unselected Label Color
            _buildTabBarSection(
                title: "TabBar with Label and Unselected Label Style",
                tabBar: TabBar(
                  labelColor: Colors.green,
                  unselectedLabelColor: Colors.blue,
                  labelStyle:
                      const TextStyle(fontWeight: FontWeight.bold, fontSize: 16), // Style the label
                  unselectedLabelStyle: const TextStyle(fontSize: 14),
                  tabs: const [
                    Tab(text: 'First'),
                    Tab(text: 'Second'),
                    Tab(text: 'Third'),
                  ],
                ),
                tabBarViewChildren: const [
                  Center(child: Text('Content of First')),
                  Center(child: Text('Content of Second')),
                  Center(child: Text('Content of Third')),
                ]),

            // TabBar with Indicator Size Label
            _buildTabBarSection(
              title: "TabBar with Indicator Size Tab",
              tabBar: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: const [
                  Tab(text: 'Tab A'),
                  Tab(text: 'Tab B'),
                  Tab(text: 'Tab C'),
                ],
              ),
              tabBarViewChildren: const [
                Center(child: Text('Content A')),
                Center(child: Text('Content B')),
                Center(child: Text('Content C')),
              ],
            ),

            // TabBar with Indicator Padding
            _buildTabBarSection(
              title: "TabBar with Indicator Padding",
              tabBar: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 40), // Reduced padding
                tabs: const [
                  Tab(text: 'Tab X'),
                  Tab(text: 'Tab Y'),
                  Tab(text: 'Tab Z'),
                ],
              ),
              tabBarViewChildren: const [
                Center(child: Text('Content X')),
                Center(child: Text('Content Y')),
                Center(child: Text('Content Z')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
