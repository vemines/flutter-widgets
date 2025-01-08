import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDialogActionScreen extends StatelessWidget {
  const CupertinoDialogActionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CupertinoDialogAction Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Default CupertinoDialogAction:", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  CupertinoDialogAction(
                    child: Text("Default Action"),
                    onPressed: () {},
                  ),
                  Tooltip(
                    message: "Default Action",
                    child: CupertinoDialogAction(
                      child: Text("Default Action with Tooltip"),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Styled CupertinoDialogAction:", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  CupertinoDialogAction(
                    child: Text("Red Text", style: TextStyle(color: Colors.red)),
                    onPressed: () {},
                  ),
                  Tooltip(
                    message: "Red Text",
                    child: CupertinoDialogAction(
                      child: Text("Red Text with Tooltip", style: TextStyle(color: Colors.red)),
                      onPressed: () {},
                    ),
                  ),
                  CupertinoDialogAction(
                    child: Text("Bold Text", style: TextStyle(fontWeight: FontWeight.bold)),
                    onPressed: () {},
                  ),
                  Tooltip(
                    message: "Bold Text",
                    child: CupertinoDialogAction(
                      child: Text("Bold Text with Tooltip", style: TextStyle(fontWeight: FontWeight.bold)),
                      onPressed: () {},
                    ),
                  ),
                  CupertinoDialogAction(
                    child: Text("Large Text", style: TextStyle(fontSize: 20)),
                    onPressed: () {},
                  ),
                  Tooltip(
                    message: "Large Text",
                    child: CupertinoDialogAction(
                      child: Text("Large Text with Tooltip", style: TextStyle(fontSize: 20)),
                      onPressed: () {},
                    ),
                  ),
                  CupertinoDialogAction(
                    isDefaultAction: true,
                    child: Text("Default Action (isDefaultAction)", style: TextStyle(color: Colors.blue)),
                    onPressed: () {},
                  ),
                  Tooltip(
                    message: "Default Action (isDefaultAction)",
                    child: CupertinoDialogAction(
                      isDefaultAction: true,
                      child: Text("Default Action (isDefaultAction) with Tooltip", style: TextStyle(color: Colors.blue)),
                      onPressed: () {},
                    ),
                  ),
                  CupertinoDialogAction(
                    isDestructiveAction: true,
                    child: Text("Destructive Action (isDestructiveAction)", style: TextStyle(color: Colors.red)),
                    onPressed: () {},
                  ),
                  Tooltip(
                    message: "Destructive Action (isDestructiveAction)",
                    child: CupertinoDialogAction(
                      isDestructiveAction: true,
                      child: Text("Destructive Action (isDestructiveAction) with Tooltip", style: TextStyle(color: Colors.red)),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("CupertinoDialogAction with different onPressed:", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  CupertinoDialogAction(
                    child: Text("Action with print"),
                    onPressed: () {
                      print("Action Pressed");
                    },
                  ),
                  Tooltip(
                    message: "Action with print",
                    child: CupertinoDialogAction(
                      child: Text("Action with print and Tooltip"),
                      onPressed: () {
                        print("Action Pressed");
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("CupertinoDialogAction wrapping a Text widget:", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CupertinoDialogAction(
                child: Text("Wrapped Text"),
                onPressed: () {},
              ),
              SizedBox(height: 20),
              Text("CupertinoDialogAction wrapping a Container widget:", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              CupertinoDialogAction(
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[200],
                  child: Text("Wrapped Container"),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
