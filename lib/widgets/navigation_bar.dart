import 'package:flutter/material.dart';

class NavigationBarScreen extends StatelessWidget {
  const NavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NavigationBar Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("NavigationBar Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildNavigationBarVariation(
                    label: "Default NavigationBar",
                    child: NavigationBar(
                      destinations: [
                        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                        NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
                        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
                      ],
                    ),
                  ),
                  _buildNavigationBarVariation(
                    label: "NavigationBar - Selected Item Color",
                    child: NavigationBar(
                      indicatorColor: Colors.blue.shade100,
                      selectedIndex: 1,
                      destinations: [
                        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                        NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
                        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
                      ],
                    ),
                  ),
                  _buildNavigationBarVariation(
                    label: "NavigationBar - Background Color",
                    child: NavigationBar(
                      backgroundColor: Colors.grey.shade200,
                      destinations: [
                        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                        NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
                        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
                      ],
                    ),
                  ),
                  _buildNavigationBarVariation(
                    label: "NavigationBar - Label Behavior",
                    child: NavigationBar(
                      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
                      destinations: [
                        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                        NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
                        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
                      ],
                    ),
                  ),
                  _buildNavigationBarVariation(
                    label: "NavigationBar - Icon Size",
                    child: NavigationBar(
                      destinations: [
                        NavigationDestination(icon: Icon(Icons.home, size: 30), label: 'Home'),
                        NavigationDestination(icon: Icon(Icons.search, size: 30), label: 'Search'),
                        NavigationDestination(icon: Icon(Icons.person, size: 30), label: 'Profile'),
                      ],
                    ),
                  ),
                  _buildNavigationBarVariation(
                    label: "NavigationBar - Elevation",
                    child: NavigationBar(
                      elevation: 10,
                      destinations: [
                        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                        NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
                        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
                      ],
                    ),
                  ),
                  _buildNavigationBarVariation(
                    label: "NavigationBar - Height",
                    child: NavigationBar(
                      height: 80,
                      destinations: [
                        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                        NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
                        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavigationBarVariation({required String label, required Widget child}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(message: label, child: Text(label, style: TextStyle(fontWeight: FontWeight.bold))),
        SizedBox(height: 8),
        child,
      ],
    );
  }
}
