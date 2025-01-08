import 'package:flutter/material.dart';

class BottomAppBarScreen extends StatelessWidget {
  const BottomAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomAppBar Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("BottomAppBar Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  Column(
                    children: [
                      Text("Default BottomAppBar"),
                      BottomAppBar(
                        child: SizedBox(height: 50, child: Center(child: Text("Default"))),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("BottomAppBar - Colored"),
                      BottomAppBar(
                        color: Colors.blue,
                        child: SizedBox(height: 50, child: Center(child: Text("Colored", style: TextStyle(color: Colors.white)))),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("BottomAppBar - Shape"),
                      BottomAppBar(
                        shape: CircularNotchedRectangle(),
                        child: SizedBox(height: 50, child: Center(child: Text("Shaped"))),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("BottomAppBar - Elevation"),
                      BottomAppBar(
                        elevation: 10,
                        child: SizedBox(height: 50, child: Center(child: Text("Elevated"))),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("BottomAppBar - Padding"),
                      BottomAppBar(
                        padding: EdgeInsets.all(10),
                        child: SizedBox(height: 50, child: Center(child: Text("Padded"))),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("BottomAppBar - With Child"),
                      BottomAppBar(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                            IconButton(icon: Icon(Icons.search), onPressed: () {}),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("BottomAppBar - Notched"),
                      BottomAppBar(
                        shape: CircularNotchedRectangle(),
                        notchMargin: 8.0,
                        child: SizedBox(height: 50, child: Center(child: Text("Notched"))),
                      ),
                    ],
                  ),
                  // BottomAppBar without child is not very useful, so we don't show it.
                  // BottomAppBar(), // This would be an empty bar, not very demonstrative.
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
