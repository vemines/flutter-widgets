import 'package:flutter/material.dart';

class RenderSliverFillRemainingScreen extends StatelessWidget {
  const RenderSliverFillRemainingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RenderSliverFillRemaining Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("RenderSliverFillRemaining Variations:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),

            // Variation 1: Default RenderSliverFillRemaining
            Text("RenderSliverFillRemaining - Default",
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            SizedBox(
              height: 100,
              child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    child: Container(
                      color: Colors.blue.shade100,
                      alignment: Alignment.center,
                      child: Text("Default Fill", style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Variation 2: RenderSliverFillRemaining with a different color
            Text("RenderSliverFillRemaining - Green Background",
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            SizedBox(
              height: 100,
              child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    child: Container(
                      color: Colors.green.shade100,
                      alignment: Alignment.center,
                      child: Text("Green Fill", style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Variation 4: RenderSliverFillRemaining with hasScrollBody false
            Text("RenderSliverFillRemaining - hasScrollBody false",
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            SizedBox(
              height: 100,
              child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Container(
                      color: Colors.orange.shade100,
                      alignment: Alignment.center,
                      child: Text("No Scroll Body", style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Variation 5: RenderSliverFillRemaining with fillOverscroll
            Text("RenderSliverFillRemaining - fillOverscroll true",
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            SizedBox(
              height: 100,
              child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    fillOverscroll: true,
                    child: Container(
                      color: Colors.purple.shade100,
                      alignment: Alignment.center,
                      child: Text("Fill Overscroll", style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Variation 6: RenderSliverFillRemaining with a different child
            Text("RenderSliverFillRemaining - Different Child",
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            SizedBox(
              height: 100,
              child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    child: Center(
                      child: Icon(Icons.star, size: 50, color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
