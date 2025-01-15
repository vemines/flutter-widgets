import 'package:flutter/material.dart';

class FloatingActionButtonScreen extends StatelessWidget {
  const FloatingActionButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("FloatingActionButton Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Wrap(
                spacing: 24,
                runSpacing: 24,
                children: [
                  Tooltip(
                      message: "FloatingActionButton - Default",
                      child: FloatingActionButton(
                          heroTag: "1", onPressed: () {}, child: Icon(Icons.add))),
                  Tooltip(
                      message: "FloatingActionButton - Blue Background",
                      child: FloatingActionButton(
                          heroTag: "2",
                          onPressed: () {},
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.add))),
                  Tooltip(
                      message: "FloatingActionButton - Red Icon",
                      child: FloatingActionButton(
                          heroTag: "3",
                          onPressed: () {},
                          child: Icon(Icons.add, color: Colors.red))),
                  Tooltip(
                      message: "FloatingActionButton - shape: CircleBorder",
                      child: FloatingActionButton(
                        heroTag: "4",
                        onPressed: () {},
                        shape: CircleBorder(),
                        child: Icon(Icons.add),
                      )),
                  Tooltip(
                      message: "FloatingActionButton - mini: true",
                      child: FloatingActionButton(
                          heroTag: "5", onPressed: () {}, mini: true, child: Icon(Icons.add))),
                  Tooltip(
                      message: "FloatingActionButton - Extended",
                      child: FloatingActionButton.extended(
                          onPressed: () {}, label: Text("Add"), icon: Icon(Icons.add))),
                  Tooltip(
                      message: "FloatingActionButton - BorderRadius 30",
                      child: FloatingActionButton.extended(
                          heroTag: "6",
                          label: Text("add"),
                          onPressed: () {},
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                          icon: Icon(Icons.add))),
                  Tooltip(
                      message: "FloatingActionButton - elevation 10",
                      child: FloatingActionButton(
                          heroTag: "7", onPressed: () {}, elevation: 10, child: Icon(Icons.add))),
                  Tooltip(
                      message: "FloatingActionButton - Disabled",
                      child: FloatingActionButton(
                          heroTag: "8", onPressed: null, child: Icon(Icons.add))),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "9",
        onPressed: () {},
        tooltip: "Scaffold floatingActionButton",
        child: Icon(Icons.add),
      ),
    );
  }
}
