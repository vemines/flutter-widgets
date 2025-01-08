import 'package:flutter/material.dart';

class MediaQueryScreen extends StatelessWidget {
  const MediaQueryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MediaQuery Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("MediaQuery - Default"),
              const SizedBox(height: 8),
              const Text("MediaQuery is used to get information about the screen. It doesn't render anything on its own."),
              const SizedBox(height: 16),
              const Text("MediaQuery - With Container"),
              const SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                child: MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.2)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Text with increased scale factor"),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text("MediaQuery - With different orientation"),
              const SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                child: MediaQuery(
                  data: MediaQuery.of(context).copyWith(orientation: Orientation.landscape),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Landscape orientation"),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text("MediaQuery - With different size"),
              const SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                child: MediaQuery(
                  data: MediaQuery.of(context).copyWith(size: const Size(300, 200)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Size changed"),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text("MediaQuery - With different padding"),
              const SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                child: MediaQuery(
                  data: MediaQuery.of(context).copyWith(padding: const EdgeInsets.all(20)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Padding changed"),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text("MediaQuery - With different viewInsets"),
              const SizedBox(height: 8),
              Container(
                color: Colors.grey[200],
                child: MediaQuery(
                  data: MediaQuery.of(context).copyWith(viewInsets: const EdgeInsets.only(bottom: 50)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("ViewInsets changed"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
