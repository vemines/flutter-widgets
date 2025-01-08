import 'package:flutter/material.dart';

class TextOverflowScreen extends StatelessWidget {
  const TextOverflowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextOverflow Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("TextOverflow.clip - Default"),
              const SizedBox(height: 8),
              Container(
                width: 200,
                color: Colors.grey[200],
                child: const Text(
                  "This is a very long text that should overflow.",
                  overflow: TextOverflow.clip,
                ),
              ),
              const SizedBox(height: 16),
              const Text("TextOverflow.ellipsis - Ellipsis"),
              const SizedBox(height: 8),
              Container(
                width: 200,
                color: Colors.grey[200],
                child: const Text(
                  "This is a very long text that should overflow.",
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 16),
              const Text("TextOverflow.fade - Fade"),
              const SizedBox(height: 8),
              Container(
                width: 200,
                color: Colors.grey[200],
                child: const Text(
                  "This is a very long text that should overflow.",
                  overflow: TextOverflow.fade,
                ),
              ),
              const SizedBox(height: 16),
              const Text("TextOverflow.visible - Visible"),
              const SizedBox(height: 8),
              Container(
                width: 200,
                color: Colors.grey[200],
                child: const Text(
                  "This is a very long text that should overflow.",
                  overflow: TextOverflow.visible,
                ),
              ),
              const SizedBox(height: 16),
              const Text("TextOverflow.clip - With different style"),
              const SizedBox(height: 8),
              Container(
                width: 200,
                color: Colors.grey[200],
                child: const Text(
                  "This is a very long text that should overflow.",
                  overflow: TextOverflow.clip,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
                ),
              ),
              const SizedBox(height: 16),
              const Text("TextOverflow.ellipsis - With maxLines"),
              const SizedBox(height: 8),
              Container(
                width: 200,
                color: Colors.grey[200],
                child: const Text(
                  "This is a very long text that should overflow and be limited to two lines.",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              const SizedBox(height: 16),
              const Text("TextOverflow.fade - With maxLines"),
              const SizedBox(height: 8),
              Container(
                width: 200,
                color: Colors.grey[200],
                child: const Text(
                  "This is a very long text that should overflow and be limited to two lines.",
                  overflow: TextOverflow.fade,
                  maxLines: 2,
                ),
              ),
              const SizedBox(height: 16),
              const Text("TextOverflow.visible - With maxLines"),
              const SizedBox(height: 8),
              Container(
                width: 200,
                color: Colors.grey[200],
                child: const Text(
                  "This is a very long text that should overflow and be limited to two lines.",
                  overflow: TextOverflow.visible,
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
