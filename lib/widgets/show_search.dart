import 'package:flutter/material.dart';

class ShowSearchScreen extends StatelessWidget {
  const ShowSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ShowSearch Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ShowSearch - Basic", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  showSearch(context: context, delegate: MySearchDelegate());
                },
                child: Text("Show Search"),
              ),
              SizedBox(height: 20),
              Text("ShowSearch - Custom Theme", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  primarySwatch: Colors.green,
                  inputDecorationTheme: InputDecorationTheme(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    showSearch(context: context, delegate: MySearchDelegate());
                  },
                  child: Text("Show Search (Green Theme)"),
                ),
              ),
              SizedBox(height: 20),
              Text("ShowSearch - Custom Text Style", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  showSearch(context: context, delegate: MySearchDelegate());
                },
                child: Text("Show Search", style: TextStyle(fontSize: 20, color: Colors.purple)),
              ),
              SizedBox(height: 20),
              Text("ShowSearch - Custom Background Color", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () {
                  showSearch(context: context, delegate: MySearchDelegate());
                },
                child: Text("Show Search (Orange Background)"),
              ),
              SizedBox(height: 20),
              Text("ShowSearch - Custom Padding", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
                onPressed: () {
                  showSearch(context: context, delegate: MySearchDelegate());
                },
                child: Text("Show Search (Custom Padding)"),
              ),
              SizedBox(height: 20),
              Text("ShowSearch - Custom Border Radius", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  showSearch(context: context, delegate: MySearchDelegate());
                },
                child: Text("Show Search (Rounded Border)"),
              ),
              SizedBox(height: 20),
              Text("ShowSearch - Wrapped in Padding", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    showSearch(context: context, delegate: MySearchDelegate());
                  },
                  child: Text("Show Search (Wrapped in Padding)"),
                ),
              ),
              SizedBox(height: 20),
              // The showSearch function itself doesn't directly wrap another widget, it's a function that triggers a route.
              // Therefore, we can't show it wrapping another widget in the same way as a widget like Padding.
              // Instead, we show it as a standalone button.
              // Text("ShowSearch - Wrapping a Container (Not Applicable)", style: TextStyle(fontWeight: FontWeight.bold)),
              // SizedBox(height: 8),
              // Container(
              //   child: ElevatedButton(
              //     onPressed: () {
              //       showSearch(context: context, delegate: MySearchDelegate());
              //     },
              //     child: Text("Show Search (Wrapped in Container)"),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text('Results for: $query'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text('Suggestions for: $query'),
    );
  }
}
