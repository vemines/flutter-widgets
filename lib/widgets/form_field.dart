import 'package:flutter/material.dart';

class FormFieldScreen extends StatelessWidget {
  const FormFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FormField Showcase"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("TextFormField - Default", style: TextStyle(fontWeight: FontWeight.bold)),
            TextFormField(
              decoration: InputDecoration(labelText: 'Default Label'),
            ),
            SizedBox(height: 20),
            Text("TextFormField - Filled with Border", style: TextStyle(fontWeight: FontWeight.bold)),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Filled Label',
                filled: true,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Text("TextFormField - Focused Border Color", style: TextStyle(fontWeight: FontWeight.bold)),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Focused Border',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("TextFormField - Error Border", style: TextStyle(fontWeight: FontWeight.bold)),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Error Border',
                errorText: 'This field is required',
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("TextFormField - Prefix Icon", style: TextStyle(fontWeight: FontWeight.bold)),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Prefix Icon',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 20),
            Text("TextFormField - Suffix Icon", style: TextStyle(fontWeight: FontWeight.bold)),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Suffix Icon',
                suffixIcon: Icon(Icons.visibility),
              ),
            ),
            SizedBox(height: 20),
            Text("TextFormField - Password Field", style: TextStyle(fontWeight: FontWeight.bold)),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            SizedBox(height: 20),
            Text("TextFormField - Multiline", style: TextStyle(fontWeight: FontWeight.bold)),
            TextFormField(
              maxLines: 3,
              decoration: InputDecoration(
                labelText: 'Multiline Text',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Text("TextFormField - Custom Text Style", style: TextStyle(fontWeight: FontWeight.bold)),
            TextFormField(
              style: TextStyle(fontSize: 18, color: Colors.green),
              decoration: InputDecoration(
                labelText: 'Custom Style',
              ),
            ),
            SizedBox(height: 20),
            Text("TextFormField - Disabled", style: TextStyle(fontWeight: FontWeight.bold)),
            TextFormField(
              enabled: false,
              decoration: InputDecoration(
                labelText: 'Disabled Field',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
