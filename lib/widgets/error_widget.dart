import 'package:flutter/material.dart';

class ErrorWidgetScreen extends StatelessWidget {
  const ErrorWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ErrorWidget Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ErrorWidget - Default"),
              const SizedBox(height: 8),
              ErrorWidget(FlutterErrorDetails(exception: Exception("This is a test error"))),
              const SizedBox(height: 16),
              const Text("ErrorWidget - With StackTrace"),
              const SizedBox(height: 8),
              ErrorWidget(FlutterErrorDetails(
                  exception: Exception("Error with StackTrace"),
                  stack: StackTrace.current,
                  informationCollector: () => [])),
              const SizedBox(height: 16),
              const Text("ErrorWidget - With Details"),
              const SizedBox(height: 8),
              ErrorWidget.withDetails(
                message: "Error with Details and Custom Builder",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
