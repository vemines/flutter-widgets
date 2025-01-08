import 'package:flutter/material.dart';

class ElevatedButtonIconScreen extends StatelessWidget {
  const ElevatedButtonIconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ElevatedButtonIcon Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ElevatedButton.icon Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildVariation(
                    "Default",
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.add),
                      label: Text("Add"),
                    ),
                  ),
                  _buildVariation(
                    "Blue Background",
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.favorite, color: Colors.white),
                      label: Text("Like", style: TextStyle(color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ),
                  _buildVariation(
                    "Rounded Corners",
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.settings),
                      label: Text("Settings"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  _buildVariation(
                    "Large Padding",
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_cart),
                      label: Text("Cart"),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      ),
                    ),
                  ),
                  _buildVariation(
                    "Text Style",
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.info, color: Colors.black),
                      label: Text("Info", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                      ),
                    ),
                  ),
                  _buildVariation(
                    "Custom Icon Color",
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.star, color: Colors.yellow),
                      label: Text("Rate"),
                    ),
                  ),
                  _buildVariation(
                    "Minimum Size",
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.check),
                      label: Text("Check"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                      ),
                    ),
                  ),
                  _buildVariation(
                    "Disabled Button",
                    ElevatedButton.icon(
                      onPressed: null,
                      icon: Icon(Icons.block),
                      label: Text("Disabled"),
                    ),
                  ),
                  _buildVariation(
                    "Custom Elevation",
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.cloud),
                      label: Text("Cloud"),
                      style: ElevatedButton.styleFrom(
                        elevation: 10,
                      ),
                    ),
                  ),
                  _buildVariation(
                    "Custom Shadow Color",
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.brightness_4),
                      label: Text("Dark Mode"),
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.purple,
                        elevation: 5,
                      ),
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

  Widget _buildVariation(String name, Widget widget) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(message: name, child: widget),
        SizedBox(height: 5),
        Text(name, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
