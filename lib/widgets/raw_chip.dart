import 'package:flutter/material.dart';

class RawChipScreen extends StatelessWidget {
  const RawChipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RawChip Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Basic RawChip", style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Tooltip(
                    message: "Basic RawChip",
                    child: RawChip(
                      label: Text('Basic'),
                    ),
                  ),
                  Tooltip(
                    message: "RawChip with Avatar",
                    child: RawChip(
                      avatar: CircleAvatar(child: Text('A')),
                      label: Text('Avatar'),
                    ),
                  ),
                  Tooltip(
                    message: "RawChip with Delete Icon",
                    child: RawChip(
                      label: Text('Delete'),
                      onDeleted: () {},
                      deleteIcon: Icon(Icons.cancel),
                    ),
                  ),
                  Tooltip(
                    message: "RawChip with Selected",
                    child: RawChip(
                      label: Text('Selected'),
                      selected: true,
                    ),
                  ),
                  Tooltip(
                    message: "RawChip with Disabled",
                    child: RawChip(
                      label: Text('Disabled'),
                      isEnabled: false,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Styled RawChip", style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Tooltip(
                    message: "RawChip - Blue Background",
                    child: RawChip(
                      label: Text('Blue BG', style: TextStyle(color: Colors.white)),
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  Tooltip(
                    message: "RawChip - Red Text",
                    child: RawChip(
                      label: Text('Red Text', style: TextStyle(color: Colors.red)),
                    ),
                  ),
                  Tooltip(
                    message: "RawChip - Custom Shape",
                    child: RawChip(
                      label: Text('Rounded'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "RawChip - Custom Padding",
                    child: RawChip(
                      label: Text('Padding'),
                      padding: EdgeInsets.all(10),
                    ),
                  ),
                  Tooltip(
                    message: "RawChip - Custom Elevation",
                    child: RawChip(
                      label: Text('Elevation'),
                      elevation: 5,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("RawChip with different states", style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Tooltip(
                    message: "RawChip - Selected with custom color",
                    child: RawChip(
                      label: Text('Selected Custom'),
                      selected: true,
                      selectedColor: Colors.green[200],
                    ),
                  ),
                  Tooltip(
                    message: "RawChip - Disabled with custom color",
                    child: RawChip(
                      label: Text('Disabled Custom'),
                      isEnabled: false,
                      disabledColor: Colors.grey[300],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("RawChip with onSelected", style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Tooltip(
                    message: "RawChip - Selectable",
                    child: RawChip(
                      label: Text('Selectable'),
                      onSelected: (bool value) {
                        print('Selected: $value');
                      },
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
