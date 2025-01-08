import 'package:flutter/material.dart';

class GridTileBarScreen extends StatelessWidget {
  const GridTileBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridTileBar Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("GridTileBar Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildGridTileBarVariation(
                    title: "Default GridTileBar",
                    description: "Default appearance",
                    child: GridTileBar(
                      title: Text("Title"),
                    ),
                  ),
                  _buildGridTileBarVariation(
                    title: "GridTileBar - Custom Background Color",
                    description: "Background color set to light blue",
                    child: GridTileBar(
                      backgroundColor: Colors.lightBlue,
                      title: Text("Title", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  _buildGridTileBarVariation(
                    title: "GridTileBar - Custom Text Style",
                    description: "Title text with bold font",
                    child: GridTileBar(
                      title: Text("Title", style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  _buildGridTileBarVariation(
                    title: "GridTileBar - Leading Icon",
                    description: "With a leading icon",
                    child: GridTileBar(
                      leading: Icon(Icons.star, color: Colors.yellow),
                      title: Text("Title"),
                    ),
                  ),
                  _buildGridTileBarVariation(
                    title: "GridTileBar - Trailing Icon",
                    description: "With a trailing icon",
                    child: GridTileBar(
                      title: Text("Title"),
                      trailing: Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                  ),
                  _buildGridTileBarVariation(
                    title: "GridTileBar - Custom Icon Color",
                    description: "Leading icon with custom color",
                    child: GridTileBar(
                      leading: Icon(Icons.favorite, color: Colors.red),
                      title: Text("Title"),
                    ),
                  ),
                  _buildGridTileBarVariation(
                    title: "GridTileBar - Subtitle",
                    description: "With a subtitle",
                    child: GridTileBar(
                      title: Text("Title"),
                      subtitle: Text("Subtitle"),
                    ),
                  ),
                  _buildGridTileBarVariation(
                    title: "GridTileBar - Custom Subtitle Style",
                    description: "Subtitle with italic font",
                    child: GridTileBar(
                      title: Text("Title"),
                      subtitle: Text("Subtitle", style: TextStyle(fontStyle: FontStyle.italic)),
                    ),
                  ),
                  _buildGridTileBarVariation(
                    title: "GridTileBar - Custom Everything",
                    description: "Custom background, text, and icons",
                    child: GridTileBar(
                      backgroundColor: Colors.purple,
                      leading: Icon(Icons.check_circle, color: Colors.green),
                      title: Text("Custom Title", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      subtitle: Text("Custom Subtitle", style: TextStyle(color: Colors.white70)),
                      trailing: Icon(Icons.more_vert, color: Colors.white),
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

  Widget _buildGridTileBarVariation({required String title, required String description, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tooltip(message: description, child: Text(title, style: TextStyle(fontWeight: FontWeight.bold))),
        SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: child,
        ),
      ],
    );
  }
}
