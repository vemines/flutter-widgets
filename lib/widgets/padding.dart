import 'package:flutter/material.dart';

class PaddingScreen extends StatelessWidget {
  const PaddingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Padding Showcase"),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(border: Border.all(width: .5)),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "This code Container for visual Padding effect with border.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(width: .5)),
                padding: const EdgeInsets.all(8.0),
                child: Text("Padding 8"),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(width: .5)),
                padding: const EdgeInsets.all(16),
                child: Container(
                  color: Colors.blue[100],
                  width: 100,
                  height: 100,
                  child: Text("Padding 16 Container"),
                ),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(width: .5)),
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                child: Text("Padding - left: 20, right: 20, top: 10, bottom: 10"),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(width: .5)),
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                child: Container(
                  color: Colors.green,
                  width: 50,
                  height: 50,
                ),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(width: .5)),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Text("Padding - Symmetric horizontal: 30, vertical: 15"),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(width: .5)),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Container(
                  color: Colors.red,
                  width: 50,
                  height: 50,
                ),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(width: .5)),
                padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
                child: Text("Padding - FromLTRB 10, 20, 30, 40"),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(width: .5)),
                padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
                child: Container(
                  color: Colors.yellow,
                  width: 50,
                  height: 50,
                ),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(width: .5)),
                padding: EdgeInsets.zero,
                child: Text("Padding 0 EdgeInsets.zero"),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(width: .5)),
                padding: EdgeInsets.zero,
                child: Container(
                  color: Colors.purple,
                  width: 50,
                  height: 50,
                ),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(width: .5)),
                padding: EdgeInsets.only(left: 50),
                child: Text("Padding - .only Left 50"),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(width: .5)),
                padding: EdgeInsets.only(left: 50),
                child: Container(
                  color: Colors.orange,
                  width: 50,
                  height: 50,
                ),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(width: .5)),
                padding: EdgeInsets.only(right: 50),
                child: Text("Padding - .only Right 50"),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(width: .5)),
                padding: EdgeInsets.only(right: 50),
                child: Container(
                  color: Colors.teal,
                  width: 50,
                  height: 50,
                ),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(width: .5)),
                padding: EdgeInsets.only(top: 50),
                child: Text("Padding - .only Top 50"),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(width: .5)),
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  color: Colors.brown,
                  width: 50,
                  height: 50,
                ),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(width: .5)),
                padding: EdgeInsets.only(bottom: 50),
                child: Text("Padding - .only Bottom 50"),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(width: .5)),
                padding: EdgeInsets.only(bottom: 50),
                child: Container(
                  color: Colors.grey,
                  width: 50,
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
