import 'package:flutter/material.dart';

class NavigationDrawerDestinationScreen extends StatelessWidget {
  const NavigationDrawerDestinationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NavigationDrawerDestination Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("NavigationDrawerDestination Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildVariation(
                    "Default",
                    const NavigationDrawerDestination(
                      icon: Icon(Icons.home),
                      label: Text('Home'),
                    ),
                  ),
                  _buildVariation(
                    "Selected",
                    const NavigationDrawerDestination(
                      icon: Icon(Icons.settings),
                      label: Text('Settings'),
                      selectedIcon: Icon(Icons.settings_outlined),
                    ),
                  ),
                  _buildVariation(
                    "Custom Label Style",
                    const NavigationDrawerDestination(
                      icon: Icon(Icons.person),
                      label: Text('Profile', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  _buildVariation(
                    "Custom Icon Color",
                    const NavigationDrawerDestination(
                      icon: Icon(Icons.email, color: Colors.red),
                      label: Text('Email'),
                    ),
                  ),
                  _buildVariation(
                    "Custom Icon and Label",
                    const NavigationDrawerDestination(
                      icon: Icon(Icons.favorite, size: 30),
                      label: Text('Favorites', style: TextStyle(fontSize: 16)),
                    ),
                  ),
                  _buildVariation(
                    "Custom Icon and Label with Selected Icon",
                    const NavigationDrawerDestination(
                      icon: Icon(Icons.star_border, size: 30),
                      label: Text('Starred', style: TextStyle(fontSize: 16)),
                      selectedIcon: Icon(Icons.star, size: 30),
                    ),
                  ),
                  _buildVariation(
                    "Custom Icon and Label with Selected Icon and Custom Label Style",
                    const NavigationDrawerDestination(
                      icon: Icon(Icons.notifications_none, size: 30),
                      label: Text('Notifications', style: TextStyle(fontSize: 16, color: Colors.green)),
                      selectedIcon: Icon(Icons.notifications, size: 30),
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

  Widget _buildVariation(String name, NavigationDrawerDestination destination) {
    return Column(
      children: [
        Tooltip(message: name, child: destination),
        Text(name, style: const TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }
}
