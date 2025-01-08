import 'package:flutter/material.dart';

class LinearProgressIndicatorScreen extends StatelessWidget {
  const LinearProgressIndicatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LinearProgressIndicator Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("LinearProgressIndicator - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              LinearProgressIndicator(),
              SizedBox(height: 20),
              Text("LinearProgressIndicator - Color and Background Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              LinearProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                backgroundColor: Colors.grey[300],
              ),
              SizedBox(height: 20),
              Text("LinearProgressIndicator - Value 0.5", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              LinearProgressIndicator(
                value: 0.5,
              ),
              SizedBox(height: 20),
              Text("LinearProgressIndicator - Min Height", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                height: 10,
                child: LinearProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
              ),
              SizedBox(height: 20),
              Text("LinearProgressIndicator - With Semantic Label", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              LinearProgressIndicator(
                semanticsLabel: 'Loading...',
              ),
              SizedBox(height: 20),
              Text("LinearProgressIndicator - With Value and Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              LinearProgressIndicator(
                value: 0.7,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
              ),
              SizedBox(height: 20),
              Text("LinearProgressIndicator - With Value and Background Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              LinearProgressIndicator(
                value: 0.3,
                backgroundColor: Colors.red[100],
              ),
              SizedBox(height: 20),
              Text("LinearProgressIndicator - With Value, Color and Background Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              LinearProgressIndicator(
                value: 0.9,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.purple),
                backgroundColor: Colors.yellow[100],
              ),
              SizedBox(height: 20),
              Text("LinearProgressIndicator - With Min Height and Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                height: 20,
                child: LinearProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.teal),
                ),
              ),
              SizedBox(height: 20),
              Text("LinearProgressIndicator - With Min Height, Value and Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(
                height: 15,
                child: LinearProgressIndicator(
                  value: 0.6,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
