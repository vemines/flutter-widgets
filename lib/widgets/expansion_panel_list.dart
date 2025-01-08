import 'package:flutter/material.dart';

class ExpansionPanelListScreen extends StatelessWidget {
  const ExpansionPanelListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionPanelList Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ExpansionPanelList Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              _buildExpansionPanelListVariation1(),
              SizedBox(height: 16),
              _buildExpansionPanelListVariation2(),
              SizedBox(height: 16),
              _buildExpansionPanelListVariation3(),
              SizedBox(height: 16),
              _buildExpansionPanelListVariation4(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExpansionPanelListVariation1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("ExpansionPanelList - Basic", style: TextStyle(fontWeight: FontWeight.bold)),
        ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            // Handle expansion callback
          },
          children: [
            ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text('Item 1'),
                );
              },
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Content for Item 1'),
              ),
              isExpanded: false,
            ),
            ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text('Item 2'),
                );
              },
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Content for Item 2'),
              ),
              isExpanded: false,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildExpansionPanelListVariation2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("ExpansionPanelList - With Initial Expansion", style: TextStyle(fontWeight: FontWeight.bold)),
        ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            // Handle expansion callback
          },
          children: [
            ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text('Item 1'),
                );
              },
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Content for Item 1'),
              ),
              isExpanded: true,
            ),
            ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text('Item 2'),
                );
              },
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Content for Item 2'),
              ),
              isExpanded: false,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildExpansionPanelListVariation3() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("ExpansionPanelList - Custom Header and Body", style: TextStyle(fontWeight: FontWeight.bold)),
        ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            // Handle expansion callback
          },
          children: [
            ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[200],
                  child: Text('Custom Header 1', style: TextStyle(fontWeight: FontWeight.bold)),
                );
              },
              body: Container(
                padding: EdgeInsets.all(16),
                color: Colors.grey[100],
                child: Text('Custom Content for Item 1'),
              ),
              isExpanded: false,
            ),
            ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[200],
                  child: Text('Custom Header 2', style: TextStyle(fontWeight: FontWeight.bold)),
                );
              },
              body: Container(
                padding: EdgeInsets.all(16),
                color: Colors.grey[100],
                child: Text('Custom Content for Item 2'),
              ),
              isExpanded: false,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildExpansionPanelListVariation4() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("ExpansionPanelList - With Different Header Widgets", style: TextStyle(fontWeight: FontWeight.bold)),
        ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            // Handle expansion callback
          },
          children: [
            ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return Row(
                  children: [
                    Icon(Icons.info, color: Colors.blue),
                    SizedBox(width: 8),
                    Text('Item 1 with Icon'),
                  ],
                );
              },
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Content for Item 1'),
              ),
              isExpanded: false,
            ),
            ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return Row(
                  children: [
                    Icon(Icons.warning, color: Colors.orange),
                    SizedBox(width: 8),
                    Text('Item 2 with Icon'),
                  ],
                );
              },
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Content for Item 2'),
              ),
              isExpanded: false,
            ),
          ],
        ),
      ],
    );
  }
}
