import 'package:flutter/material.dart';

class SliverMultiBoxAdaptorElementScreen extends StatelessWidget {
  const SliverMultiBoxAdaptorElementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverMultiBoxAdaptorElement Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("SliverMultiBoxAdaptorElement is an abstract class and cannot be directly instantiated. It's used internally by slivers like SliverList, SliverGrid etc. Therefore, we will demonstrate its usage by showing examples of SliverList and SliverGrid."),
              const SizedBox(height: 20),
              const Text("SliverList Variations:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: CustomScrollView(
                  scrollDirection: Axis.horizontal,
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Container(
                            margin: const EdgeInsets.all(8.0),
                            width: 100,
                            height: 100,
                            color: Colors.blue[100 * (index % 9 + 1)],
                            alignment: Alignment.center,
                            child: Text('Item $index', style: const TextStyle(color: Colors.black)),
                          );
                        },
                        childCount: 10,
                      ),
                    ),
                  ],
                ),
              ),
              const Text("SliverList - Basic", style: TextStyle(fontSize: 14)),
              const SizedBox(height: 20),
              SizedBox(
                height: 200,
                child: CustomScrollView(
                  scrollDirection: Axis.horizontal,
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Container(
                            margin: const EdgeInsets.all(8.0),
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.green[100 * (index % 9 + 1)],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Text('Item $index', style: const TextStyle(color: Colors.white)),
                          );
                        },
                        childCount: 10,
                      ),
                    ),
                  ],
                ),
              ),
              const Text("SliverList - Rounded Corners", style: TextStyle(fontSize: 14)),
              const SizedBox(height: 20),
              const Text("SliverGrid Variations:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: CustomScrollView(
                  scrollDirection: Axis.horizontal,
                  slivers: [
                    SliverGrid(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        childAspectRatio: 1.0,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Container(
                            color: Colors.red[100 * (index % 9 + 1)],
                            alignment: Alignment.center,
                            child: Text('Item $index', style: const TextStyle(color: Colors.white)),
                          );
                        },
                        childCount: 9,
                      ),
                    ),
                  ],
                ),
              ),
              const Text("SliverGrid - Basic", style: TextStyle(fontSize: 14)),
              const SizedBox(height: 20),
              SizedBox(
                height: 200,
                child: CustomScrollView(
                  scrollDirection: Axis.horizontal,
                  slivers: [
                    SliverGrid(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 100,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        childAspectRatio: 1.0,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[100 * (index % 9 + 1)],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            alignment: Alignment.center,
                            child: Text('Item $index', style: const TextStyle(color: Colors.black)),
                          );
                        },
                        childCount: 9,
                      ),
                    ),
                  ],
                ),
              ),
              const Text("SliverGrid - Rounded Corners", style: TextStyle(fontSize: 14)),
            ],
          ),
        ),
      ),
    );
  }
}
