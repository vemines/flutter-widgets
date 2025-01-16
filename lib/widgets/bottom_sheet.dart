import 'package:flutter/material.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomSheet Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Modal Bottom Sheet - Default",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return const SizedBox(
                        height: 200,
                        child: Center(
                          child: Text('This is a modal bottom sheet'),
                        ),
                      );
                    },
                  );
                },
                child: const Text('Show Modal Bottom Sheet'),
              ),
              const SizedBox(height: 20),
              const Text("Persistent Bottom Sheet - Default",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Builder(
                builder: (context) => ElevatedButton(
                  onPressed: () {
                    showBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return const SizedBox(
                          height: 100,
                          child: Center(
                            child: Text('This is a persistent BottomSheet (not modal)'),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text('Show Persistent Bottom Sheet'),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Modal Bottom Sheet - Custom Height",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return const SizedBox(
                        height: 300,
                        child: Center(
                          child: Text('This is a modal bottom sheet with custom height'),
                        ),
                      );
                    },
                  );
                },
                child: const Text('Show Modal Bottom Sheet - Custom Height'),
              ),
              const SizedBox(height: 20),
              const Text("Persistent Bottom Sheet - Custom Background Color",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Builder(
                builder: (context) => ElevatedButton(
                  onPressed: () {
                    showBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          color: Colors.amber,
                          height: 100,
                          child: const Center(
                            child: Text(
                                'This is a persistent bottom sheet with custom background color'),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text('Show Persistent Bottom Sheet - Custom Background Color'),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Modal Bottom Sheet - Custom Shape",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                    ),
                    builder: (BuildContext context) {
                      return const SizedBox(
                        height: 200,
                        child: Center(
                          child: Text('This is a modal bottom sheet with custom shape'),
                        ),
                      );
                    },
                  );
                },
                child: const Text('Show Modal Bottom Sheet - Custom Shape'),
              ),
              const SizedBox(height: 20),
              const Text("Persistent Bottom Sheet - Custom Elevation",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Builder(
                builder: (context) => ElevatedButton(
                  onPressed: () {
                    showBottomSheet(
                      context: context,
                      elevation: 10,
                      builder: (BuildContext context) {
                        return const SizedBox(
                          height: 100,
                          child: Center(
                            child: Text('This is a persistent bottom sheet with custom elevation'),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text('Show Persistent Bottom Sheet - Custom Elevation'),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Modal Bottom Sheet - Draggable",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return DraggableScrollableSheet(
                        initialChildSize: 0.5,
                        minChildSize: 0.25,
                        maxChildSize: 0.9,
                        builder: (BuildContext context, ScrollController scrollController) {
                          return Container(
                            color: Colors.lightBlue,
                            child: ListView.builder(
                              controller: scrollController,
                              itemCount: 25,
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(title: Text('Item $index'));
                              },
                            ),
                          );
                        },
                      );
                    },
                  );
                },
                child: const Text('Show Modal Bottom Sheet - Draggable'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
