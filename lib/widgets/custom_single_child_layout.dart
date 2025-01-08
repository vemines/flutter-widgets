import 'package:flutter/material.dart';

class CustomSingleChildLayoutScreen extends StatelessWidget {
  const CustomSingleChildLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CustomSingleChildLayout Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CustomSingleChildLayout Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("CustomSingleChildLayout - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CustomSingleChildLayout(
                delegate: const _MyCustomLayoutDelegate(),
                child: Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              const Text("CustomSingleChildLayout - Different Size", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CustomSingleChildLayout(
                delegate: const _MyCustomLayoutDelegate(),
                child: Container(
                  color: Colors.green,
                  width: 150,
                  height: 75,
                ),
              ),
              const SizedBox(height: 20),
              const Text("CustomSingleChildLayout - With Padding", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(20),
                child: CustomSingleChildLayout(
                  delegate: const _MyCustomLayoutDelegate(),
                  child: Container(
                    color: Colors.orange,
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CustomSingleChildLayout - With Alignment", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.bottomRight,
                child: CustomSingleChildLayout(
                  delegate: const _MyCustomLayoutDelegate(),
                  child: Container(
                    color: Colors.purple,
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CustomSingleChildLayout - With Margin", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Container(
                margin: const EdgeInsets.all(30),
                child: CustomSingleChildLayout(
                  delegate: const _MyCustomLayoutDelegate(),
                  child: Container(
                    color: Colors.red,
                    width: 70,
                    height: 70,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CustomSingleChildLayout - With Different Delegate", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CustomSingleChildLayout(
                delegate: const _MyCustomLayoutDelegate2(),
                child: Container(
                  color: Colors.teal,
                  width: 120,
                  height: 120,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MyCustomLayoutDelegate extends SingleChildLayoutDelegate {
  const _MyCustomLayoutDelegate();
  @override
  Size getSize(BoxConstraints constraints) {
    return const Size(200, 200);
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset(size.width / 2 - childSize.width / 2, size.height / 2 - childSize.height / 2);
  }

  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    return false;
  }
}

class _MyCustomLayoutDelegate2 extends SingleChildLayoutDelegate {
  const _MyCustomLayoutDelegate2();
  @override
  Size getSize(BoxConstraints constraints) {
    return const Size(150, 150);
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset(size.width / 4 - childSize.width / 4, size.height / 4 - childSize.height / 4);
  }

  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    return false;
  }
}
