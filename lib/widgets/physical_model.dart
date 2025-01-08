import 'package:flutter/material.dart';

class PhysicalModelScreen extends StatelessWidget {
  const PhysicalModelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PhysicalModel Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("PhysicalModel - Basic"),
              PhysicalModel(
                color: Colors.blue,
                elevation: 5,
                shadowColor: Colors.black,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.white,
                  child: Center(child: Text("Basic")),
                ),
              ),
              SizedBox(height: 20),
              Text("PhysicalModel - Rounded Corners"),
              PhysicalModel(
                color: Colors.green,
                elevation: 10,
                shadowColor: Colors.grey,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  width: 120,
                  height: 120,
                  color: Colors.white,
                  child: Center(child: Text("Rounded")),
                ),
              ),
              SizedBox(height: 20),
              Text("PhysicalModel - Different Shape"),
              PhysicalModel(
                color: Colors.red,
                elevation: 3,
                shadowColor: Colors.black,
                shape: BoxShape.circle,
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.white,
                  child: Center(child: Text("Circle")),
                ),
              ),
              SizedBox(height: 20),
              Text("PhysicalModel - Clipping"),
              PhysicalModel(
                color: Colors.orange,
                elevation: 7,
                shadowColor: Colors.black,
                clipBehavior: Clip.antiAlias,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 150,
                  height: 100,
                  color: Colors.white,
                  child: Center(child: Text("Clipped")),
                ),
              ),
              SizedBox(height: 20),
              Text("PhysicalModel - With Child"),
              PhysicalModel(
                color: Colors.purple,
                elevation: 8,
                shadowColor: Colors.black,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.black,
                  child: Text("Child Text", style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 20),
              Text("PhysicalModel - No Child (Not Recommended)"),
              // PhysicalModel( // This will cause an error if no child is provided
              //   color: Colors.yellow,
              //   elevation: 2,
              //   shadowColor: Colors.black,
              // ),
              Text("PhysicalModel requires a child widget. This example is commented out to prevent an error."),
            ],
          ),
        ),
      ),
    );
  }
}
