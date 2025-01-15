import 'package:flutter/material.dart';

class FutureBuilderScreen extends StatelessWidget {
  const FutureBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FutureBuilder Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("FutureBuilder - Usage with Text"),
              FutureBuilder<String>(
                future: Future.delayed(const Duration(seconds: 2), () => "Data Loaded!"),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text("Error: ${snapshot.error}");
                  } else if (snapshot.hasData) {
                    return Text(snapshot.data!);
                  } else {
                    return const Text("No data");
                  }
                },
              ),
              const SizedBox(height: 20),
              const Text("FutureBuilder - With Initial Data"),
              FutureBuilder<int>(
                initialData: 0,
                future: Future.delayed(const Duration(seconds: 1), () => 10),
                builder: (context, snapshot) {
                  return Text("Value: ${snapshot.data}");
                },
              ),
              const SizedBox(height: 20),
              const Text("FutureBuilder - Loading Indicator Customization"),
              FutureBuilder<String>(
                future: Future.delayed(const Duration(seconds: 2), () => "Custom Loading"),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                        strokeWidth: 5,
                      ),
                    );
                  } else if (snapshot.hasData) {
                    return Text(snapshot.data!);
                  } else {
                    return const Text("No data");
                  }
                },
              ),
              const SizedBox(height: 20),
              const Text("FutureBuilder - Error Handling with Icon"),
              FutureBuilder<String>(
                future: Future.delayed(
                    const Duration(seconds: 1), () => throw Exception("Failed to load")),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Row(
                      children: [
                        const Icon(Icons.error, color: Colors.red),
                        Text("Error: ${snapshot.error}"),
                      ],
                    );
                  } else if (snapshot.hasData) {
                    return Text(snapshot.data!);
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
              const SizedBox(height: 20),
              const Text("FutureBuilder - No Future Provided (Error)"),
              // FutureBuilder<String>(
              //   builder: (context, snapshot) {
              //     if (snapshot.hasData) {
              //       return Text(snapshot.data!);
              //     } else {
              //       return const Text("No Future Provided");
              //     }
              //   },
              // ),
              const Text(
                  "The above FutureBuilder is commented out because it will cause an error if no future is provided."),
              const SizedBox(height: 20),
              const Text("FutureBuilder - With a Future that returns null"),
              FutureBuilder<String?>(
                future: Future.delayed(const Duration(seconds: 1), () => null),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text("Data: ${snapshot.data ?? 'null'}");
                  } else if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else {
                    return const Text("No data");
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
