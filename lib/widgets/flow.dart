import 'package:flutter/material.dart';

class FlowScreen extends StatelessWidget {
  const FlowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flow Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Flow - Basic Example", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Flow(
                delegate: MyFlowDelegate(),
                children: [
                  Container(width: 50, height: 50, color: Colors.red),
                  Container(width: 50, height: 50, color: Colors.green),
                  Container(width: 50, height: 50, color: Colors.blue),
                ],
              ),
              SizedBox(height: 20),
              Text("Flow - With Different Sizes", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Flow(
                delegate: MyFlowDelegate(),
                children: [
                  Container(width: 30, height: 30, color: Colors.orange),
                  Container(width: 60, height: 60, color: Colors.purple),
                  Container(width: 90, height: 90, color: Colors.teal),
                ],
              ),
              SizedBox(height: 20),
              Text("Flow - With Custom Delegate", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Flow(
                delegate: CustomFlowDelegate(),
                children: [
                  Container(width: 50, height: 50, color: Colors.pink),
                  Container(width: 50, height: 50, color: Colors.lime),
                  Container(width: 50, height: 50, color: Colors.brown),
                ],
              ),
              SizedBox(height: 20),
              Text("Flow - With Different Alignment", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Flow(
                delegate: AlignedFlowDelegate(),
                children: [
                  Container(width: 50, height: 50, color: Colors.cyan),
                  Container(width: 50, height: 50, color: Colors.indigo),
                  Container(width: 50, height: 50, color: Colors.amber),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    double x = 0;
    double y = 0;
    for (int i = 0; i < context.childCount; i++) {
      context.paintChild(i, transform: Matrix4.translationValues(x, y, 0));
      x += 60;
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return false;
  }
}

class CustomFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    double x = 0;
    double y = 0;
    for (int i = 0; i < context.childCount; i++) {
      context.paintChild(i, transform: Matrix4.translationValues(x, y, 0));
      x += 20;
      y += 20;
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return false;
  }
}

class AlignedFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    double x = 0;
    double y = 0;
    for (int i = 0; i < context.childCount; i++) {
      context.paintChild(i, transform: Matrix4.translationValues(x, y, 0));
      x += 60;
      if (i % 2 == 0) {
        y += 20;
      } else {
        y -= 20;
      }
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return false;
  }
}
