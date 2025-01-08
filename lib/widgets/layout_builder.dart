import 'package:flutter/material.dart';

class LayoutBuilderScreen extends StatelessWidget {
  const LayoutBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutBuilder Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("LayoutBuilder Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Text("LayoutBuilder - Simple Container"),
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Container(
                    color: Colors.blue.shade100,
                    height: 100,
                    width: constraints.maxWidth / 2,
                    child: Center(child: Text("Width: ${constraints.maxWidth / 2}")),
                  );
                },
              ),
              SizedBox(height: 20),
              Text("LayoutBuilder - Different Height"),
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Container(
                    color: Colors.green.shade100,
                    height: 150,
                    width: constraints.maxWidth / 3,
                    child: Center(child: Text("Width: ${constraints.maxWidth / 3}")),
                  );
                },
              ),
              SizedBox(height: 20),
              Text("LayoutBuilder - With Min Width"),
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Container(
                    color: Colors.orange.shade100,
                    height: 100,
                    constraints: BoxConstraints(minWidth: 200),
                    child: Center(child: Text("Min Width: 200")),
                  );
                },
              ),
              SizedBox(height: 20),
              Text("LayoutBuilder - With Max Width"),
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Container(
                    color: Colors.purple.shade100,
                    height: 100,
                    constraints: BoxConstraints(maxWidth: 300),
                    child: Center(child: Text("Max Width: 300")),
                  );
                },
              ),
              SizedBox(height: 20),
              Text("LayoutBuilder - With Text"),
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Text("Current Width: ${constraints.maxWidth.toStringAsFixed(2)}", style: TextStyle(fontSize: 16));
                },
              ),
              SizedBox(height: 20),
              Text("LayoutBuilder - With Padding"),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Container(
                      color: Colors.red.shade100,
                      height: 100,
                      width: constraints.maxWidth / 2,
                      child: Center(child: Text("Width: ${constraints.maxWidth / 2}")),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
