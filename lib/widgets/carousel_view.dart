import 'package:flutter/material.dart';

class CarouselViewScreen extends StatelessWidget {
  const CarouselViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CarouselView Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CarouselView Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("CarouselView - Basic Example"),
              SizedBox(
                height: 200,
                child: CarouselView(
                  items: [
                    Container(color: Colors.red, child: const Center(child: Text("Item 1", style: TextStyle(color: Colors.white)))),
                    Container(color: Colors.blue, child: const Center(child: Text("Item 2", style: TextStyle(color: Colors.white)))),
                    Container(color: Colors.green, child: const Center(child: Text("Item 3", style: TextStyle(color: Colors.white)))),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("CarouselView - Custom Height"),
              SizedBox(
                height: 300,
                child: CarouselView(
                  items: [
                    Container(color: Colors.orange, child: const Center(child: Text("Item 1", style: TextStyle(color: Colors.white)))),
                    Container(color: Colors.purple, child: const Center(child: Text("Item 2", style: TextStyle(color: Colors.white)))),
                    Container(color: Colors.teal, child: const Center(child: Text("Item 3", style: TextStyle(color: Colors.white)))),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("CarouselView - Different Item Sizes"),
              SizedBox(
                height: 200,
                child: CarouselView(
                  items: [
                    Container(width: 100, color: Colors.pink, child: const Center(child: Text("Item 1", style: TextStyle(color: Colors.white)))),
                    Container(width: 200, color: Colors.brown, child: const Center(child: Text("Item 2", style: TextStyle(color: Colors.white)))),
                    Container(width: 150, color: Colors.cyan, child: const Center(child: Text("Item 3", style: TextStyle(color: Colors.white)))),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("CarouselView - With Padding"),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 200,
                  child: CarouselView(
                    items: [
                      Container(color: Colors.lime, child: const Center(child: Text("Item 1", style: TextStyle(color: Colors.white)))),
                      Container(color: Colors.indigo, child: const Center(child: Text("Item 2", style: TextStyle(color: Colors.white)))),
                      Container(color: Colors.amber, child: const Center(child: Text("Item 3", style: TextStyle(color: Colors.white)))),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CarouselView - With Custom Item Widget"),
              SizedBox(
                height: 200,
                child: CarouselView(
                  items: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(child: Icon(Icons.star, size: 50, color: Colors.yellow)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(child: Icon(Icons.favorite, size: 50, color: Colors.red)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(child: Icon(Icons.thumb_up, size: 50, color: Colors.blue)),
                    ),
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

class CarouselView extends StatefulWidget {
  final List<Widget> items;
  const CarouselView({super.key, required this.items});

  @override
  State<CarouselView> createState() => _CarouselViewState();
}

class _CarouselViewState extends State<CarouselView> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView(
          controller: _pageController,
          children: widget.items,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(widget.items.length, (index) => _buildDot(index)),
          ),
        ),
      ],
    );
  }

  Widget _buildDot(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentPage == index ? Colors.blue : Colors.grey,
      ),
    );
  }
}
