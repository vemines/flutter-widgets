import 'package:flutter/material.dart';

class ListWheelScrollViewScreen extends StatelessWidget {
  const ListWheelScrollViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListWheelScrollView Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ListWheelScrollView - Default", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 150,
              child: ListWheelScrollView(
                itemExtent: 50,
                children: List.generate(20, (index) => Center(child: Text("Item $index"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ListWheelScrollView - With Fixed Height and Different Item Extent", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 200,
              child: ListWheelScrollView(
                itemExtent: 70,
                children: List.generate(10, (index) => Container(
                  alignment: Alignment.center,
                  color: index % 2 == 0 ? Colors.grey[200] : Colors.grey[300],
                  child: Text("Item $index", style: TextStyle(fontSize: 18)),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ListWheelScrollView - With UseMagnifier and Magnification", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 150,
              child: ListWheelScrollView(
                itemExtent: 50,
                useMagnifier: true,
                magnification: 1.5,
                children: List.generate(20, (index) => Center(child: Text("Item $index"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ListWheelScrollView - With Over and Underlay", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 150,
              child: ListWheelScrollView(
                itemExtent: 50,
                overAndUnderCenterOpacity: 0.5,
                children: List.generate(20, (index) => Center(child: Text("Item $index"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ListWheelScrollView - With Different Physics", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 150,
              child: ListWheelScrollView(
                itemExtent: 50,
                physics: FixedExtentScrollPhysics(),
                children: List.generate(20, (index) => Center(child: Text("Item $index"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ListWheelScrollView - With Different Perspective", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 150,
              child: ListWheelScrollView(
                itemExtent: 50,
                perspective: 0.005,
                children: List.generate(20, (index) => Center(child: Text("Item $index"))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
