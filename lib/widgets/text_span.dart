import 'package:flutter/material.dart';

class TextSpanScreen extends StatelessWidget {
  const TextSpanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextSpan Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("TextSpan Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("TextSpan - Basic"),
                      RichText(
                        text: TextSpan(
                          text: 'This is a ',
                          style: const TextStyle(fontSize: 16, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(text: 'TextSpan', style: const TextStyle(fontWeight: FontWeight.bold)),
                            const TextSpan(text: ' example.'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("TextSpan - Different Styles"),
                      RichText(
                        text: TextSpan(
                          text: 'Styled ',
                          style: const TextStyle(fontSize: 18, color: Colors.blue),
                          children: <TextSpan>[
                            TextSpan(text: 'TextSpan', style: const TextStyle(fontStyle: FontStyle.italic, color: Colors.red)),
                            const TextSpan(text: ' example.', style: TextStyle(decoration: TextDecoration.underline)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("TextSpan - Multiple Children"),
                      RichText(
                        text: TextSpan(
                          text: 'Multiple ',
                          style: const TextStyle(fontSize: 16, color: Colors.black),
                          children: <TextSpan>[
                            const TextSpan(text: 'TextSpan ', style: TextStyle(fontWeight: FontWeight.bold)),
                            const TextSpan(text: 'children ', style: TextStyle(color: Colors.green)),
                            const TextSpan(text: 'example.', style: TextStyle(fontSize: 14)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("TextSpan - With Recognizer (Not Interactive Here)"),
                      RichText(
                        text: TextSpan(
                          text: 'Clickable ',
                          style: const TextStyle(fontSize: 16, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'TextSpan',
                              style: const TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                              //recognizer: TapGestureRecognizer()..onTap = () => print('TextSpan Tapped'), // This would require gesture recognizer setup
                            ),
                            const TextSpan(text: ' (Not interactive in this showcase).'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("TextSpan - With Custom Style"),
                      RichText(
                        text: TextSpan(
                          text: 'Custom ',
                          style: const TextStyle(fontSize: 16, color: Colors.black, fontFamily: 'Roboto'),
                          children: <TextSpan>[
                            TextSpan(text: 'TextSpan', style: const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2)),
                            const TextSpan(text: ' example.', style: TextStyle(wordSpacing: 5)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
