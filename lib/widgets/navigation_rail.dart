import 'package:flutter/material.dart';

class NavigationRailScreen extends StatelessWidget {
  const NavigationRailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NavigationRail Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("NavigationRail Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildNavigationRailVariation(
                    label: "Default NavigationRail",
                    child: NavigationRail(
                      destinations: [
                        NavigationRailDestination(icon: Icon(Icons.home), label: Text("Home")),
                        NavigationRailDestination(icon: Icon(Icons.search), label: Text("Search")),
                        NavigationRailDestination(icon: Icon(Icons.settings), label: Text("Settings")),
                      ],
                      selectedIndex: 0,
                      onDestinationSelected: (index) {},
                    ),
                  ),
                  _buildNavigationRailVariation(
                    label: "NavigationRail - Selected Color",
                    child: NavigationRail(
                      destinations: [
                        NavigationRailDestination(icon: Icon(Icons.home), label: Text("Home")),
                        NavigationRailDestination(icon: Icon(Icons.search), label: Text("Search")),
                        NavigationRailDestination(icon: Icon(Icons.settings), label: Text("Settings")),
                      ],
                      selectedIndex: 1,
                      onDestinationSelected: (index) {},
                      selectedIconTheme: IconThemeData(color: Colors.blue),
                      selectedLabelTextStyle: TextStyle(color: Colors.blue),
                    ),
                  ),
                  _buildNavigationRailVariation(
                    label: "NavigationRail - Background Color",
                    child: NavigationRail(
                      destinations: [
                        NavigationRailDestination(icon: Icon(Icons.home), label: Text("Home")),
                        NavigationRailDestination(icon: Icon(Icons.search), label: Text("Search")),
                        NavigationRailDestination(icon: Icon(Icons.settings), label: Text("Settings")),
                      ],
                      selectedIndex: 2,
                      onDestinationSelected: (index) {},
                      backgroundColor: Colors.grey[200],
                    ),
                  ),
                  _buildNavigationRailVariation(
                    label: "NavigationRail - Extended",
                    child: NavigationRail(
                      extended: true,
                      destinations: [
                        NavigationRailDestination(icon: Icon(Icons.home), label: Text("Home")),
                        NavigationRailDestination(icon: Icon(Icons.search), label: Text("Search")),
                        NavigationRailDestination(icon: Icon(Icons.settings), label: Text("Settings")),
                      ],
                      selectedIndex: 0,
                      onDestinationSelected: (index) {},
                    ),
                  ),
                  _buildNavigationRailVariation(
                    label: "NavigationRail - Minimal",
                    child: NavigationRail(
                      minWidth: 56,
                      minExtendedWidth: 150,
                      destinations: [
                        NavigationRailDestination(icon: Icon(Icons.home), label: Text("Home")),
                        NavigationRailDestination(icon: Icon(Icons.search), label: Text("Search")),
                        NavigationRailDestination(icon: Icon(Icons.settings), label: Text("Settings")),
                      ],
                      selectedIndex: 0,
                      onDestinationSelected: (index) {},
                    ),
                  ),
                  _buildNavigationRailVariation(
                    label: "NavigationRail - Group Alignment",
                    child: NavigationRail(
                      groupAlignment: -0.5,
                      destinations: [
                        NavigationRailDestination(icon: Icon(Icons.home), label: Text("Home")),
                        NavigationRailDestination(icon: Icon(Icons.search), label: Text("Search")),
                        NavigationRailDestination(icon: Icon(Icons.settings), label: Text("Settings")),
                      ],
                      selectedIndex: 0,
                      onDestinationSelected: (index) {},
                    ),
                  ),
                  _buildNavigationRailVariation(
                    label: "NavigationRail - Label Type Selected",
                    child: NavigationRail(
                      labelType: NavigationRailLabelType.selected,
                      destinations: [
                        NavigationRailDestination(icon: Icon(Icons.home), label: Text("Home")),
                        NavigationRailDestination(icon: Icon(Icons.search), label: Text("Search")),
                        NavigationRailDestination(icon: Icon(Icons.settings), label: Text("Settings")),
                      ],
                      selectedIndex: 0,
                      onDestinationSelected: (index) {},
                    ),
                  ),
                  _buildNavigationRailVariation(
                    label: "NavigationRail - Label Type All",
                    child: NavigationRail(
                      labelType: NavigationRailLabelType.all,
                      destinations: [
                        NavigationRailDestination(icon: Icon(Icons.home), label: Text("Home")),
                        NavigationRailDestination(icon: Icon(Icons.search), label: Text("Search")),
                        NavigationRailDestination(icon: Icon(Icons.settings), label: Text("Settings")),
                      ],
                      selectedIndex: 0,
                      onDestinationSelected: (index) {},
                    ),
                  ),
                  _buildNavigationRailVariation(
                    label: "NavigationRail - Label Type None",
                    child: NavigationRail(
                      labelType: NavigationRailLabelType.none,
                      destinations: [
                        NavigationRailDestination(icon: Icon(Icons.home), label: Text("Home")),
                        NavigationRailDestination(icon: Icon(Icons.search), label: Text("Search")),
                        NavigationRailDestination(icon: Icon(Icons.settings), label: Text("Settings")),
                      ],
                      selectedIndex: 0,
                      onDestinationSelected: (index) {},
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

  Widget _buildNavigationRailVariation({required String label, required Widget child}) {
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
