import 'package:flutter/material.dart';

class AlertDialogScreen extends StatelessWidget {
  const AlertDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialog Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("AlertDialog - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Default Alert'),
                        content: Text('This is a default alert dialog.'),
                        actions: <Widget>[
                          TextButton(
                            child: Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Show Default Alert"),
              ),
              SizedBox(height: 20),
              Text("AlertDialog - Custom Title and Content",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Custom Title',
                            style: TextStyle(color: Colors.blue, fontSize: 20)),
                        content: Text('This alert has a custom title and content.',
                            style: TextStyle(color: Colors.green)),
                        actions: <Widget>[
                          TextButton(
                            child: Text('Close', style: TextStyle(color: Colors.red)),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Show Custom Alert"),
              ),
              SizedBox(height: 20),
              Text("AlertDialog - Custom Actions", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Custom Actions'),
                        content: Text('This alert has custom actions.'),
                        actions: <Widget>[
                          ElevatedButton(
                            child: Text('Confirm'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          OutlinedButton(
                            child: Text('Cancel'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Show Custom Actions Alert"),
              ),
              SizedBox(height: 20),
              Text("AlertDialog - With Scrollable Content",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Scrollable Content'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: List.generate(
                                20,
                                (index) => Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8),
                                      child: Text('Item $index'),
                                    )),
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Show Scrollable Content Alert"),
              ),
              SizedBox(height: 20),
              Text("AlertDialog - With BorderRadius",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Shaped Alert'),
                        content: Text('This alert has a custom shape.'),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                        actions: <Widget>[
                          TextButton(
                            child: Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Show BorderRadius Alert"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
