import 'package:flutter/material.dart';

class RawMaterialButtonScreen extends StatelessWidget {
  const RawMaterialButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RawMaterialButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("RawMaterialButton Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                children: [
                  Column(
                    children: [
                      Tooltip(message: "RawMaterialButton - Default"),
                      RawMaterialButton(
                        onPressed: () {},
                        child: Text('Default'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "RawMaterialButton - Blue Background"),
                      RawMaterialButton(
                        onPressed: () {},
                        fillColor: Colors.blue,
                        child: Text('Blue Background', style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "RawMaterialButton - Red Text"),
                      RawMaterialButton(
                        onPressed: () {},
                        child: Text('Red Text', style: TextStyle(color: Colors.red)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "RawMaterialButton - Large Padding"),
                      RawMaterialButton(
                        onPressed: () {},
                        padding: EdgeInsets.all(20.0),
                        child: Text('Large Padding'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "RawMaterialButton - Rounded Corners"),
                      RawMaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        child: Text('Rounded Corners'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "RawMaterialButton - With Elevation"),
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 5.0,
                        child: Text('Elevation'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "RawMaterialButton - Minimum Size"),
                      RawMaterialButton(
                        onPressed: () {},
                        constraints: BoxConstraints(minWidth: 100.0, minHeight: 40.0),
                        child: Text('Min Size'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "RawMaterialButton - Custom Text Style"),
                      RawMaterialButton(
                        onPressed: () {},
                        child: Text('Custom Style', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "RawMaterialButton - With Icon"),
                      RawMaterialButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star, color: Colors.amber),
                            SizedBox(width: 5),
                            Text('Icon Button'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "RawMaterialButton - With Border"),
                      RawMaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: Colors.black, width: 2.0),
                        ),
                        child: Text('Border'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Tooltip(message: "RawMaterialButton - Disabled"),
                      RawMaterialButton(
                        onPressed: null,
                        child: Text('Disabled'),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("RawMaterialButton as a Wrapper", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              // RawMaterialButton without wrapping another widget is not very useful on its own, it needs a child.
              // RawMaterialButton(onPressed: (){},), // This would cause an error because it needs a child.
              // The following shows it wrapping a simple Container
              RawMaterialButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[200],
                  child: Text("Wrapped Container"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
