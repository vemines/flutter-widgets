import 'package:flutter/material.dart';

class SimpleDialogScreen extends StatelessWidget {
  const SimpleDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SimpleDialog Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("SimpleDialog Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              
              // Variation 1: Basic SimpleDialog
              Text("SimpleDialog - Basic", style: TextStyle(fontWeight: FontWeight.bold)),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SimpleDialog(
                        title: Text('Basic Dialog'),
                        children: <Widget>[
                          SimpleDialogOption(
                            onPressed: () { Navigator.pop(context); },
                            child: const Text('Option 1'),
                          ),
                          SimpleDialogOption(
                            onPressed: () { Navigator.pop(context); },
                            child: const Text('Option 2'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Show Basic Dialog"),
              ),
              SizedBox(height: 20),

              // Variation 2: SimpleDialog with Custom Background Color
              Text("SimpleDialog - Custom Background Color", style: TextStyle(fontWeight: FontWeight.bold)),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SimpleDialog(
                        backgroundColor: Colors.lightBlue[100],
                        title: Text('Custom Background Dialog'),
                        children: <Widget>[
                          SimpleDialogOption(
                            onPressed: () { Navigator.pop(context); },
                            child: const Text('Option 1'),
                          ),
                          SimpleDialogOption(
                            onPressed: () { Navigator.pop(context); },
                            child: const Text('Option 2'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Show Custom Background Dialog"),
              ),
              SizedBox(height: 20),

              // Variation 3: SimpleDialog with Custom Title Text Style
              Text("SimpleDialog - Custom Title Text Style", style: TextStyle(fontWeight: FontWeight.bold)),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SimpleDialog(
                        title: Text('Styled Title Dialog', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
                        children: <Widget>[
                          SimpleDialogOption(
                            onPressed: () { Navigator.pop(context); },
                            child: const Text('Option 1'),
                          ),
                          SimpleDialogOption(
                            onPressed: () { Navigator.pop(context); },
                            child: const Text('Option 2'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Show Styled Title Dialog"),
              ),
              SizedBox(height: 20),

              // Variation 4: SimpleDialog with Custom Option Text Style
              Text("SimpleDialog - Custom Option Text Style", style: TextStyle(fontWeight: FontWeight.bold)),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SimpleDialog(
                        title: Text('Styled Option Dialog'),
                        children: <Widget>[
                          SimpleDialogOption(
                            onPressed: () { Navigator.pop(context); },
                            child: Text('Option 1', style: TextStyle(color: Colors.green, fontStyle: FontStyle.italic)),
                          ),
                          SimpleDialogOption(
                            onPressed: () { Navigator.pop(context); },
                            child: Text('Option 2', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Show Styled Option Dialog"),
              ),
              SizedBox(height: 20),

              // Variation 5: SimpleDialog with Elevation
              Text("SimpleDialog - Elevation", style: TextStyle(fontWeight: FontWeight.bold)),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SimpleDialog(
                        elevation: 10,
                        title: Text('Elevation Dialog'),
                        children: <Widget>[
                          SimpleDialogOption(
                            onPressed: () { Navigator.pop(context); },
                            child: const Text('Option 1'),
                          ),
                          SimpleDialogOption(
                            onPressed: () { Navigator.pop(context); },
                            child: const Text('Option 2'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Show Elevation Dialog"),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
