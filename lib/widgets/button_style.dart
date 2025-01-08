import 'package:flutter/material.dart';

class ButtonStyleScreen extends StatelessWidget {
  const ButtonStyleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonStyle Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ButtonStyle - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                child: Text("Default Button"),
              ),
              SizedBox(height: 20),
              Text("ButtonStyle - Custom Colors", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.blue),
                  foregroundColor: WidgetStateProperty.all(Colors.white),
                ),
                child: Text("Blue Background"),
              ),
              SizedBox(height: 20),
              Text("ButtonStyle - Custom Size and Padding",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  padding:
                      WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
                  minimumSize: WidgetStateProperty.all(Size(150, 50)),
                ),
                child: Text("Large Button"),
              ),
              SizedBox(height: 20),
              Text("ButtonStyle - Rounded Corners", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                ),
                child: Text("Rounded Button"),
              ),
              SizedBox(height: 20),
              Text("ButtonStyle - Custom Text Style",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  textStyle:
                      WidgetStateProperty.all(TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                child: Text("Bold Text"),
              ),
              SizedBox(height: 20),
              Text("ButtonStyle - With Icon", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text("Add"),
              ),
              SizedBox(height: 20),
              Text("ButtonStyle - Disabled", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: null,
                child: Text("Disabled Button"),
              ),
              SizedBox(height: 20),
              Text("ButtonStyle - Wrapped in Container",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Button in Container"),
                ),
              ),
              SizedBox(height: 20),
              // The following would cause an error because ButtonStyle is not a widget, it's a style object.
              // Text("ButtonStyle - As a Widget (Error)", style: TextStyle(fontWeight: FontWeight.bold)),
              // SizedBox(height: 8),
              // ButtonStyle(
              //   backgroundColor: WidgetStateProperty.all(Colors.red),
              //   child: Text("This will cause an error"),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
