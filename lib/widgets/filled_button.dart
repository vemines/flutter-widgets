import 'package:flutter/material.dart';

class FilledButtonScreen extends StatelessWidget {
  const FilledButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FilledButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("FilledButton - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              FilledButton(
                onPressed: () {},
                child: Text("Default Button"),
              ),
              SizedBox(height: 20),
              Text("FilledButton - Primary Color", style: TextStyle(fontWeight: FontWeight.bold)),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Colors.white,
                ),
                child: Text("Primary Button"),
              ),
              SizedBox(height: 20),
              Text("FilledButton - Secondary Color", style: TextStyle(fontWeight: FontWeight.bold)),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  foregroundColor: Colors.black,
                ),
                child: Text("Secondary Button"),
              ),
              SizedBox(height: 20),
              Text("FilledButton - Disabled", style: TextStyle(fontWeight: FontWeight.bold)),
              FilledButton(
                onPressed: null,
                child: Text("Disabled Button"),
              ),
              SizedBox(height: 20),
              Text("FilledButton - Custom Padding and Shape", style: TextStyle(fontWeight: FontWeight.bold)),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                child: Text("Custom Padding"),
              ),
              SizedBox(height: 20),
              Text("FilledButton - Custom Text Style", style: TextStyle(fontWeight: FontWeight.bold)),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                ),
                child: Text("Styled Text"),
              ),
              SizedBox(height: 20),
              Text("FilledButton - With Icon", style: TextStyle(fontWeight: FontWeight.bold)),
              FilledButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text("Add Item"),
              ),
              SizedBox(height: 20),
              Text("FilledButton - With Icon and Custom Colors", style: TextStyle(fontWeight: FontWeight.bold)),
              FilledButton.icon(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart, color: Colors.white),
                label: Text("Buy Now", style: TextStyle(color: Colors.white)),
                style: FilledButton.styleFrom(backgroundColor: Colors.green),
              ),
              SizedBox(height: 20),
              Text("FilledButton - Wrapped in Container", style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.grey[200],
                child: FilledButton(
                  onPressed: () {},
                  child: Text("Wrapped Button"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
