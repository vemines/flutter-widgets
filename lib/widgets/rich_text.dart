import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RichText Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("RichText - Text", style: TextStyle(fontWeight: FontWeight.bold)),
              RichText(
                text: TextSpan(
                  text: 'This is ',
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' and '),
                    TextSpan(text: 'italic', style: TextStyle(fontStyle: FontStyle.italic)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("RichText - Different Colors", style: TextStyle(fontWeight: FontWeight.bold)),
              RichText(
                text: TextSpan(
                  text: 'Colored ',
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: 'red', style: TextStyle(color: Colors.red)),
                    TextSpan(text: ' and '),
                    TextSpan(text: 'blue', style: TextStyle(color: Colors.blue)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("RichText - Different Font Sizes",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              RichText(
                text: TextSpan(
                  text: 'Small ',
                  style: DefaultTextStyle.of(context).style.copyWith(fontSize: 12),
                  children: <TextSpan>[
                    TextSpan(text: 'and ', style: TextStyle(fontSize: 16)),
                    TextSpan(text: 'large', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("RichText - With Custom Styles", style: TextStyle(fontWeight: FontWeight.bold)),
              RichText(
                text: TextSpan(
                  text: 'Custom ',
                  style: DefaultTextStyle.of(context).style.copyWith(fontFamily: 'Roboto'),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'style',
                        style: TextStyle(letterSpacing: 2, fontWeight: FontWeight.w900)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("RichText - With Recognizer", style: TextStyle(fontWeight: FontWeight.bold)),
              RichText(
                text: TextSpan(
                  text: 'Click ',
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'here',
                      style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                      //recognizer: TapGestureRecognizer()..onTap = () => print('Tapped'), // Removed recognizer to avoid dependency
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("RichText - With Multiple Spans", style: TextStyle(fontWeight: FontWeight.bold)),
              RichText(
                  text: TextSpan(children: [
                TextSpan(text: 'First ', style: TextStyle(color: Colors.green)),
                TextSpan(text: 'Second ', style: TextStyle(color: Colors.orange)),
                TextSpan(text: 'Third', style: TextStyle(color: Colors.purple)),
              ])),
              SizedBox(height: 20),
              Text("RichText - With Line Height", style: TextStyle(fontWeight: FontWeight.bold)),
              RichText(
                text: TextSpan(
                  text: 'Line Height ',
                  style: DefaultTextStyle.of(context).style.copyWith(height: 2),
                  children: <TextSpan>[
                    TextSpan(text: 'example', style: TextStyle(height: 1)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
