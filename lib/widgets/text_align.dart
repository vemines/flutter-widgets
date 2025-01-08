import 'package:flutter/material.dart';

class TextAlignScreen extends StatelessWidget {
  const TextAlignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextAlign Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("TextAlign.left", style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Text(
                  "This text is aligned to the left.",
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 20),
              Text("TextAlign.right", style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Text(
                  "This text is aligned to the right.",
                  textAlign: TextAlign.right,
                ),
              ),
              SizedBox(height: 20),
              Text("TextAlign.center", style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Text(
                  "This text is aligned to the center.",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              Text("TextAlign.justify", style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Text(
                  "This text is aligned to justify. This means that the text will be stretched to fill the available space. This is useful for long paragraphs of text.",
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(height: 20),
              Text("TextAlign.start", style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Text(
                  "This text is aligned to the start.",
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: 20),
              Text("TextAlign.end", style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Text(
                  "This text is aligned to the end.",
                  textAlign: TextAlign.end,
                ),
              ),
              SizedBox(height: 20),
              Text("TextAlign with maxLines", style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Text(
                  "This is a long text that will be truncated if it exceeds the maximum number of lines. This is a long text that will be truncated if it exceeds the maximum number of lines.",
                  textAlign: TextAlign.left,
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
