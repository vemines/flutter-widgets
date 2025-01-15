import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Showcase"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Text - Default", style: TextStyle(fontSize: 16)),
              Text("This is a default text widget."),
              SizedBox(height: 20),
              Text("Text - Red Color", style: TextStyle(color: Colors.red, fontSize: 16)),
              Text("This text is red."),
              SizedBox(height: 20),
              Text("Text - Bold", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Text("This text is bold."),
              SizedBox(height: 20),
              Text("Text - Italic", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16)),
              Text("This text is italic."),
              SizedBox(height: 20),
              Text("Text - Large Size",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text("This text is large and bold."),
              SizedBox(height: 20),
              Text("Text - Small Size", style: TextStyle(fontSize: 12)),
              Text("This text is small."),
              SizedBox(height: 20),
              Text("Text - Multi-line", style: TextStyle(fontSize: 16)),
              Text(
                "This is a longer text that spans multiple lines. It demonstrates how the text widget handles wrapping.",
              ),
              SizedBox(height: 20),
              Text("Text - softWrap: false", style: TextStyle(fontSize: 16)),
              Text(
                "This is a no longer multiple lines. It demonstrates how the text widget handles wrapping.",
                softWrap: false,
              ),
              SizedBox(height: 20),
              Text("Text - With Overflow TextOverflow.Ellipsis", style: TextStyle(fontSize: 16)),
              SizedBox(
                width: 200,
                child: Text(
                  "This is a very long text that will overflow and be truncated with ellipsis.",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              SizedBox(height: 20),
              Text("Text - With textAlign Right", style: TextStyle(fontSize: 16)),
              SizedBox(
                width: 200,
                child: Text("Right Aligned Text", textAlign: TextAlign.right),
              ),
              SizedBox(height: 20),
              Text("Text - With Letter Spacing",
                  style: TextStyle(fontSize: 16, letterSpacing: 3.0)),
              SizedBox(height: 20),
              Text("Text - With Line Height", style: TextStyle(fontSize: 16)),
              Text(
                "This text has increased line height. This text has increased line height. This text has increased line height. This text has increased line height. ",
                style: TextStyle(height: 4.0),
              ),
              SizedBox(height: 20),
              Text("Text - With Shadow",
                  style: TextStyle(
                      fontSize: 16,
                      shadows: [Shadow(color: Colors.grey, offset: Offset(2, 2), blurRadius: 3)])),
              SizedBox(height: 20),
              Text("Text - With Decoration underline",
                  style: TextStyle(
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue)),
              SizedBox(height: 20),
              Text("Text - With Decoration lineThrough",
                  style: TextStyle(
                      fontSize: 16,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.red)),
              SizedBox(height: 20),
              Text("Text - With Decoration overline",
                  style: TextStyle(
                      fontSize: 16,
                      decoration: TextDecoration.overline,
                      decorationColor: Colors.green)),
              SizedBox(height: 20),
              Text("Text - With Word Spacing", style: TextStyle(fontSize: 16, wordSpacing: 5.0)),
              SizedBox(height: 20),
              Text("Text - With Background Color",
                  style: TextStyle(fontSize: 16, backgroundColor: Colors.yellow)),
              SizedBox(height: 20),
              Text("Text - With Font Family (if available)",
                  style: TextStyle(fontSize: 16, fontFamily: 'Roboto')),
              SizedBox(height: 20),
              Text("Text - With Locale", style: TextStyle(fontSize: 16)),
              Text("This text is in English.", locale: Locale('en', 'US')),
              SizedBox(height: 20),
              Text("Text - With Max Lines and Ellipsis", style: TextStyle(fontSize: 16)),
              SizedBox(
                width: 200,
                child: Text(
                  "This is a long text that will be truncated to two lines with an ellipsis.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
