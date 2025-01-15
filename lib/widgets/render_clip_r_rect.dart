import 'package:flutter/material.dart';

class RenderClipRRectScreen extends StatelessWidget {
  const RenderClipRRectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RenderClipRRect Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("RenderClipRRect Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildVariation(
                    "ClipRRect",
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  _buildVariation(
                    "ClipRRect with different radius",
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  _buildVariation(
                    "ClipRRect with large radius",
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  _buildVariation(
                    "ClipRRect with custom radius",
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(30),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  _buildVariation(
                    "ClipRRect with image",
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.network(
                        'https://via.placeholder.com/100',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  _buildVariation(
                    "ClipRRect with border",
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ),
                  _buildVariation(
                    "ClipRRect with different size",
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Container(
                        width: 150,
                        height: 75,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                  _buildVariation(
                    "ClipRRect with child padding",
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 80,
                          height: 80,
                          color: Colors.lime,
                        ),
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

  Widget _buildVariation(String name, Widget widget) {
    return Column(
      children: [
        Tooltip(message: name, child: Text(name, style: TextStyle(fontWeight: FontWeight.bold))),
        SizedBox(height: 8),
        widget,
      ],
    );
  }
}
