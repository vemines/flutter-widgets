import 'package:flutter/material.dart';

class MaterialBannerScreen extends StatelessWidget {
  const MaterialBannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MaterialBanner Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("MaterialBanner Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                children: [
                  _buildBanner(
                    "Default Banner",
                    MaterialBanner(
                      content: Text('This is a default material banner.'),
                      actions: [
                        TextButton(onPressed: () {}, child: Text('Dismiss')),
                      ],
                    ),
                  ),
                  _buildBanner(
                    "Colored Banner",
                    MaterialBanner(
                      backgroundColor: Colors.blue[100],
                      content: Text('This banner has a blue background.', style: TextStyle(color: Colors.black)),
                      actions: [
                        TextButton(onPressed: () {}, child: Text('Dismiss', style: TextStyle(color: Colors.black))),
                      ],
                    ),
                  ),
                  _buildBanner(
                    "Elevated Banner",
                    MaterialBanner(
                      elevation: 4.0,
                      content: Text('This banner has elevation.'),
                      actions: [
                        TextButton(onPressed: () {}, child: Text('Dismiss')),
                      ],
                    ),
                  ),
                  _buildBanner(
                    "Multiline Content Banner",
                    MaterialBanner(
                      content: Text('This is a material banner with a very long content that should wrap to multiple lines. This is a test to see how it behaves with long text.'),
                      actions: [
                        TextButton(onPressed: () {}, child: Text('Dismiss')),
                      ],
                    ),
                  ),
                  _buildBanner(
                    "Custom Text Style Banner",
                    MaterialBanner(
                      content: Text('Custom text style', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red)),
                      actions: [
                        TextButton(onPressed: () {}, child: Text('Dismiss')),
                      ],
                    ),
                  ),
                  _buildBanner(
                    "Banner with Icon",
                    MaterialBanner(
                      leading: Icon(Icons.info, color: Colors.green),
                      content: Text('This banner has an icon.'),
                      actions: [
                        TextButton(onPressed: () {}, child: Text('Dismiss')),
                      ],
                    ),
                  ),
                  _buildBanner(
                    "Banner with Custom Action Text Style",
                    MaterialBanner(
                      content: Text('Custom action text style'),
                      actions: [
                        TextButton(onPressed: () {}, child: Text('Dismiss', style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold))),
                      ],
                    ),
                  ),
                  _buildBanner(
                    "Banner with Multiple Actions",
                    MaterialBanner(
                      content: Text('This banner has multiple actions.'),
                      actions: [
                        TextButton(onPressed: () {}, child: Text('Action 1')),
                        TextButton(onPressed: () {}, child: Text('Action 2')),
                      ],
                    ),
                  ),
                  _buildBanner(
                    "Banner with long action text",
                    MaterialBanner(
                      content: Text('This banner has a long action text.'),
                      actions: [
                        TextButton(onPressed: () {}, child: Text('Dismiss this very very long action')),
                      ],
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

  Widget _buildBanner(String title, MaterialBanner banner) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tooltip(message: title, child: Text(title, style: TextStyle(fontWeight: FontWeight.bold))),
        SizedBox(height: 8),
        banner,
      ],
    );
  }
}
