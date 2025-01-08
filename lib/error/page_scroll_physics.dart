import 'package:flutter/material.dart';

class PageScrollPhysicsScreen extends StatelessWidget {
  const PageScrollPhysicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageScrollPhysics Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("PageScrollPhysics - Default"),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const PageScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(
                    width: 100,
                    color: Colors.blue.shade100,
                    margin: const EdgeInsets.all(8),
                    child: Center(child: Text('Item $index')),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("PageScrollPhysics - Custom Page Size"),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const PageScrollPhysics(
                    viewportFraction: 0.7,
                  ),
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(
                    width: 100,
                    color: Colors.green.shade100,
                    margin: const EdgeInsets.all(8),
                    child: Center(child: Text('Item $index')),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("PageScrollPhysics - With Parent Scroll"),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const PageScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(
                    width: 100,
                    color: Colors.orange.shade100,
                    margin: const EdgeInsets.all(8),
                    child: Center(child: Text('Item $index')),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("PageScrollPhysics - With ClampingScrollPhysics"),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(parent: PageScrollPhysics()),
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(
                    width: 100,
                    color: Colors.purple.shade100,
                    margin: const EdgeInsets.all(8),
                    child: Center(child: Text('Item $index')),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("PageScrollPhysics - With BouncingScrollPhysics"),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(parent: PageScrollPhysics()),
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(
                    width: 100,
                    color: Colors.red.shade100,
                    margin: const EdgeInsets.all(8),
                    child: Center(child: Text('Item $index')),
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
