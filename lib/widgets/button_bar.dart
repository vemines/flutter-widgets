import 'package:flutter/material.dart';

class ButtonBarScreen extends StatelessWidget {
  const ButtonBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonBar Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ButtonBar Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Text("Default ButtonBar", style: TextStyle(fontWeight: FontWeight.bold)),
              OverflowBar(
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Button 1")),
                  ElevatedButton(onPressed: () {}, child: Text("Button 2")),
                ],
              ),
              SizedBox(height: 20),
              Text("ButtonBar - Aligned to End", style: TextStyle(fontWeight: FontWeight.bold)),
              OverflowBar(
                alignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Button 1")),
                  ElevatedButton(onPressed: () {}, child: Text("Button 2")),
                ],
              ),
              SizedBox(height: 20),
              Text("ButtonBar - With Button Spacing",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              OverflowBar(
                spacing: 15,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Button 1")),
                  ElevatedButton(onPressed: () {}, child: Text("Button 2")),
                ],
              ),
              SizedBox(height: 20),
              Text("ButtonBar - With Button Aligned to Start",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              OverflowBar(
                alignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Button 1")),
                  ElevatedButton(onPressed: () {}, child: Text("Button 2")),
                ],
              ),
              SizedBox(height: 20),
              Text("ButtonBar - With Button Aligned to Center",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              OverflowBar(
                alignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Button 1")),
                  ElevatedButton(onPressed: () {}, child: Text("Button 2")),
                ],
              ),
              SizedBox(height: 20),
              Text("ButtonBar - With Button Aligned to SpaceBetween",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              OverflowBar(
                alignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Button 1")),
                  ElevatedButton(onPressed: () {}, child: Text("Button 2")),
                ],
              ),
              SizedBox(height: 20),
              Text("ButtonBar - With Button Aligned to SpaceAround",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              OverflowBar(
                alignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Button 1")),
                  ElevatedButton(onPressed: () {}, child: Text("Button 2")),
                ],
              ),
              SizedBox(height: 20),
              Text("ButtonBar - With Button Aligned to SpaceEvenly",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              OverflowBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Button 1")),
                  ElevatedButton(onPressed: () {}, child: Text("Button 2")),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
