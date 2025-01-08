import 'package:flutter/material.dart';

class OutlinedButtonIconScreen extends StatelessWidget {
  const OutlinedButtonIconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OutlinedButtonIcon Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("OutlinedButton.icon Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  Tooltip(
                    message: "OutlinedButton.icon - Default",
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.add),
                      label: Text("Add"),
                    ),
                  ),
                  Tooltip(
                    message: "OutlinedButton.icon - Primary Color",
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.edit, color: Colors.blue),
                      label: Text("Edit", style: TextStyle(color: Colors.blue)),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.blue,
                        side: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "OutlinedButton.icon - Custom Border",
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.delete, color: Colors.red),
                      label: Text("Delete", style: TextStyle(color: Colors.red)),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.red, width: 2),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "OutlinedButton.icon - Large Padding",
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.settings),
                      label: Text("Settings"),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "OutlinedButton.icon - Different Icon Size",
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.star, size: 30),
                      label: Text("Star"),
                    ),
                  ),
                  Tooltip(
                    message: "OutlinedButton.icon - Text Style",
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.info),
                      label: Text("Info", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Tooltip(
                    message: "OutlinedButton.icon - Disabled",
                    child: OutlinedButton.icon(
                      onPressed: null,
                      icon: Icon(Icons.block),
                      label: Text("Disabled"),
                    ),
                  ),
                  Tooltip(
                    message: "OutlinedButton.icon - Minimum Size",
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.minimize),
                      label: Text("Min"),
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(50, 30),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "OutlinedButton.icon - Fixed Size",
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.zoom_in),
                      label: Text("Zoom"),
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(100, 40),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "OutlinedButton.icon - Icon and Text Color",
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.color_lens, color: Colors.purple),
                      label: Text("Color", style: TextStyle(color: Colors.purple)),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.purple,
                        side: BorderSide(color: Colors.purple),
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
}
