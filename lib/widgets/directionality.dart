import 'package:flutter/material.dart';

class DirectionalityScreen extends StatelessWidget {
  const DirectionalityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Directionality Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Directionality - LTR with Text"),
              Directionality(
                textDirection: TextDirection.ltr,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: const Text("This text is LTR"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Directionality - RTL with Text"),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[300],
                  child: const Text("هذا النص هو RTL"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Directionality - LTR with Row"),
              Directionality(
                textDirection: TextDirection.ltr,
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("Directionality - RTL with Row"),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("Directionality - LTR with Icon"),
              Directionality(
                textDirection: TextDirection.ltr,
                child: const Icon(Icons.arrow_forward),
              ),
              const SizedBox(height: 20),
              const Text("Directionality - RTL with Icon"),
              Directionality(
                textDirection: TextDirection.rtl,
                child: const Icon(Icons.arrow_forward),
              ),
              const SizedBox(height: 20),
              const Text("Directionality - LTR with Container"),
              Directionality(
                textDirection: TextDirection.ltr,
                child: Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 50,
                  color: Colors.orange,
                  child: const Text("LTR Container"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Directionality - RTL with Container"),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 50,
                  color: Colors.purple,
                  child: const Text("RTL Container"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
