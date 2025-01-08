import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoListSectionScreen extends StatelessWidget {
  const CupertinoListSectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoListSection Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoListSection - Default"),
              CupertinoListSection(
                header: Text("Section Header"),
                children: [
                  Text("Item 1"),
                  Text("Item 2"),
                ],
              ),
              const SizedBox(height: 20),
              const Text("CupertinoListSection - Custom Header Style"),
              CupertinoListSection(
                header: const Text("Styled Header",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
                children: const [
                  Text("Item A"),
                  Text("Item B"),
                ],
              ),
              const SizedBox(height: 20),
              const Text("CupertinoListSection - Custom Background Color"),
              CupertinoListSection(
                backgroundColor: Colors.grey[200]!,
                header: const Text("Background Color"),
                children: const [
                  Text("Item X"),
                  Text("Item Y"),
                ],
              ),
              const SizedBox(height: 20),
              const Text("CupertinoListSection - Custom Top Margin"),
              CupertinoListSection(
                margin: const EdgeInsets.only(top: 30),
                header: const Text("Margin Top"),
                children: const [
                  Text("Item 1"),
                  Text("Item 2"),
                ],
              ),
              const SizedBox(height: 20),
              const Text("CupertinoListSection - Custom Bottom Margin"),
              CupertinoListSection(
                margin: const EdgeInsets.only(bottom: 30),
                header: const Text("Margin Bottom"),
                children: const [
                  Text("Item 1"),
                  Text("Item 2"),
                ],
              ),
              const SizedBox(height: 20),
              const Text("CupertinoListSection - Custom Horizontal Margin"),
              CupertinoListSection(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                header: const Text("Margin Horizontal"),
                children: const [
                  Text("Item 1"),
                  Text("Item 2"),
                ],
              ),
              const SizedBox(height: 20),
              const Text("CupertinoListSection - Custom Decoration"),
              CupertinoListSection(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                header: const Text("Custom Decoration"),
                children: const [
                  Text("Item 1"),
                  Text("Item 2"),
                ],
              ),
              const SizedBox(height: 20),
              const Text("CupertinoListSection - With Footer"),
              CupertinoListSection(
                header: const Text("Header"),
                footer: const Text("Footer"),
                children: const [
                  Text("Item 1"),
                  Text("Item 2"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
