import 'package:flutter/material.dart';

class TabControllerScreen extends StatelessWidget {
  const TabControllerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabController Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Default TabController", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              _buildDefaultTabController(),
              SizedBox(height: 20),
              Text("TabController with Custom Colors", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              _buildCustomColorTabController(),
              SizedBox(height: 20),
              Text("TabController with Different TabBar Styles", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              _buildDifferentTabBarStyles(),
              SizedBox(height: 20),
              Text("TabController with Custom TabBar Indicator", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              _buildCustomTabBarIndicator(),
              SizedBox(height: 20),
              Text("TabController with Different TabBar Alignment", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              _buildTabBarAlignment(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDefaultTabController() {
    return DefaultTabController(
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
            height: 200,
            child: TabBarView(
              children: [
                Center(child: Text('Content for Tab 1')),
                Center(child: Text('Content for Tab 2')),
                Center(child: Text('Content for Tab 3')),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCustomColorTabController() {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey[300],
            indicator: BoxDecoration(
              color: Colors.blue,
            ),
            tabs: [
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
              Tab(text: 'Tab 3'),
            ],
          ),
          SizedBox(
            height: 200,
            child: TabBarView(
              children: [
                Center(child: Text('Content for Tab 1')),
                Center(child: Text('Content for Tab 2')),
                Center(child: Text('Content for Tab 3')),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDifferentTabBarStyles() {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            indicator: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.green, width: 3)),
            ),
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.settings)),
              Tab(icon: Icon(Icons.person)),
            ],
          ),
          SizedBox(
            height: 200,
            child: TabBarView(
              children: [
                Center(child: Text('Home Content')),
                Center(child: Text('Settings Content')),
                Center(child: Text('Profile Content')),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCustomTabBarIndicator() {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.red, width: 4),
              insets: EdgeInsets.symmetric(horizontal: 16),
            ),
            tabs: [
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
              Tab(text: 'Tab 3'),
            ],
          ),
          SizedBox(
            height: 200,
            child: TabBarView(
              children: [
                Center(child: Text('Content for Tab 1')),
                Center(child: Text('Content for Tab 2')),
                Center(child: Text('Content for Tab 3')),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabBarAlignment() {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            indicator: BoxDecoration(
              color: Colors.amber,
            ),
            labelPadding: EdgeInsets.symmetric(horizontal: 20),
            tabs: [
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
              Tab(text: 'Tab 3'),
            ],
          ),
          SizedBox(
            height: 200,
            child: TabBarView(
              children: [
                Center(child: Text('Content for Tab 1')),
                Center(child: Text('Content for Tab 2')),
                Center(child: Text('Content for Tab 3')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
