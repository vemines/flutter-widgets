import 'package:flutter/material.dart';

class BuilderScreen extends StatelessWidget {
  const BuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Builder Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Builder - Usage", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Builder(
                builder: (BuildContext context) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Text("This is a Builder example."),
                  );
                },
              ),
              const SizedBox(height: 20),
              const Text("Builder - With Context Access",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Builder(
                builder: (BuildContext context) {
                  return ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Button Pressed!')),
                      );
                    },
                    child: const Text('Show Snackbar'),
                  );
                },
              ),
              const SizedBox(height: 20),
              const Text("Builder - With Different Context",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Builder(
                builder: (BuildContext context) {
                  return Container(
                    color: Theme.of(context).colorScheme.primary.withValues(alpha: 255 * 0.2),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Theme Color: ${Theme.of(context).colorScheme.primary}',
                      style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              const Text("Builder - Nested Builder", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Builder(
                builder: (BuildContext context) {
                  return Builder(
                    builder: (BuildContext innerContext) {
                      return Container(
                        padding: const EdgeInsets.all(10),
                        color: Colors.lightBlue[100],
                        child: Text(
                          'Inner Builder Context: ${innerContext.hashCode}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(height: 20),
              const Text("Builder - With Error Handling (Example)",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              // Example of error handling. Builder itself doesn't throw errors, but the code inside might.
              // This example shows how you might use a try-catch block within the builder.
              Builder(
                builder: (BuildContext context) {
                  try {
                    // Simulate an error
                    // throw Exception("Simulated Error");
                    return const Text("No Error");
                  } catch (e) {
                    return Text("Error: $e");
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
