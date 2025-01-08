import 'package:flutter/material.dart';

class FocusScreen extends StatelessWidget {
  const FocusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Focus Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Focus - Basic Example", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Focus(
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[200],
                  child: Text("Click to focus"),
                ),
              ),
              SizedBox(height: 20),
              Text("Focus - With FocusNode", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Focus(
                focusNode: FocusNode(),
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[300],
                  child: Text("Click to focus (FocusNode)"),
                ),
              ),
              SizedBox(height: 20),
              Text("Focus - With onFocusChange", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Focus(
                onFocusChange: (hasFocus) {
                  print("Focus changed: $hasFocus");
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[400],
                  child: Text("Click to focus (onFocusChange)"),
                ),
              ),
              SizedBox(height: 20),
              Text("Focus - With canRequestFocus", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Focus(
                canRequestFocus: true,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[500],
                  child: Text("Click to focus (canRequestFocus)"),
                ),
              ),
              SizedBox(height: 20),
              Text("Focus - With autofocus", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Focus(
                autofocus: true,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[600],
                  child: Text("Click to focus (autofocus)"),
                ),
              ),
              SizedBox(height: 20),
              Text("Focus - With child focusable", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Focus(
                child: FocusableActionDetector(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.grey[700],
                    child: Text("Click to focus (focusable child)", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("Focus - With skipTraversal", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Focus(
                skipTraversal: true,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[800],
                  child: Text("Click to focus (skipTraversal)", style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 20),
              Text("Focus - With descendantsAreFocusable", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Focus(
                descendantsAreFocusable: true,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[900],
                  child: Text("Click to focus (descendantsAreFocusable)", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
