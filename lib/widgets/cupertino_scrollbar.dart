import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoScrollbarScreen extends StatelessWidget {
  const CupertinoScrollbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoScrollbar Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoScrollbar - Default"),
              SizedBox(
                height: 100,
                child: CupertinoScrollbar(
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => ListTile(
                      title: Text('Item $index'),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoScrollbar - With Thickness and Radius"),
              SizedBox(
                height: 100,
                child: CupertinoScrollbar(
                  thickness: 10.0,
                  radius: const Radius.circular(10.0),
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => ListTile(
                      title: Text('Item $index'),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoScrollbar - With Both Thickness, Radius"),
              SizedBox(
                height: 100,
                child: CupertinoScrollbar(
                  thickness: 12.0,
                  radius: const Radius.circular(5.0),
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => ListTile(
                      title: Text('Item $index'),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoScrollbar - Scrollbar and Thickness"),
              SizedBox(
                height: 100,
                child: CupertinoScrollbar(
                  thumbVisibility: true,
                  thickness: 15.0,
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => ListTile(
                      title: Text('Item $index'),
                    ),
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
