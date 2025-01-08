import 'package:flutter/material.dart';

class PositionedTransitionScreen extends StatelessWidget {
  const PositionedTransitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PositionedTransition Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("PositionedTransition - Basic Usage", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                height: 100,
                width: 200,
                color: Colors.grey[200],
                child: Stack(
                  children: [
                    PositionedTransition(
                      rect: RelativeRectTween(
                        begin: RelativeRect.fromLTRB(0, 0, 100, 100),
                        end: RelativeRect.fromLTRB(100, 50, 0, 50),
                      ).animate(AlwaysStoppedAnimation(0.5)),
                      child: Container(
                        color: Colors.blue,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("PositionedTransition - Different Animation", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                height: 100,
                width: 200,
                color: Colors.grey[200],
                child: Stack(
                  children: [
                    PositionedTransition(
                      rect: RelativeRectTween(
                        begin: RelativeRect.fromLTRB(0, 0, 150, 150),
                        end: RelativeRect.fromLTRB(150, 0, 0, 150),
                      ).animate(AlwaysStoppedAnimation(0.75)),
                      child: Container(
                        color: Colors.green,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("PositionedTransition - With Different Begin/End", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                height: 150,
                width: 250,
                color: Colors.grey[200],
                child: Stack(
                  children: [
                    PositionedTransition(
                      rect: RelativeRectTween(
                        begin: RelativeRect.fromLTRB(20, 20, 180, 180),
                        end: RelativeRect.fromLTRB(100, 80, 20, 20),
                      ).animate(AlwaysStoppedAnimation(0.3)),
                      child: Container(
                        color: Colors.red,
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("PositionedTransition - With Larger Container", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                height: 200,
                width: 300,
                color: Colors.grey[200],
                child: Stack(
                  children: [
                    PositionedTransition(
                      rect: RelativeRectTween(
                        begin: RelativeRect.fromLTRB(50, 50, 200, 200),
                        end: RelativeRect.fromLTRB(150, 100, 50, 50),
                      ).animate(AlwaysStoppedAnimation(0.9)),
                      child: Container(
                        color: Colors.orange,
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
