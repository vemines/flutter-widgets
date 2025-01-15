import 'package:flutter/material.dart';

class OutlinedButtonScreen extends StatelessWidget {
  const OutlinedButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("OutlinedButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          width: widthScreen,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("OutlinedButton - Default"),
              OutlinedButton(
                onPressed: () {},
                child: const Text("Default Button"),
              ),
              const SizedBox(height: 20),
              const Text("OutlinedButton - Blue Background"),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: const Text("Blue Button", style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 20),
              const Text("OutlinedButton - Large Padding"),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                ),
                child: const Text("Large Padding Button"),
              ),
              const SizedBox(height: 20),
              const Text("OutlinedButton - Rounded Corners"),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Text("Less Rounded Button"),
              ),
              const SizedBox(height: 20),
              const Text(
                  "OutlinedButton - Block 1. width: infinity (Make sure parrent widget have constraint)"),
              OutlinedButton(
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
              const Text("OutlinedButton - Block 2 minimumSize = widthScreen"),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(minimumSize: Size(widthScreen - 32, 50)),
                child: const Text(
                  "Full width 1",
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              const Text("OutlinedButton - Custom Text Style"),
              OutlinedButton(
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
              const Text("OutlinedButton - Minimum Size"),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                ),
                child: const Text("Minimum Size Button"),
              ),
              const SizedBox(height: 20),
              const Text("OutlinedButton - Disabled"),
              OutlinedButton(
                onPressed: null,
                child: const Text("onPressed null Button"),
              ),
              const SizedBox(height: 20),
              const Text("OutlinedButton - With Shadow"),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  elevation: 10,
                ),
                child: const Text("Shadow Button"),
              ),
              const SizedBox(height: 20),
              _buildOutlinedButtonIcon(
                "Default",
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text("OutlinedButton.icon"),
                ),
              ),
              _buildOutlinedButtonIcon(
                "Blue Background",
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.favorite, color: Colors.white),
                  label: Text("Like", style: TextStyle(color: Colors.white)),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                ),
              ),
              _buildOutlinedButtonIcon(
                "Less Rounded",
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.settings),
                  label: Text("Settings"),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              _buildOutlinedButtonIcon(
                "Large Padding",
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart),
                  label: Text("Cart"),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  ),
                ),
              ),
              _buildOutlinedButtonIcon(
                "Text Style",
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.info),
                  label: Text("Info",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                  ),
                ),
              ),
              _buildOutlinedButtonIcon(
                "Custom Icon Color",
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.star, color: Colors.yellow),
                  label: Text("Rate"),
                ),
              ),
              _buildOutlinedButtonIcon(
                "Minimum Size",
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.check),
                  label: Text("Check"),
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(150, 50),
                  ),
                ),
              ),
              _buildOutlinedButtonIcon(
                "Disabled Button",
                OutlinedButton.icon(
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

  Widget _buildOutlinedButtonIcon(String name, Widget widget) {
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
