import 'package:flutter/material.dart';

class ListTileScreen extends StatelessWidget {
  const ListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListTile Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ListTile Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("Default ListTile"),
              ListTile(
                title: const Text('Default Title'),
                subtitle: const Text('Default Subtitle'),
                leading: const Icon(Icons.star),
                trailing: const Icon(Icons.arrow_forward),
              ),
              const SizedBox(height: 20),
              const Text("ListTile - Colored Background"),
              ListTile(
                tileColor: Colors.blue[100],
                title: const Text('Colored Title'),
                subtitle: const Text('Colored Subtitle'),
                leading: const Icon(Icons.favorite, color: Colors.red),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              const SizedBox(height: 20),
              const Text("ListTile - Dense and Compact"),
              ListTile(
                dense: true,
                visualDensity: VisualDensity.compact,
                title: const Text('Dense Title'),
                subtitle: const Text('Dense Subtitle'),
                leading: const Icon(Icons.check_box),
                trailing: const Icon(Icons.more_vert),
              ),
              const SizedBox(height: 20),
              const Text("ListTile - Custom Padding"),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                title: const Text('Padded Title'),
                subtitle: const Text('Padded Subtitle'),
                leading: const Icon(Icons.account_circle),
                trailing: const Icon(Icons.settings),
              ),
              const SizedBox(height: 20),
              const Text("ListTile - Selected"),
              ListTile(
                selected: true,
                selectedTileColor: Colors.green[100],
                title: const Text('Selected Title'),
                subtitle: const Text('Selected Subtitle'),
                leading: const Icon(Icons.radio_button_checked),
                trailing: const Icon(Icons.info),
              ),
              const SizedBox(height: 20),
              const Text("ListTile - Disabled"),
              ListTile(
                enabled: false,
                title: const Text('Disabled Title'),
                subtitle: const Text('Disabled Subtitle'),
                leading: const Icon(Icons.block),
                trailing: const Icon(Icons.close),
              ),
              const SizedBox(height: 20),
              const Text("ListTile - With Custom Text Styles"),
              ListTile(
                title: const Text('Styled Title',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                subtitle: const Text('Styled Subtitle',
                    style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey)),
                leading: const Icon(Icons.text_fields),
                trailing: const Icon(Icons.edit),
              ),
              const SizedBox(height: 20),
              const Text("ListTile - With Custom Shape"),
              ListTile(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                title: const Text('Shaped Title'),
                subtitle: const Text('Shaped Subtitle'),
                leading: const Icon(Icons.crop_square),
                trailing: const Icon(Icons.aspect_ratio),
              ),
              const SizedBox(height: 20),
              const Text("ListTile - With Min Leading Width"),
              ListTile(
                minLeadingWidth: 60,
                title: const Text('Min Leading Width Title'),
                subtitle: const Text('Min Leading Width Subtitle'),
                leading: const Icon(Icons.format_align_left),
                trailing: const Icon(Icons.format_align_right),
              ),
              const SizedBox(height: 20),
              const Text("ListTile - With Min Vertical Padding"),
              ListTile(
                minVerticalPadding: 20,
                title: const Text('Min Vertical Padding Title'),
                subtitle: const Text('Min Vertical Padding Subtitle'),
                leading: const Icon(Icons.vertical_align_bottom),
                trailing: const Icon(Icons.vertical_align_top),
              ),
              const SizedBox(height: 20),
              const Text("Default ListTile.divideTiles",
                  style: TextStyle(fontWeight: FontWeight.bold)),
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
