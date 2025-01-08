import 'package:flutter/material.dart';

class RenderFlexScreen extends StatelessWidget {
  const RenderFlexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RenderFlex Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Row Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  Tooltip(
                    message: "Row - Default",
                    child: Row(
                      children: const [
                        Text("Item 1"),
                        Text("Item 2"),
                        Text("Item 3"),
                      ],
                    ),
                  ),
                  Tooltip(
                    message: "Row - MainAxisAlignment.spaceAround",
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text("Item 1"),
                        Text("Item 2"),
                        Text("Item 3"),
                      ],
                    ),
                  ),
                  Tooltip(
                    message: "Row - MainAxisAlignment.spaceBetween",
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Item 1"),
                        Text("Item 2"),
                        Text("Item 3"),
                      ],
                    ),
                  ),
                  Tooltip(
                    message: "Row - MainAxisAlignment.end",
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text("Item 1"),
                        Text("Item 2"),
                        Text("Item 3"),
                      ],
                    ),
                  ),
                  Tooltip(
                    message: "Row - CrossAxisAlignment.start",
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Item 1"),
                        Text("Item 2"),
                        Text("Item 3"),
                      ],
                    ),
                  ),
                  Tooltip(
                    message: "Row - CrossAxisAlignment.end",
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text("Item 1"),
                        Text("Item 2"),
                        Text("Item 3"),
                      ],
                    ),
                  ),
                  Tooltip(
                    message: "Row - CrossAxisAlignment.stretch",
                    child: SizedBox(
                      height: 100,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Text("Item 1"),
                          Text("Item 2"),
                          Text("Item 3"),
                        ],
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "Row - With Expanded",
                    child: Row(
                      children: [
                        const Text("Item 1"),
                        Expanded(child: Container(color: Colors.grey, child: const Text("Item 2 - Expanded"))),
                        const Text("Item 3"),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text("Column Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  Tooltip(
                    message: "Column - Default",
                    child: Column(
                      children: const [
                        Text("Item 1"),
                        Text("Item 2"),
                        Text("Item 3"),
                      ],
                    ),
                  ),
                  Tooltip(
                    message: "Column - MainAxisAlignment.spaceAround",
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text("Item 1"),
                        Text("Item 2"),
                        Text("Item 3"),
                      ],
                    ),
                  ),
                  Tooltip(
                    message: "Column - MainAxisAlignment.spaceBetween",
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Item 1"),
                        Text("Item 2"),
                        Text("Item 3"),
                      ],
                    ),
                  ),
                  Tooltip(
                    message: "Column - MainAxisAlignment.end",
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text("Item 1"),
                        Text("Item 2"),
                        Text("Item 3"),
                      ],
                    ),
                  ),
                  Tooltip(
                    message: "Column - CrossAxisAlignment.start",
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Item 1"),
                        Text("Item 2"),
                        Text("Item 3"),
                      ],
                    ),
                  ),
                  Tooltip(
                    message: "Column - CrossAxisAlignment.end",
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text("Item 1"),
                        Text("Item 2"),
                        Text("Item 3"),
                      ],
                    ),
                  ),
                  Tooltip(
                    message: "Column - CrossAxisAlignment.stretch",
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Text("Item 1"),
                          Text("Item 2"),
                          Text("Item 3"),
                        ],
                      ),
                    ),
                  ),
                  Tooltip(
                    message: "Column - With Expanded",
                    child: SizedBox(
                      height: 100,
                      child: Column(
                        children: [
                          const Text("Item 1"),
                          Expanded(child: Container(color: Colors.grey, child: const Text("Item 2 - Expanded"))),
                          const Text("Item 3"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
