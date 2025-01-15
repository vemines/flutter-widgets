import 'package:flutter/material.dart';

class ElevatedButtonScreen extends StatelessWidget {
  const ElevatedButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("ElevatedButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          width: widthScreen,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ElevatedButton - Default"),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Default Button"),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButton - Blue Background"),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: const Text("Blue Button", style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButton - Large Padding"),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                ),
                child: const Text("Large Padding Button"),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButton - Rounded Corners"),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Text("Less Rounded Button"),
              ),
              const SizedBox(height: 20),
              const Text(
                  "ElevatedButton - Block 1. width: infinity (Make sure parrent widget have constraint)"),
              ElevatedButton(
                onPressed: () {},
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: const Text(
                    "Full width 1",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const Text("ElevatedButton - Block 2 minimumSize = widthScreen"),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(minimumSize: Size(widthScreen - 32, 50)),
                child: const Text(
                  "Full width 1",
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButton - Custom Text Style"),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Custom Style",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButton - Minimum Size"),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                ),
                child: const Text("Minimum Size Button"),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButton - Disabled"),
              ElevatedButton(
                onPressed: null,
                child: const Text("Disabled Button"),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButton - With Shadow"),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                ),
                child: const Text("Shadow Button"),
              ),
              const SizedBox(height: 20),
              _buildElevatedButtonIcon(
                "Default",
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text("ElevatedButton.icon"),
                ),
              ),
              _buildElevatedButtonIcon(
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
              _buildElevatedButtonIcon(
                "Less Rounded",
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.settings),
                  label: Text("Settings"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              _buildElevatedButtonIcon(
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
              _buildElevatedButtonIcon(
                "Text Style",
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.info),
                  label: Text("Info",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                  ),
                ),
              ),
              _buildElevatedButtonIcon(
                "Custom Icon Color",
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.star, color: Colors.yellow),
                  label: Text("Rate"),
                ),
              ),
              _buildElevatedButtonIcon(
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
              _buildElevatedButtonIcon(
                "Disabled Button",
                ElevatedButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.block),
                  label: Text("Disabled"),
                ),
              ),
              _buildElevatedButtonIcon(
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
              _buildElevatedButtonIcon(
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
        ),
      ),
    );
  }

  Widget _buildElevatedButtonIcon(String name, Widget widget) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(message: name, child: widget),
        SizedBox(height: 5),
        Text(name, style: TextStyle(fontSize: 12)),
        SizedBox(height: 10),
      ],
    );
  }
}
