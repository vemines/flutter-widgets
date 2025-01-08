import 'package:flutter/material.dart';

class FlutterErrorDetailsScreen extends StatelessWidget {
  const FlutterErrorDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FlutterErrorDetails Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("FlutterErrorDetails - Default",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              // FlutterErrorDetails cannot be directly instantiated. It's a class used for error reporting, not a widget.
              // The following code would cause an error:
              // FlutterErrorDetails(exception: Exception("Test Exception"), library: "Test Library", context: "Test Context");
              // Instead, we will demonstrate how it's used in a try-catch block.
              ElevatedButton(
                onPressed: () {
                  try {
                    throw Exception("This is a test exception");
                  } catch (e, stackTrace) {
                    final errorDetails = FlutterErrorDetails(
                      exception: e,
                      stack: stackTrace,
                      library: "My Test Library",
                    );
                    // In a real app, you would log or report this errorDetails.
                    // For this demo, we'll just print it to the console.
                    debugPrint(errorDetails.toString());
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Error details printed to console.")));
                  }
                },
                child: const Text("Simulate Error"),
              ),
              const SizedBox(height: 20),
              const Text("FlutterErrorDetails - Usage Example",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text(
                  "The FlutterErrorDetails class is not a widget, but a class used to encapsulate error information. It's typically used in error handling and reporting. The above button demonstrates how to create an instance of FlutterErrorDetails when an exception occurs."),
              const SizedBox(height: 20),
              const Text("FlutterErrorDetails - No Visual Variations",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text(
                  "Since FlutterErrorDetails is not a widget, there are no visual variations to demonstrate. It's a data class used for error reporting."),
            ],
          ),
        ),
      ),
    );
  }
}
