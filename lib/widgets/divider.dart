import 'package:flutter/material.dart';

class DividerScreen extends StatelessWidget {
  const DividerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Divider Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Divider - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              Divider(),
              SizedBox(height: 20),
              Text("Divider - Color and Thickness", style: TextStyle(fontWeight: FontWeight.bold)),
              Divider(
                color: Colors.blue,
                thickness: 10,
              ),
              SizedBox(height: 20),
              Text("Divider - Indent and EndIndent", style: TextStyle(fontWeight: FontWeight.bold)),
              Divider(
                indent: 50,
                endIndent: 50,
              ),
              SizedBox(height: 20),
              Text("Divider - Color, Thickness, Indent, EndIndent",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Divider(
                color: Colors.red,
                thickness: 5,
                indent: 20,
                endIndent: 80,
              ),
              SizedBox(height: 20),
              Text("Divider - With Container", style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                color: Colors.grey[200],
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text("Above Divider"),
                    Divider(),
                    Text("Below Divider"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
