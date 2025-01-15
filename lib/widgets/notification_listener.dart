import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NotificationListenerScreen extends StatelessWidget {
  const NotificationListenerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NotificationListener Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("NotificationListener - Usage (Wrapping Container):"),
              NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  // Handle scroll notification here
                  return true;
                },
                child: Container(
                  height: 100,
                  color: Colors.grey[200],
                  child: const Center(child: Text("Scrollable Area")),
                ),
              ),
              const SizedBox(height: 20),
              const Text("NotificationListener - Usage (Wrapping Text):"),
              NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  // Handle user scroll notification here
                  return true;
                },
                child: const Text("Scrollable Text"),
              ),
              const SizedBox(height: 20),
              const Text("NotificationListener - No Child (Not Recommended):"),
              const Text("NotificationListener - With Custom Scroll Notification"),
              NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  if (notification is ScrollStartNotification) {
                    print("Scroll Started");
                  } else if (notification is ScrollUpdateNotification) {
                    print("Scroll Updated");
                  } else if (notification is ScrollEndNotification) {
                    print("Scroll Ended");
                  }
                  return true;
                },
                child: SizedBox(
                  height: 100,
                  child: Container(
                    color: Colors.blue[100],
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ListTile(title: Text("Item $index"));
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("NotificationListener - With Custom User Scroll Notification"),
              NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  if (notification.direction == ScrollDirection.forward) {
                    print("User Scrolling Forward");
                  } else if (notification.direction == ScrollDirection.reverse) {
                    print("User Scrolling Reverse");
                  }
                  return true;
                },
                child: SizedBox(
                  height: 100,
                  child: Container(
                    color: Colors.green[100],
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ListTile(title: Text("Item $index"));
                      },
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
