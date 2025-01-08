import 'package:flutter/material.dart';

class ToggleButtonsScreen extends StatelessWidget {
  const ToggleButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToggleButtons Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ToggleButtons - Basic", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Wrap(
                spacing: 8,
                children: [
                  ToggleButtons(
                    isSelected: [false, false, false],
                    onPressed: (int index) {},
                    children: <Widget>[
                      Icon(Icons.format_bold),
                      Icon(Icons.format_italic),
                      Icon(Icons.format_underline),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("ToggleButtons - Selected Colors", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Wrap(
                spacing: 8,
                children: [
                  ToggleButtons(
                    isSelected: [true, false, true],
                    selectedColor: Colors.white,
                    fillColor: Colors.blue,
                    onPressed: (int index) {},
                    children: <Widget>[
                      Icon(Icons.format_bold),
                      Icon(Icons.format_italic),
                      Icon(Icons.format_underline),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("ToggleButtons - Bordered", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Wrap(
                spacing: 8,
                children: [
                  ToggleButtons(
                    isSelected: [false, true, false],
                    borderColor: Colors.red,
                    borderWidth: 2,
                    borderRadius: BorderRadius.circular(8),
                    onPressed: (int index) {},
                    children: <Widget>[
                      Icon(Icons.format_bold),
                      Icon(Icons.format_italic),
                      Icon(Icons.format_underline),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("ToggleButtons - Disabled", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Wrap(
                spacing: 8,
                children: [
                  ToggleButtons(
                    isSelected: [false, false, false],
                    onPressed: null,
                    children: <Widget>[
                      Icon(Icons.format_bold),
                      Icon(Icons.format_italic),
                      Icon(Icons.format_underline),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("ToggleButtons - Custom Text", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Wrap(
                spacing: 8,
                children: [
                  ToggleButtons(
                    isSelected: [false, true, false],
                    onPressed: (int index) {},
                    children: <Widget>[
                      Text("Bold"),
                      Text("Italic"),
                      Text("Underline"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("ToggleButtons - Custom Text Style", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Wrap(
                spacing: 8,
                children: [
                  ToggleButtons(
                    isSelected: [true, false, true],
                    onPressed: (int index) {},
                    children: <Widget>[
                      Text("Bold", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("Italic", style: TextStyle(fontStyle: FontStyle.italic)),
                      Text("Underline", style: TextStyle(decoration: TextDecoration.underline)),
                    ],
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
