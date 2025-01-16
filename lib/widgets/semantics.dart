import 'package:flutter/material.dart';

class SemanticsScreen extends StatelessWidget {
  const SemanticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Semantics Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Semantics - Example", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Semantics(
                label: 'This is a semantics example',
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.blue[100],
                  child: Text('Semantics', style: TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(height: 20),
              Text("Semantics - With Button", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Semantics(
                label: 'This is a button with semantics',
                button: true,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Click Me'),
                ),
              ),
              SizedBox(height: 20),
              Text("Semantics - With Image", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Semantics(
                label: 'This is an image with semantics',
                image: true,
                child: Image.network(
                  'https://placehold.co/150x150',
                  width: 150,
                  height: 150,
                ),
              ),
              SizedBox(height: 20),
              Text("Semantics - Hidden", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Semantics(
                label: 'This is hidden semantics',
                excludeSemantics: true,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.green[100],
                  child: Text('Hidden Semantics', style: TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(height: 20),
              Text("Semantics - With Custom Properties",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Semantics(
                label: 'Custom semantics properties',
                value: 'Custom Value',
                hint: 'This is a hint',
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.orange[100],
                  child: Text('Custom Properties', style: TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(height: 20),
              Text("Semantics - With Container", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Semantics(
                label: 'Semantics wrapping a container',
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.purple[100],
                  child: Text('Wrapped Container', style: TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(height: 20),
              Text("Semantics - With Text", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Semantics(
                label: 'Semantics wrapping text',
                child: Text('Wrapped Text', style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
