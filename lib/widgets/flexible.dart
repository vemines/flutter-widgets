import 'package:flutter/material.dart';

class FlexibleScreen extends StatelessWidget {
  const FlexibleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Flexible - Default"),
            ),
            Row(
              children: [
                Flexible(
                  child: Container(
                    color: Colors.blue,
                    height: 50,
                    child: Center(child: Text("Flexible 1", style: TextStyle(color: Colors.white))),
                  ),
                ),
                Flexible(
                  child: Container(
                    color: Colors.green,
                    height: 50,
                    child: Center(child: Text("Flexible 2", style: TextStyle(color: Colors.white))),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Flexible - With Flex Values"),
            ),
            Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                    height: 50,
                    child: Center(child: Text("Flex 2", style: TextStyle(color: Colors.white))),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.orange,
                    height: 50,
                    child: Center(child: Text("Flex 1", style: TextStyle(color: Colors.white))),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Flexible - With Different Fit"),
            ),
            Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    color: Colors.purple,
                    height: 50,
                    child: Center(child: Text("Tight Fit", style: TextStyle(color: Colors.white))),
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    color: Colors.teal,
                    height: 50,
                    child: Center(child: Text("Loose Fit", style: TextStyle(color: Colors.white))),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Flexible - With Expanded"),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.brown,
                    height: 50,
                    child: Center(child: Text("Expanded", style: TextStyle(color: Colors.white))),
                  ),
                ),
                Flexible(
                  child: Container(
                    color: Colors.grey,
                    height: 50,
                    child: Center(child: Text("Flexible", style: TextStyle(color: Colors.white))),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Flexible - With Min/Max Size"),
            ),
            Row(
              children: [
                Flexible(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minWidth: 100, maxWidth: 200),
                    child: Container(
                      color: Colors.lime,
                      height: 50,
                      child: Center(child: Text("Min/Max Size", style: TextStyle(color: Colors.black))),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    color: Colors.cyan,
                    height: 50,
                    child: Center(child: Text("Flexible", style: TextStyle(color: Colors.white))),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
