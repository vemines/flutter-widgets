import 'package:flutter/material.dart';

class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Showcase"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("TextField Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              children: [
                _buildTextFieldVariation(
                  "Default TextField",
                  TextField(),
                ),
                _buildTextFieldVariation(
                  "TextField with Hint Text",
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your name",
                    ),
                  ),
                ),
                _buildTextFieldVariation(
                  "TextField with Border",
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                _buildTextFieldVariation(
                  "TextField with Rounded Border",
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                _buildTextFieldVariation(
                  "TextField with Filled Background",
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                _buildTextFieldVariation(
                  "TextField with Prefix Icon",
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                _buildTextFieldVariation(
                  "TextField with Suffix Icon",
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                _buildTextFieldVariation(
                  "TextField with Custom Text Style",
                  TextField(
                    style: TextStyle(fontSize: 18, color: Colors.blue),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                _buildTextFieldVariation(
                  "TextField with Password Input",
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                _buildTextFieldVariation(
                  "TextField with Max Length",
                  TextField(
                    maxLength: 10,
                    decoration: InputDecoration(
                      hintText: "Max 10 chars",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                _buildTextFieldVariation(
                  "TextField with Keyboard Type Number",
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Enter number",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                _buildTextFieldVariation(
                  "TextField with Multiline Input",
                  TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintText: "Enter multiple lines",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextFieldVariation(String label, Widget textField) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        SizedBox(
          width: 300,
          child: textField,
        ),
      ],
    );
  }
}
