import 'package:flutter/material.dart';

class ExpansionPanelScreen extends StatelessWidget {
  const ExpansionPanelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionPanel Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ExpansionPanel - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              ExpansionPanelList(
                children: [
                  ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text('Item 1'),
                      );
                    },
                    body: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text('This is the content of item 1.'),
                    ),
                    isExpanded: false,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("ExpansionPanel - Expanded", style: TextStyle(fontWeight: FontWeight.bold)),
              ExpansionPanelList(
                children: [
                  ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text('Item 2'),
                      );
                    },
                    body: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text('This is the content of item 2.'),
                    ),
                    isExpanded: true,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("ExpansionPanel - Custom Colors", style: TextStyle(fontWeight: FontWeight.bold)),
              ExpansionPanelList(
                expansionCallback: (int index, bool isExpanded) {},
                children: [
                  ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Container(
                        color: Colors.blue[100],
                        child: ListTile(
                          title: Text('Item 3', style: TextStyle(color: Colors.black)),
                        ),
                      );
                    },
                    body: Container(
                      color: Colors.blue[50],
                      padding: const EdgeInsets.all(16.0),
                      child: Text('This is the content of item 3.', style: TextStyle(color: Colors.black)),
                    ),
                    isExpanded: false,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("ExpansionPanel - Multiple Items", style: TextStyle(fontWeight: FontWeight.bold)),
              ExpansionPanelList(
                children: [
                  ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text('Item A'),
                      );
                    },
                    body: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text('This is the content of item A.'),
                    ),
                    isExpanded: false,
                  ),
                  ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text('Item B'),
                      );
                    },
                    body: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text('This is the content of item B.'),
                    ),
                    isExpanded: false,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("ExpansionPanel - With Custom Header Widget", style: TextStyle(fontWeight: FontWeight.bold)),
              ExpansionPanelList(
                children: [
                  ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Row(
                        children: [
                          Icon(Icons.info, color: Colors.green),
                          SizedBox(width: 8),
                          Text('Custom Header'),
                        ],
                      );
                    },
                    body: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text('This is the content with a custom header.'),
                    ),
                    isExpanded: false,
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
