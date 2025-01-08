import 'package:flutter/material.dart';

class RenderParagraphScreen extends StatelessWidget {
  const RenderParagraphScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RenderParagraph Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("RenderParagraph Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Text("RenderParagraph - Default"),
              SizedBox(height: 8),
              _buildRenderParagraph(text: "This is a default RenderParagraph."),
              SizedBox(height: 20),
              Text("RenderParagraph - Bold Text"),
              SizedBox(height: 8),
              _buildRenderParagraph(text: "This is a RenderParagraph with bold text.", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Text("RenderParagraph - Colored Text"),
              SizedBox(height: 8),
              _buildRenderParagraph(text: "This is a RenderParagraph with colored text.", style: TextStyle(color: Colors.blue)),
              SizedBox(height: 20),
              Text("RenderParagraph - Larger Font Size"),
              SizedBox(height: 8),
              _buildRenderParagraph(text: "This is a RenderParagraph with a larger font size.", style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),
              Text("RenderParagraph - Multiple Styles"),
              SizedBox(height: 8),
              _buildRenderParagraph(text: "This is a RenderParagraph with multiple styles.", style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.w500)),
              SizedBox(height: 20),
              Text("RenderParagraph - Long Text"),
              SizedBox(height: 8),
              _buildRenderParagraph(text: "This is a RenderParagraph with a very long text to demonstrate how it wraps. This is a very long text to demonstrate how it wraps. This is a very long text to demonstrate how it wraps. This is a very long text to demonstrate how it wraps."),
              SizedBox(height: 20),
              Text("RenderParagraph - With TextAlign.center"),
              SizedBox(height: 8),
              _buildRenderParagraph(text: "This is a RenderParagraph with TextAlign.center.", textAlign: TextAlign.center),
              SizedBox(height: 20),
              Text("RenderParagraph - With TextAlign.right"),
              SizedBox(height: 8),
              _buildRenderParagraph(text: "This is a RenderParagraph with TextAlign.right.", textAlign: TextAlign.right),
              SizedBox(height: 20),
              Text("RenderParagraph - With TextDirection.rtl"),
              SizedBox(height: 8),
              _buildRenderParagraph(text: "This is a RenderParagraph with TextDirection.rtl.", textDirection: TextDirection.rtl),
              SizedBox(height: 20),
              Text("RenderParagraph - With MaxLines"),
              SizedBox(height: 8),
              _buildRenderParagraph(text: "This is a RenderParagraph with maxLines set to 2. This is a very long text to demonstrate how it wraps. This is a very long text to demonstrate how it wraps.", maxLines: 2),
              SizedBox(height: 20),
              Text("RenderParagraph - With Overflow.ellipsis"),
              SizedBox(height: 8),
              _buildRenderParagraph(text: "This is a RenderParagraph with overflow set to ellipsis. This is a very long text to demonstrate how it wraps. This is a very long text to demonstrate how it wraps.", maxLines: 1, overflow: TextOverflow.ellipsis),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRenderParagraph({required String text, TextStyle? style, TextAlign? textAlign, TextDirection? textDirection, int? maxLines, TextOverflow? overflow}) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Text(
        text,
        style: style,
        textAlign: textAlign,
        textDirection: textDirection,
        maxLines: maxLines,
        overflow: overflow,
      ),
    );
  }
}
