import 'package:flutter/material.dart';

class TooltipScreen extends StatelessWidget {
  const TooltipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tooltip Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Tooltip - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              Tooltip(
                message: 'This is a default tooltip',
                child: Text('Hover over me'),
              ),
              SizedBox(height: 20),
              Text("Tooltip - Custom Background Color", style: TextStyle(fontWeight: FontWeight.bold)),
              Tooltip(
                message: 'Custom background color',
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text('Hover over me'),
              ),
              SizedBox(height: 20),
              Text("Tooltip - Custom Text Style", style: TextStyle(fontWeight: FontWeight.bold)),
              Tooltip(
                message: 'Custom text style',
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text('Hover over me'),
              ),
              SizedBox(height: 20),
              Text("Tooltip - Long Message", style: TextStyle(fontWeight: FontWeight.bold)),
              Tooltip(
                message: 'This is a very long tooltip message that should wrap to multiple lines if necessary to display all the text. This is a very long tooltip message that should wrap to multiple lines if necessary to display all the text.',
                child: Text('Hover over me'),
              ),
              SizedBox(height: 20),
              Text("Tooltip - With Padding", style: TextStyle(fontWeight: FontWeight.bold)),
              Tooltip(
                message: 'Tooltip with padding',
                padding: EdgeInsets.all(20),
                child: Text('Hover over me'),
              ),
              SizedBox(height: 20),
              Text("Tooltip - With Vertical Offset", style: TextStyle(fontWeight: FontWeight.bold)),
              Tooltip(
                message: 'Tooltip with vertical offset',
                verticalOffset: 40,
                child: Text('Hover over me'),
              ),
              SizedBox(height: 20),
              Text("Tooltip - With Prefer Below", style: TextStyle(fontWeight: FontWeight.bold)),
              Tooltip(
                message: 'Tooltip with prefer below',
                preferBelow: false,
                child: Text('Hover over me'),
              ),
              SizedBox(height: 20),
              Text("Tooltip - With Show Duration", style: TextStyle(fontWeight: FontWeight.bold)),
              Tooltip(
                message: 'Tooltip with show duration',
                showDuration: Duration(seconds: 2),
                child: Text('Hover over me'),
              ),
              SizedBox(height: 20),
              Text("Tooltip - With Wait Duration", style: TextStyle(fontWeight: FontWeight.bold)),
              Tooltip(
                message: 'Tooltip with wait duration',
                waitDuration: Duration(seconds: 1),
                child: Text('Hover over me'),
              ),
              SizedBox(height: 20),
              Text("Tooltip - Wrapped around Container", style: TextStyle(fontWeight: FontWeight.bold)),
              Tooltip(
                message: 'Tooltip around container',
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[200],
                  child: Text('Hover over me'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
