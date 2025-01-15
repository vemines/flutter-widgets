import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ListView.builder - List", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Item $index'),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text("ListView.separated - Divider",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 150,
                child: ListView.separated(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Item $index'),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ListView - scrollDirection Horizontal",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                      5,
                      (index) => Container(
                            width: 100,
                            margin: const EdgeInsets.all(8),
                            color: Colors.blue[100 * (index + 1)],
                            child: Center(child: Text('Item $index')),
                          )),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ListView - NeverScrollableScrollPhysics",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 150,
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: List.generate(
                      5,
                      (index) => ListTile(
                            title: Text('Item $index'),
                          )),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ListView - reverse: true,",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 150,
                child: ListView(
                  reverse: true,
                  children: List.generate(
                      5,
                      (index) => ListTile(
                            title: Text('Item $index'),
                          )),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ListView - ShrinkWrap", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 150,
                child: ListView(
                  shrinkWrap: true,
                  children: List.generate(
                      5,
                      (index) => ListTile(
                            title: Text('Item $index'),
                          )),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ListView - With Padding", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 150,
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  children: List.generate(
                      5,
                      (index) => ListTile(
                            title: Text('Item $index'),
                          )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
