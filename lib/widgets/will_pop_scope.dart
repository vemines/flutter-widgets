import 'package:flutter/material.dart';

class WillPopScopeScreen extends StatelessWidget {
  const WillPopScopeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WillPopScope Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("WillPopScope - Basic Usage", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              PopScope(
                onPopInvokedWithResult: (isPop, object) async {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Back button pressed!")));
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.grey[200],
                  child: Text("Press the back button to see the effect."),
                ),
              ),
              SizedBox(height: 20),
              Text("WillPopScope - With a different message",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              PopScope(
                onPopInvokedWithResult: (isPop, object) async {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Custom back button message!")));
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.grey[300],
                  child: Text("Press the back button to see the effect."),
                ),
              ),
              SizedBox(height: 20),
              Text("WillPopScope - Allowing back navigation",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              PopScope(
                onPopInvokedWithResult: (isPop, object) async {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Back navigation allowed!")));
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.grey[400],
                  child: Text("Press the back button to see the effect."),
                ),
              ),
              SizedBox(height: 20),
              Text("WillPopScope - Wrapped around a Text Widget",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              PopScope(
                onPopInvokedWithResult: (isPop, object) async {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Back button pressed on text!")));
                },
                child: Text("This is a text widget wrapped in WillPopScope"),
              ),
              SizedBox(height: 20),
              // WillPopScope without a child is not useful and will not display anything.
              // Text("WillPopScope - Without a child (commented out)", style: TextStyle(fontWeight: FontWeight.bold)),
              // SizedBox(height: 8),
              // WillPopScope(
              //   onWillPop: () async {
              //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Back button pressed!")));
              //
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
