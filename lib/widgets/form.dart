import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Form - Example", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Name'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Email'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Submit'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("Form - With Global Key", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              _FormWithGlobalKey(),
              SizedBox(height: 20),
              Text("Form - With Custom Styling", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text('Login'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("Form - With Initial Values", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              _FormWithInitialValues(),
              SizedBox(height: 20),
              Text("Form - With Validation", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              _FormWithValidation(),
            ],
          ),
        ),
      ),
    );
  }
}

class _FormWithGlobalKey extends StatefulWidget {
  @override
  _FormWithGlobalKeyState createState() => _FormWithGlobalKeyState();
}

class _FormWithGlobalKeyState extends State<_FormWithGlobalKey> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Username'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a username';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Processing Data')));
              }
            },
            child: Text('Validate'),
          ),
        ],
      ),
    );
  }
}

class _FormWithInitialValues extends StatefulWidget {
  @override
  _FormWithInitialValuesState createState() => _FormWithInitialValuesState();
}

class _FormWithInitialValuesState extends State<_FormWithInitialValues> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController(text: 'John Doe');
  final TextEditingController _emailController =
      TextEditingController(text: 'john.doe@example.com');

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(labelText: 'Name'),
          ),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(labelText: 'Email'),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Data Submitted')));
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}

class _FormWithValidation extends StatefulWidget {
  @override
  _FormWithValidationState createState() => _FormWithValidationState();
}

class _FormWithValidationState extends State<_FormWithValidation> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Age'),
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your age';
              }
              if (int.tryParse(value) == null) {
                return 'Please enter a valid number';
              }
              if (int.parse(value) < 0) {
                return 'Age must be positive';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Age is valid')));
              }
            },
            child: Text('Check Age'),
          ),
        ],
      ),
    );
  }
}
