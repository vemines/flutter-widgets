import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPickerScreen extends StatelessWidget {
  const CupertinoPickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CupertinoPicker Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("CupertinoPicker - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: CupertinoPicker(
                  itemExtent: 32,
                  onSelectedItemChanged: (int index) {},
                  children: List.generate(5, (index) => Center(child: Text('Item $index'))),
                ),
              ),
              SizedBox(height: 20),
              Text("CupertinoPicker - Different Item Extent",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                height: 150,
                child: CupertinoPicker(
                  itemExtent: 50,
                  onSelectedItemChanged: (int index) {},
                  children: List.generate(5, (index) => Center(child: Text('Item $index'))),
                ),
              ),
              SizedBox(height: 20),
              Text("CupertinoPicker - With Background Color",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                height: 100,
                color: Colors.grey[200],
                child: CupertinoPicker(
                  itemExtent: 32,
                  onSelectedItemChanged: (int index) {},
                  children: List.generate(5, (index) => Center(child: Text('Item $index'))),
                ),
              ),
              SizedBox(height: 20),
              Text("CupertinoPicker - With Different Text Style",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: CupertinoPicker(
                  itemExtent: 32,
                  onSelectedItemChanged: (int index) {},
                  children: List.generate(
                      5,
                      (index) => Center(
                          child: Text('Item $index',
                              style: TextStyle(fontSize: 20, color: Colors.blue)))),
                ),
              ),
              SizedBox(height: 20),
              Text("CupertinoPicker - With Initial Item",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: CupertinoPicker(
                  itemExtent: 32,
                  onSelectedItemChanged: (int index) {},
                  scrollController: FixedExtentScrollController(initialItem: 2),
                  children: List.generate(5, (index) => Center(child: Text('Item $index'))),
                ),
              ),
              SizedBox(height: 20),
              Text("CupertinoPicker - Wrapped in SizedBox",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                height: 120,
                width: 200,
                child: CupertinoPicker(
                  itemExtent: 32,
                  onSelectedItemChanged: (int index) {},
                  children: List.generate(5, (index) => Center(child: Text('Item $index'))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
