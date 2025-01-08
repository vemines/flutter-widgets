import 'package:flutter/material.dart';

class UnconstrainedBoxScreen extends StatelessWidget {
  const UnconstrainedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UnconstrainedBox Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("UnconstrainedBox - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Tooltip(
                message: "Default UnconstrainedBox with a Container child.",
                child: UnconstrainedBox(
                  child: Container(
                    color: Colors.blue,
                    width: 100,
                    height: 50,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("UnconstrainedBox - Larger Child", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Tooltip(
                message: "UnconstrainedBox with a larger Container child.",
                child: UnconstrainedBox(
                  child: Container(
                    color: Colors.green,
                    width: 200,
                    height: 100,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("UnconstrainedBox - With Alignment", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Tooltip(
                message: "UnconstrainedBox with alignment set to center.",
                child: UnconstrainedBox(
                  alignment: Alignment.center,
                  child: Container(
                    color: Colors.red,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("UnconstrainedBox - With Different Alignment", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Tooltip(
                message: "UnconstrainedBox with alignment set to bottom right.",
                child: UnconstrainedBox(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    color: Colors.orange,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("UnconstrainedBox - With Text Child", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Tooltip(
                message: "UnconstrainedBox with a Text child.",
                child: UnconstrainedBox(
                  child: Text("Hello", style: TextStyle(fontSize: 20)),
                ),
              ),
              SizedBox(height: 20),
              Text("UnconstrainedBox - With Padding", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Tooltip(
                message: "UnconstrainedBox with padding around the child.",
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: UnconstrainedBox(
                    child: Container(
                      color: Colors.purple,
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("UnconstrainedBox - Without Child (Commented Out)", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              // Tooltip(
              //   message: "UnconstrainedBox without a child. This will cause an error, so it's commented out.",
              //   child: UnconstrainedBox(),
              // ),
              Text("UnconstrainedBox without a child will cause an error because it requires a child widget.", style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}
