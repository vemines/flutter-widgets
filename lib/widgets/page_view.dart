import 'package:flutter/material.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PageView Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("PageView - Basic"),
            ),
            SizedBox(
              height: 200,
              child: PageView(
                children: [
                  Container(color: Colors.red, child: const Center(child: Text("Page 1", style: TextStyle(color: Colors.white)))),
                  Container(color: Colors.green, child: const Center(child: Text("Page 2", style: TextStyle(color: Colors.white)))),
                  Container(color: Colors.blue, child: const Center(child: Text("Page 3", style: TextStyle(color: Colors.white)))),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("PageView - With Page Snapping Disabled"),
            ),
            SizedBox(
              height: 200,
              child: PageView(
                pageSnapping: false,
                children: [
                  Container(color: Colors.orange, child: const Center(child: Text("Page 1", style: TextStyle(color: Colors.white)))),
                  Container(color: Colors.purple, child: const Center(child: Text("Page 2", style: TextStyle(color: Colors.white)))),
                  Container(color: Colors.teal, child: const Center(child: Text("Page 3", style: TextStyle(color: Colors.white)))),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("PageView - With Controller"),
            ),
            SizedBox(
              height: 200,
              child: _PageViewWithController(),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("PageView - Reverse Direction"),
            ),
            SizedBox(
              height: 200,
              child: PageView(
                reverse: true,
                children: [
                  Container(color: Colors.brown, child: const Center(child: Text("Page 1", style: TextStyle(color: Colors.white)))),
                  Container(color: Colors.grey, child: const Center(child: Text("Page 2", style: TextStyle(color: Colors.white)))),
                  Container(color: Colors.indigo, child: const Center(child: Text("Page 3", style: TextStyle(color: Colors.white)))),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("PageView - Vertical Direction"),
            ),
            SizedBox(
              height: 200,
              child: PageView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(color: Colors.lime, child: const Center(child: Text("Page 1", style: TextStyle(color: Colors.black)))),
                  Container(color: Colors.cyan, child: const Center(child: Text("Page 2", style: TextStyle(color: Colors.black)))),
                  Container(color: Colors.amber, child: const Center(child: Text("Page 3", style: TextStyle(color: Colors.black)))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PageViewWithController extends StatefulWidget {
  @override
  _PageViewWithControllerState createState() => _PageViewWithControllerState();
}

class _PageViewWithControllerState extends State<_PageViewWithController> {
  final PageController _pageController = PageController(initialPage: 1);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: [
        Container(color: Colors.pink, child: const Center(child: Text("Page 1", style: TextStyle(color: Colors.white)))),
        Container(color: Colors.deepOrange, child: const Center(child: Text("Page 2", style: TextStyle(color: Colors.white)))),
        Container(color: Colors.deepPurple, child: const Center(child: Text("Page 3", style: TextStyle(color: Colors.white)))),
      ],
    );
  }
}
