import 'package:flutter/material.dart';

class ActionChipScreen extends StatelessWidget {
  const ActionChipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ActionChip Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ActionChip Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Tooltip(
                    message: "ActionChip - Default",
                    child: ActionChip(
                      label: Text('Default'),
                      onPressed: () {},
                    ),
                  ),
                  Tooltip(
                    message: "ActionChip - Primary Color",
                    child: ActionChip(
                      label: Text('Primary Color'),
                      onPressed: () {},
                      backgroundColor: Theme.of(context).primaryColor,
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                  Tooltip(
                    message: "ActionChip - Disabled",
                    child: ActionChip(
                      label: Text('Disabled'),
                      onPressed: null,
                    ),
                  ),
                  Tooltip(
                    message: "ActionChip - Custom Border",
                    child: ActionChip(
                      label: Text('Custom Border'),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.blue, width: 2),
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "ActionChip - Custom Padding",
                    child: ActionChip(
                      label: Text('Custom Padding'),
                      onPressed: () {},
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                  ),
                  Tooltip(
                    message: "ActionChip - Icon",
                    child: ActionChip(
                      label: Text('Icon'),
                      onPressed: () {},
                      avatar: Icon(Icons.star, color: Colors.yellow),
                    ),
                  ),
                  Tooltip(
                    message: "ActionChip - Custom Text Style",
                    child: ActionChip(
                      label: Text('Custom Text'),
                      onPressed: () {},
                      labelStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                  ),
                  Tooltip(
                    message: "ActionChip - Elevated",
                    child: ActionChip(
                      label: Text('Elevated'),
                      onPressed: () {},
                      elevation: 5,
                    ),
                  ),
                  Tooltip(
                    message: "ActionChip - With Avatar and Delete Icon",
                    child: ActionChip(
                      label: Text('Avatar & Delete'),
                      onPressed: () {},
                      avatar: CircleAvatar(child: Text("A")),
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
