import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoModalPopupRouteScreen extends StatelessWidget {
  const CupertinoModalPopupRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoModalPopupRoute Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoModalPopupRoute Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text(
                  "CupertinoModalPopupRoute - Usage (Not directly visible, used to show a modal)",
                  style: TextStyle(fontSize: 16)),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoModalPopupRoute(
                      builder: (BuildContext context) {
                        return Container(
                          color: Colors.white,
                          padding: const EdgeInsets.all(20),
                          child: const Center(
                            child: Text("Modal Content", style: TextStyle(fontSize: 24)),
                          ),
                        );
                      },
                    ),
                  );
                },
                child: const Text("Show Modal"),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoModalPopupRoute - Custom Background Color",
                  style: TextStyle(fontSize: 16)),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoModalPopupRoute(
                      builder: (BuildContext context) {
                        return Container(
                          color: Colors.lightBlue[100],
                          padding: const EdgeInsets.all(20),
                          child: const Center(
                            child: Text("Modal Content with Light Blue Background",
                                style: TextStyle(fontSize: 24)),
                          ),
                        );
                      },
                    ),
                  );
                },
                child: const Text("Show Modal with Light Blue Background"),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoModalPopupRoute - Custom Transition Duration",
                  style: TextStyle(fontSize: 16)),
              const Text("CupertinoModalPopupRoute - Custom Barrier Color",
                  style: TextStyle(fontSize: 16)),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoModalPopupRoute(
                      barrierColor: Colors.green.withValues(alpha: 255 * 0.5),
                      builder: (BuildContext context) {
                        return Container(
                          color: Colors.white,
                          padding: const EdgeInsets.all(20),
                          child: const Center(
                            child: Text("Modal Content with Green Barrier",
                                style: TextStyle(fontSize: 24)),
                          ),
                        );
                      },
                    ),
                  );
                },
                child: const Text("Show Modal with Green Barrier"),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoModalPopupRoute - Custom Barrier Dismissible",
                  style: TextStyle(fontSize: 16)),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoModalPopupRoute(
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return Container(
                          color: Colors.white,
                          padding: const EdgeInsets.all(20),
                          child: const Center(
                            child: Text("Modal Content with Non-Dismissible Barrier",
                                style: TextStyle(fontSize: 24)),
                          ),
                        );
                      },
                    ),
                  );
                },
                child: const Text("Show Modal with Non-Dismissible Barrier"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
