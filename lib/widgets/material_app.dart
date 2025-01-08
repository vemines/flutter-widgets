import 'package:flutter/material.dart';

class MaterialAppScreen extends StatelessWidget {
  const MaterialAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MaterialApp Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("MaterialApp - Basic Usage", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Tooltip(
                message: "A basic MaterialApp with a home screen.",
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                  padding: EdgeInsets.all(8),
                  child: MaterialApp(
                    home: Scaffold(
                      appBar: AppBar(title: Text("Home")),
                      body: Center(child: Text("Home Screen Content")),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("MaterialApp - With Theme", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Tooltip(
                message: "MaterialApp with a custom theme.",
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                  padding: EdgeInsets.all(8),
                  child: MaterialApp(
                    theme: ThemeData(
                      primarySwatch: Colors.green,
                      brightness: Brightness.dark,
                    ),
                    home: Scaffold(
                      appBar: AppBar(title: Text("Themed Home")),
                      body: Center(child: Text("Themed Content")),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("MaterialApp - With Routes", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Tooltip(
                message: "MaterialApp with named routes.",
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                  padding: EdgeInsets.all(8),
                  child: MaterialApp(
                    initialRoute: '/',
                    routes: {
                      '/': (context) => Scaffold(appBar: AppBar(title: Text("Home")), body: Center(child: Text("Home Screen"))),
                      '/second': (context) => Scaffold(appBar: AppBar(title: Text("Second")), body: Center(child: Text("Second Screen"))),
                    },
                    home: Scaffold(
                      body: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/second');
                          },
                          child: Text("Go to Second Screen"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("MaterialApp - With Title", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Tooltip(
                message: "MaterialApp with a title.",
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                  padding: EdgeInsets.all(8),
                  child: MaterialApp(
                    title: "My App Title",
                    home: Scaffold(
                      appBar: AppBar(title: Text("Title Home")),
                      body: Center(child: Text("Title Content")),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("MaterialApp - With debugShowCheckedModeBanner", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Tooltip(
                message: "MaterialApp with debugShowCheckedModeBanner set to false.",
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                  padding: EdgeInsets.all(8),
                  child: MaterialApp(
                    debugShowCheckedModeBanner: false,
                    home: Scaffold(
                      appBar: AppBar(title: Text("No Banner Home")),
                      body: Center(child: Text("No Banner Content")),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("MaterialApp - With ThemeData and dark mode", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Tooltip(
                message: "MaterialApp with a dark theme.",
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                  padding: EdgeInsets.all(8),
                  child: MaterialApp(
                    theme: ThemeData.dark(),
                    home: Scaffold(
                      appBar: AppBar(title: Text("Dark Theme Home")),
                      body: Center(child: Text("Dark Theme Content")),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("MaterialApp - With ThemeData and custom colorScheme", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Tooltip(
                message: "MaterialApp with a custom colorScheme.",
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                  padding: EdgeInsets.all(8),
                  child: MaterialApp(
                    theme: ThemeData(
                      colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
                    ),
                    home: Scaffold(
                      appBar: AppBar(title: Text("Custom ColorScheme Home")),
                      body: Center(child: Text("Custom ColorScheme Content")),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
