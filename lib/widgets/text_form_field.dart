import 'package:flutter/material.dart';

class TextFormFieldScreen extends StatelessWidget {
  const TextFormFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFormField Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("TextFormField - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextFormField(),
              SizedBox(height: 20),
              Text("TextFormField - Filled with Border", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Text("TextFormField - Focused Border Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("TextFormField - With Label and Hint", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Enter your username',
                ),
              ),
              SizedBox(height: 20),
              Text("TextFormField - With Icon", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 20),
              Text("TextFormField - Password Field", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter password',
                ),
              ),
              SizedBox(height: 20),
              Text("TextFormField - Multiline", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextFormField(
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Enter your message',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Text("TextFormField - With Custom Text Style", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextFormField(
                style: TextStyle(fontSize: 18, color: Colors.purple),
                decoration: InputDecoration(
                  hintText: 'Styled text',
                ),
              ),
              SizedBox(height: 20),
              Text("TextFormField - With Error Text", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  errorText: 'This field is required',
                ),
              ),
              SizedBox(height: 20),
              Text("TextFormField - Disabled", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextFormField(
                enabled: false,
                decoration: InputDecoration(
                  hintText: 'This field is disabled',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
