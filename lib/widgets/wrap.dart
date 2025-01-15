import 'package:flutter/material.dart';

class WrapScreen extends StatelessWidget {
  const WrapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Wrap - Usage", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.blue[100],
                    child: Text("Item 1"),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.blue[200],
                    child: Text("Item 2"),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.blue[300],
                    child: Text("Item 3"),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.blue[400],
                    child: Text("Item 4"),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.blue[500],
                    child: Text("Item 5"),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Wrap - With Alignment", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                alignment: WrapAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.green[100],
                    child: Text("Item A"),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.green[200],
                    child: Text("Item B"),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.green[300],
                    child: Text("Item C"),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Wrap - With Run Alignment", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                runAlignment: WrapAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.orange[100],
                    child: Text("Item X"),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.orange[200],
                    child: Text("Item Y"),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.orange[300],
                    child: Text("Item Z"),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.orange[400],
                    child: Text("Item W"),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Wrap - With Direction", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                direction: Axis.vertical,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.purple[100],
                    child: Text("Item 1"),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.purple[200],
                    child: Text("Item 2"),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.purple[300],
                    child: Text("Item 3"),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Wrap - With Vertical Direction and Alignment",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                direction: Axis.vertical,
                alignment: WrapAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.teal[100],
                    child: Text("Item A"),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.teal[200],
                    child: Text("Item B"),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.teal[300],
                    child: Text("Item C"),
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
