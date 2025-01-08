import 'package:flutter/material.dart';

class FractionallySizedBoxScreen extends StatelessWidget {
  const FractionallySizedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FractionallySizedBox Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("FractionallySizedBox - Width 0.5, Height 0.3", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                child: FractionallySizedBox(
                  widthFactor: 0.5,
                  heightFactor: 0.3,
                  child: Container(
                    color: Colors.blue,
                    child: Center(child: Text("50% width, 30% height", style: TextStyle(color: Colors.white))),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("FractionallySizedBox - Width 0.8, Height 0.6, Alignment Center", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                child: FractionallySizedBox(
                  widthFactor: 0.8,
                  heightFactor: 0.6,
                  alignment: Alignment.center,
                  child: Container(
                    color: Colors.green,
                    child: Center(child: Text("80% width, 60% height, centered", style: TextStyle(color: Colors.white))),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("FractionallySizedBox - Width 1.0, Height 0.2, Alignment Top Left", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                child: FractionallySizedBox(
                  widthFactor: 1.0,
                  heightFactor: 0.2,
                  alignment: Alignment.topLeft,
                  child: Container(
                    color: Colors.orange,
                    child: Center(child: Text("100% width, 20% height, top left", style: TextStyle(color: Colors.white))),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("FractionallySizedBox - Width 0.4, Height 0.9, Alignment Bottom Right", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                child: FractionallySizedBox(
                  widthFactor: 0.4,
                  heightFactor: 0.9,
                  alignment: Alignment.bottomRight,
                  child: Container(
                    color: Colors.purple,
                    child: Center(child: Text("40% width, 90% height, bottom right", style: TextStyle(color: Colors.white))),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("FractionallySizedBox - Width 0.7, Height 0.7, with a Container", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                child: FractionallySizedBox(
                  widthFactor: 0.7,
                  heightFactor: 0.7,
                  child: Container(
                    color: Colors.red,
                    child: Center(child: Text("70% width, 70% height", style: TextStyle(color: Colors.white))),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // The following would cause an error because FractionallySizedBox needs a parent with defined size.
              // Text("FractionallySizedBox - Without a parent (Error)", style: TextStyle(fontWeight: FontWeight.bold)),
              // SizedBox(height: 8),
              // FractionallySizedBox(
              //   widthFactor: 0.5,
              //   heightFactor: 0.5,
              //   child: Container(
              //     color: Colors.yellow,
              //     child: Center(child: Text("50% width, 50% height", style: TextStyle(color: Colors.black))),
              //   ),
              // ),
              Text("Note: FractionallySizedBox requires a parent with defined size. The commented out example would cause an error.", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12)),
            ],
          ),
        ),
      ),
    );
  }
}
