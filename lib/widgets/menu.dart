import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Menu - Basic", style: TextStyle(fontWeight: FontWeight.bold)),
              PopupMenuButton<String>(
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'Option 1',
                    child: Text('Option 1'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Option 2',
                    child: Text('Option 2'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Option 3',
                    child: Text('Option 3'),
                  ),
                ],
                onSelected: (String result) {
                  // Handle selection
                },
                child: Text("Show Menu"),
              ),
              SizedBox(height: 20),
              Text("Menu - With Icon", style: TextStyle(fontWeight: FontWeight.bold)),
              PopupMenuButton<String>(
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'Option 1',
                    child: ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Option 1'),
                    ),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Option 2',
                    child: ListTile(
                      leading: Icon(Icons.info),
                      title: Text('Option 2'),
                    ),
                  ),
                ],
                onSelected: (String result) {
                  // Handle selection
                },
                child: Icon(Icons.menu),
              ),
              SizedBox(height: 20),
              Text("Menu - Custom Styling", style: TextStyle(fontWeight: FontWeight.bold)),
              PopupMenuButton<String>(
                color: Colors.grey[200],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: 'Option 1',
                    child: Text('Option 1', style: TextStyle(color: Colors.blue)),
                  ),
                  PopupMenuItem<String>(
                    value: 'Option 2',
                    child: Text('Option 2', style: TextStyle(color: Colors.red)),
                  ),
                ],
                onSelected: (String result) {
                  // Handle selection
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text("Custom Menu", style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 20),
              Text("Menu - With Disabled Item", style: TextStyle(fontWeight: FontWeight.bold)),
              PopupMenuButton<String>(
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'Option 1',
                    child: Text('Option 1'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Option 2',
                    enabled: false,
                    child: Text('Option 2 (Disabled)'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Option 3',
                    child: Text('Option 3'),
                  ),
                ],
                onSelected: (String result) {
                  // Handle selection
                },
                child: Text("Show Menu"),
              ),
              SizedBox(height: 20),
              Text("Menu - With Initial Value", style: TextStyle(fontWeight: FontWeight.bold)),
              PopupMenuButton<String>(
                initialValue: 'Option 2',
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'Option 1',
                    child: Text('Option 1'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Option 2',
                    child: Text('Option 2'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Option 3',
                    child: Text('Option 3'),
                  ),
                ],
                onSelected: (String result) {
                  // Handle selection
                },
                child: Text("Show Menu"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
