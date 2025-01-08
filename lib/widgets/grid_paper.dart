import 'package:flutter/material.dart';

class GridPaperScreen extends StatelessWidget {
  const GridPaperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridPaper Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("GridPaper - Default"),
            ),
            const GridPaper(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("GridPaper - Color and Interval"),
            ),
            GridPaper(
              color: Colors.blue,
              interval: 100,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("GridPaper - Subdivisions"),
            ),
            GridPaper(
              color: Colors.green,
              divisions: 5,
              subdivisions: 2,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("GridPaper - With Child (Container)"),
            ),
            GridPaper(
              child: Container(
                color: Colors.yellow.withValues(alpha: 255 * 0.3),
                height: 150,
                width: 150,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("GridPaper - With Child (Text)"),
            ),
            GridPaper(
              child: const Text("GridPaper Text"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("GridPaper - Color and Interval with Child"),
            ),
            GridPaper(
              color: Colors.red,
              interval: 50,
              child: Container(
                color: Colors.orange.withValues(alpha: 255 * 0.3),
                height: 100,
                width: 100,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("GridPaper - Subdivisions with Child"),
            ),
            GridPaper(
              color: Colors.purple,
              divisions: 3,
              subdivisions: 3,
              child: Container(
                color: Colors.pink.withValues(alpha: 255 * 0.3),
                height: 80,
                width: 80,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
