import 'package:flutter/material.dart';

class DefaultTextStyleScreen extends StatelessWidget {
  const DefaultTextStyleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DefaultTextStyle Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("DefaultTextStyle - Text",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              DefaultTextStyle(
                style: TextStyle(color: Colors.black, fontSize: 14),
                child: Text("This is a default text style."),
              ),
              SizedBox(height: 20),
              Text("DefaultTextStyle - Red Text",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              DefaultTextStyle(
                style: TextStyle(color: Colors.red, fontSize: 16),
                child: Text("This text is red."),
              ),
              SizedBox(height: 20),
              Text("DefaultTextStyle - Bold Text",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              DefaultTextStyle(
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                child: Text("This text is bold."),
              ),
              SizedBox(height: 20),
              Text("DefaultTextStyle - Different Font Size",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              DefaultTextStyle(
                style: TextStyle(fontSize: 20),
                child: Text("This text has a larger font size."),
              ),
              SizedBox(height: 20),
              Text("DefaultTextStyle - Wrapped Text",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              DefaultTextStyle(
                style: TextStyle(color: Colors.blue, fontSize: 14),
                child: Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text("This text is wrapped in a container."),
                ),
              ),
              SizedBox(height: 20),
              Text("DefaultTextStyle - Inherited Style",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              DefaultTextStyle(
                style: TextStyle(color: Colors.green, fontSize: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("This text inherits the green color."),
                    DefaultTextStyle(
                      style: TextStyle(color: Colors.orange, fontSize: 16),
                      child: Text(
                          "This text overrides the color but inherits the font size from the parent DefaultTextStyle."),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("DefaultTextStyle - Alignment",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              DefaultTextStyle(
                style: TextStyle(color: Colors.purple, fontSize: 14),
                textAlign: TextAlign.center,
                child: SizedBox(
                  width: double.infinity,
                  child: Text("This text is centered."),
                ),
              ),
              SizedBox(height: 20),
              Text("DefaultTextStyle - Max Lines",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              DefaultTextStyle(
                style: TextStyle(color: Colors.brown, fontSize: 14),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                child: Text(
                    "This is a long text that will be truncated if it exceeds the max lines limit. This is a long text that will be truncated if it exceeds the max lines limit."),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
