import 'package:flutter/material.dart';

class RefreshIndicatorScreen extends StatelessWidget {
  const RefreshIndicatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RefreshIndicator Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RefreshIndicator Variations:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("RefreshIndicator:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              RefreshIndicator(
                onRefresh: () async {
                  await Future.delayed(const Duration(seconds: 1));
                },
                child: ListView(
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  children: const [
                    ListTile(title: Text('Item 1')),
                    ListTile(title: Text('Item 2')),
                    ListTile(title: Text('Item 3')),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("RefreshIndicator - Custom Color:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              RefreshIndicator(
                onRefresh: () async {
                  await Future.delayed(const Duration(seconds: 1));
                },
                color: Colors.red,
                backgroundColor: Colors.yellow,
                child: ListView(
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  children: const [
                    ListTile(title: Text('Item 1')),
                    ListTile(title: Text('Item 2')),
                    ListTile(title: Text('Item 3')),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("RefreshIndicator - Displacement:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              RefreshIndicator(
                onRefresh: () async {
                  await Future.delayed(const Duration(seconds: 1));
                },
                displacement: 40.0,
                child: ListView(
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  children: const [
                    ListTile(title: Text('Item 1')),
                    ListTile(title: Text('Item 2')),
                    ListTile(title: Text('Item 3')),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("RefreshIndicator - Edge Offset:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              RefreshIndicator(
                onRefresh: () async {
                  await Future.delayed(const Duration(seconds: 1));
                },
                edgeOffset: 20.0,
                child: ListView(
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  children: const [
                    ListTile(title: Text('Item 1')),
                    ListTile(title: Text('Item 2')),
                    ListTile(title: Text('Item 3')),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("RefreshIndicator - Custom Indicator:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              RefreshIndicator(
                onRefresh: () async {
                  await Future.delayed(const Duration(seconds: 1));
                },
                semanticsLabel: 'Refresh',
                semanticsValue: 'Refreshing',
                child: ListView(
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  children: const [
                    ListTile(title: Text('Item 1')),
                    ListTile(title: Text('Item 2')),
                    ListTile(title: Text('Item 3')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
