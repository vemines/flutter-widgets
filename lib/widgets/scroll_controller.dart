import 'package:flutter/material.dart';

class ScrollControllerScreen extends StatelessWidget {
  const ScrollControllerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ScrollController Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("ScrollController - Example"),
            ),
            _buildBasicScrollController(),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("ScrollController - Jump to End"),
            ),
            _buildJumpToEndScrollController(),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("ScrollController - Animated Scroll"),
            ),
            _buildAnimatedScrollController(),
          ],
        ),
      ),
    );
  }

  Widget _buildBasicScrollController() {
    final ScrollController scrollController = ScrollController();
    return SizedBox(
      height: 200,
      child: ListView.builder(
        controller: scrollController,
        itemCount: 50,
        itemBuilder: (context, index) {
          return ListTile(title: Text('Item $index'));
        },
      ),
    );
  }

  Widget _buildJumpToEndScrollController() {
    final ScrollController scrollController = ScrollController();
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: ListView.builder(
            controller: scrollController,
            itemCount: 50,
            itemBuilder: (context, index) {
              return ListTile(title: Text('Item $index'));
            },
          ),
        ),
        ElevatedButton(
          onPressed: () {
            scrollController.jumpTo(scrollController.position.maxScrollExtent);
          },
          child: const Text('Jump to End'),
        ),
      ],
    );
  }

  Widget _buildAnimatedScrollController() {
    final ScrollController scrollController = ScrollController();
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: ListView.builder(
            controller: scrollController,
            itemCount: 50,
            itemBuilder: (context, index) {
              return ListTile(title: Text('Item $index'));
            },
          ),
        ),
        ElevatedButton(
          onPressed: () {
            scrollController.animateTo(
              scrollController.position.maxScrollExtent,
              duration: const Duration(seconds: 1),
              curve: Curves.ease,
            );
          },
          child: const Text('Animate to End'),
        ),
      ],
    );
  }
}
