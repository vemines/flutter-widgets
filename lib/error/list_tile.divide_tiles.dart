import 'package:flutter/material.dart';

class ListTileDivideTilesScreen extends StatelessWidget {
  const ListTileDivideTilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListTile.divideTiles Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ListTile.divideTiles Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("Default ListTile.divideTiles", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildListTileDivideTiles(
                context,
                "Default",
                ListTile.divideTiles(
                  context: context,
                  tiles: [
                    const ListTile(title: Text('Item 1')),
                    const ListTile(title: Text('Item 2')),
                    const ListTile(title: Text('Item 3')),
                  ],
                ).toList(),
              ),
              const SizedBox(height: 20),
              const Text("ListTile.divideTiles with Color",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildListTileDivideTiles(
                context,
                "Color",
                ListTile.divideTiles(
                  context: context,
                  color: Colors.red,
                  tiles: [
                    const ListTile(title: Text('Item 1')),
                    const ListTile(title: Text('Item 2')),
                    const ListTile(title: Text('Item 3')),
                  ],
                ).toList(),
              ),
              const SizedBox(height: 20),
              const Text("ListTile.divideTiles with Thickness",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildListTileDivideTiles(
                context,
                "Thickness",
                ListTile.divideTiles(
                  context: context,
                  thickness: 3.0,
                  tiles: [
                    const ListTile(title: Text('Item 1')),
                    const ListTile(title: Text('Item 2')),
                    const ListTile(title: Text('Item 3')),
                  ],
                ).toList(),
              ),
              const SizedBox(height: 20),
              const Text("ListTile.divideTiles with Space",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildListTileDivideTiles(
                context,
                "Space",
                ListTile.divideTiles(
                  context: context,
                  space: 10.0,
                  tiles: [
                    const ListTile(title: Text('Item 1')),
                    const ListTile(title: Text('Item 2')),
                    const ListTile(title: Text('Item 3')),
                  ],
                ).toList(),
              ),
              const SizedBox(height: 20),
              const Text("ListTile.divideTiles with Custom Divider",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildListTileDivideTiles(
                context,
                "Custom Divider",
                ListTile.divideTiles(
                  context: context,
                  divider: Container(height: 5, color: Colors.green),
                  tiles: [
                    const ListTile(title: Text('Item 1')),
                    const ListTile(title: Text('Item 2')),
                    const ListTile(title: Text('Item 3')),
                  ],
                ).toList(),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListTileDivideTiles(BuildContext context, String label, List<Widget> tiles) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Column(
          children: tiles,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
