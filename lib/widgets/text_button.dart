import 'package:flutter/material.dart';

class TextButtonScreen extends StatelessWidget {
  const TextButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("TextButton - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: () {},
                child: Text("Default Button"),
              ),
              SizedBox(height: 20),
              Text("TextButton - Primary Color", style: TextStyle(fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                child: Text("Primary Button"),
              ),
              SizedBox(height: 20),
              Text("TextButton - Disabled", style: TextStyle(fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: null,
                child: Text("Disabled Button"),
              ),
              SizedBox(height: 20),
              Text("TextButton - Custom Padding", style: TextStyle(fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                child: Text("Padded Button"),
              ),
              SizedBox(height: 20),
              Text("TextButton - Custom Text Style", style: TextStyle(fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  textStyle: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
                child: Text("Styled Button"),
              ),
              SizedBox(height: 20),
              Text("TextButton - With Icon", style: TextStyle(fontWeight: FontWeight.bold)),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text("Add Item"),
              ),
              SizedBox(height: 20),
              Text("TextButton - With Icon and Custom Color", style: TextStyle(fontWeight: FontWeight.bold)),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add, color: Colors.white),
                label: Text("Add Item", style: TextStyle(color: Colors.white)),
                style: TextButton.styleFrom(backgroundColor: Colors.green),
              ),
              SizedBox(height: 20),
              Text("TextButton - Minimum Size", style: TextStyle(fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  minimumSize: Size(150, 50),
                ),
                child: Text("Minimum Size Button"),
              ),
              SizedBox(height: 20),
              Text("TextButton - Bordered", style: TextStyle(fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  side: BorderSide(color: Colors.black, width: 2),
                ),
                child: Text("Bordered Button"),
              ),
              SizedBox(height: 20),
              Text("TextButton - Rounded Border", style: TextStyle(fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                child: Text("Rounded Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
