import 'package:flutter/material.dart';

class ShowModalBottomSheetScreen extends StatelessWidget {
  const ShowModalBottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ShowModalBottomSheet Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text("ShowModalBottomSheet - Basic"),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      color: Colors.amber,
                      child: const Center(
                        child: Text('Modal Bottom Sheet'),
                      ),
                    );
                  },
                );
              },
              child: const Text('Show Modal Bottom Sheet'),
            ),
            const SizedBox(height: 20),
            const Text("ShowModalBottomSheet - Custom Background Color"),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.lightBlue,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      color: Colors.lightBlue,
                      child: const Center(
                        child: Text('Modal Bottom Sheet', style: TextStyle(color: Colors.white)),
                      ),
                    );
                  },
                );
              },
              child: const Text('Show Modal Bottom Sheet'),
            ),
            const SizedBox(height: 20),
            const Text("ShowModalBottomSheet - Rounded Corners"),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      color: Colors.amber,
                      child: const Center(
                        child: Text('Modal Bottom Sheet'),
                      ),
                    );
                  },
                );
              },
              child: const Text('Show Modal Bottom Sheet'),
            ),
            const SizedBox(height: 20),
            const Text("ShowModalBottomSheet - With Draggable Scrollable Sheet"),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return DraggableScrollableSheet(
                      initialChildSize: 0.5,
                      minChildSize: 0.25,
                      maxChildSize: 0.9,
                      builder: (BuildContext context, ScrollController scrollController) {
                        return Container(
                          color: Colors.lightGreen,
                          child: ListView.builder(
                            controller: scrollController,
                            itemCount: 25,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(title: Text('Item $index'));
                            },
                          ),
                        );
                      },
                    );
                  },
                );
              },
              child: const Text('Show Modal Bottom Sheet'),
            ),
            const SizedBox(height: 20),
            const Text("ShowModalBottomSheet - With isScrollControlled"),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.9,
                      color: Colors.deepPurple,
                      child: const Center(
                        child: Text('Modal Bottom Sheet', style: TextStyle(color: Colors.white)),
                      ),
                    );
                  },
                );
              },
              child: const Text('Show Modal Bottom Sheet'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
