import 'package:flutter/material.dart';

class TextButtonScreen extends StatelessWidget {
  const TextButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          width: widthScreen,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("TextButton - Default"),
              TextButton(
                onPressed: () {},
                child: const Text("Default Button"),
              ),
              const SizedBox(height: 20),
              const Text("TextButton - Blue Background"),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: const Text("Blue Button", style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 20),
              const Text("TextButton - Large Padding"),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                ),
                child: const Text("Large Padding Button"),
              ),
              const SizedBox(height: 20),
              const Text("TextButton - Rounded Corners"),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Text("Less Rounded Button"),
              ),
              const SizedBox(height: 20),
              const Text(
                  "TextButton - Block 1. width: infinity (Make sure parrent widget have constraint)"),
              TextButton(
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
              const Text("TextButton - Block 2 minimumSize = widthScreen"),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(minimumSize: Size(widthScreen - 32, 50)),
                child: const Text(
                  "Full width 1",
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              const Text("TextButton - Custom Text Style"),
              TextButton(
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
              const Text("TextButton - Minimum Size"),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  minimumSize: const Size(200, 50),
                ),
                child: const Text("Minimum Size Button"),
              ),
              const SizedBox(height: 20),
              const Text("TextButton - Disabled"),
              TextButton(
                onPressed: null,
                child: const Text("onPressed null Button"),
              ),
              const SizedBox(height: 20),
              const Text("TextButton - With Shadow"),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  elevation: 10,
                ),
                child: const Text("Shadow Button"),
              ),
              const SizedBox(height: 20),
              _buildTextButtonIcon(
                "Default",
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text("TextButton.icon"),
                ),
              ),
              _buildTextButtonIcon(
                "Blue Background",
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.favorite, color: Colors.white),
                  label: Text("Like", style: TextStyle(color: Colors.white)),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                ),
              ),
              _buildTextButtonIcon(
                "Less Rounded",
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.settings),
                  label: Text("Settings"),
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              _buildTextButtonIcon(
                "Large Padding",
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart),
                  label: Text("Cart"),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  ),
                ),
              ),
              _buildTextButtonIcon(
                "Text Style",
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.info),
                  label: Text("Info",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                  ),
                ),
              ),
              _buildTextButtonIcon(
                "Custom Icon Color",
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.star, color: Colors.yellow),
                  label: Text("Rate"),
                ),
              ),
              _buildTextButtonIcon(
                "Minimum Size",
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.check),
                  label: Text("Check"),
                  style: TextButton.styleFrom(
                    minimumSize: Size(150, 50),
                  ),
                ),
              ),
              _buildTextButtonIcon(
                "Disabled Button",
                TextButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.block),
                  label: Text("Disabled"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextButtonIcon(String name, Widget widget) {
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
