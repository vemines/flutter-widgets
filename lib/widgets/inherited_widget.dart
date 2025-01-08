import 'package:flutter/material.dart';

class InheritedWidgetScreen extends StatelessWidget {
  const InheritedWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("InheritedWidget Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("MyInheritedWidget - Default"),
              const SizedBox(height: 8),
              MyInheritedWidget(
                data: "Initial Data",
                child: const _MyConsumerWidget(),
              ),
              const SizedBox(height: 20),
              const Text("MyInheritedWidget - Updated Data"),
              const SizedBox(height: 8),
              MyInheritedWidget(
                data: "Updated Data",
                child: const _MyConsumerWidget(),
              ),
              const SizedBox(height: 20),
              const Text("MyInheritedWidget - Nested"),
              const SizedBox(height: 8),
              MyInheritedWidget(
                data: "Outer Data",
                child: MyInheritedWidget(
                  data: "Inner Data",
                  child: const _MyConsumerWidget(),
                ),
              ),
              const SizedBox(height: 20),
              const Text("MyInheritedWidget - Without Child"),
              const SizedBox(height: 8),
              // MyInheritedWidget without a child is not very useful on its own,
              // as it's designed to provide data to its descendants.
              // It's shown here for demonstration purposes, but it won't display anything
              // without a child that uses the inherited data.
              const Text("MyInheritedWidget - No Child"),
              const SizedBox(height: 8),
              MyInheritedWidget(data: "No Child Data", child: Container()),
              const SizedBox(height: 20),
              const Text("MyInheritedWidget - With Container Child"),
              const SizedBox(height: 8),
              MyInheritedWidget(
                data: "Container Data",
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.grey[200],
                  child: const Text("Container Child"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyInheritedWidget extends InheritedWidget {
  final String data;

  const MyInheritedWidget({
    super.key,
    required this.data,
    required super.child,
  });

  static MyInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
  }

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return data != oldWidget.data;
  }
}

class _MyConsumerWidget extends StatelessWidget {
  const _MyConsumerWidget();

  @override
  Widget build(BuildContext context) {
    final inheritedData = MyInheritedWidget.of(context)?.data;
    return Text("Data from InheritedWidget: $inheritedData");
  }
}
