import 'package:flutter/material.dart';

class AbsorbPointerScreen extends StatelessWidget {
  const AbsorbPointerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AbsorbPointer Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("AbsorbPointer - Example", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              AbsorbPointer(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Click Me (Absorbed)"),
                ),
              ),
              SizedBox(height: 16),
              Text("AbsorbPointer - Enabled False", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              AbsorbPointer(
                absorbing: false,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("Button Clicked!")));
                  },
                  child: Text("Click Me (Not Absorbed)"),
                ),
              ),
              SizedBox(height: 16),
              Text("AbsorbPointer - With Container", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              AbsorbPointer(
                child: Container(
                  color: Colors.blue.shade100,
                  padding: EdgeInsets.all(20),
                  child: Text("This container is absorbed"),
                ),
              ),
              SizedBox(height: 16),
              Text("AbsorbPointer - With Opacity", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              AbsorbPointer(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Click Me (Absorbed, Opacity 0.5)"),
                ),
              ),
              SizedBox(height: 16),
              Text("AbsorbPointer - With Ignore Pointer True",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(height: 16),
              Text("AbsorbPointer - With Ignore Pointer False",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              SizedBox(height: 16),
              Text("AbsorbPointer - Nested Example", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              AbsorbPointer(
                child: AbsorbPointer(
                  absorbing: true,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Click Me (Double Absorbed)"),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text("AbsorbPointer - Nested Example with one not absorbing",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              AbsorbPointer(
                absorbing: false,
                child: AbsorbPointer(
                  absorbing: true,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Click Me (Inner Absorbed)"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
