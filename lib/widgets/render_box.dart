import 'package:flutter/material.dart';

class RenderBoxScreen extends StatelessWidget {
  const RenderBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RenderBox Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("RenderBox - Example", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(child: Text("Box", style: TextStyle(color: Colors.white))),
              ),
              SizedBox(height: 20),
              Text("RenderBox - Different Size", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                width: 150,
                height: 75,
                color: Colors.green,
                child: Center(child: Text("Different Size", style: TextStyle(color: Colors.white))),
              ),
              SizedBox(height: 20),
              Text("RenderBox - With Padding", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.orange,
                child: Text("With Padding", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 20),
              Text("RenderBox - With Margin", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.all(20),
                color: Colors.purple,
                child: Text("With Margin", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 20),
              Text("RenderBox - With Border Radius", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(child: Text("Rounded", style: TextStyle(color: Colors.white))),
              ),
              SizedBox(height: 20),
              Text("RenderBox - With Border", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Center(child: Text("Bordered", style: TextStyle(color: Colors.black))),
              ),
              SizedBox(height: 20),
              Text("RenderBox - With Alignment (using Align)",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                height: 150,
                color: Colors.grey[200],
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.teal,
                    child: Center(child: Text("Aligned", style: TextStyle(color: Colors.white))),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("RenderBox - Wrapped in a Container",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                color: Colors.lightBlue[100],
                padding: EdgeInsets.all(10),
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.lightBlue,
                  child: Center(child: Text("Wrapped", style: TextStyle(color: Colors.white))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
