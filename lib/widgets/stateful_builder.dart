import 'package:flutter/material.dart';

class StatefulBuilderScreen extends StatefulWidget {
  const StatefulBuilderScreen({super.key});

  @override
  State<StatefulBuilderScreen> createState() => _StatefulBuilderScreenState();
}

class _StatefulBuilderScreenState extends State<StatefulBuilderScreen> {
  bool isToggled = false;
  bool outerToggled = false;
  bool innerToggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StatefulBuilder Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("StatefulBuilder - Basic Usage", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
                  return Column(
                    children: [
                      Text(isToggled ? 'Toggled On' : 'Toggled Off'),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isToggled = !isToggled;
                          });
                        },
                        child: Text('Toggle'),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 20),
              Text("StatefulBuilder - With Initial Value",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
                  int counter = 5;
                  return Column(
                    children: [
                      Text('Counter: $counter'),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            counter++;
                          });
                        },
                        child: Text('Increment'),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 20),
              Text("StatefulBuilder - With Different State",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
                  String text = 'Initial Text';
                  return Column(
                    children: [
                      Text(text),
                      TextField(
                        onChanged: (value) {
                          setState(() {
                            text = value;
                          });
                        },
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 20),
              Text("StatefulBuilder - Nested StatefulBuilder",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
                  return Column(
                    children: [
                      Text(outerToggled ? 'Outer Toggled On' : 'Outer Toggled Off'),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            outerToggled = !outerToggled;
                          });
                        },
                        child: Text('Toggle Outer'),
                      ),
                      SizedBox(height: 10),
                      StatefulBuilder(
                        builder: (BuildContext context, StateSetter innerSetState) {
                          return Column(
                            children: [
                              Text(innerToggled ? 'Inner Toggled On' : 'Inner Toggled Off'),
                              ElevatedButton(
                                onPressed: () {
                                  innerSetState(() {
                                    innerToggled = !innerToggled;
                                  });
                                },
                                child: Text('Toggle Inner'),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
