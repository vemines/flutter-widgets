import 'package:flutter/material.dart';

class StreamBuilderScreen extends StatelessWidget {
  const StreamBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StreamBuilder Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("StreamBuilder - Usage with Initial Data",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              StreamBuilder<int>(
                initialData: 0,
                stream: Stream.periodic(const Duration(seconds: 1), (count) => count),
                builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                  if (snapshot.hasData) {
                    return Text('Data: ${snapshot.data}');
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    return const Text('Waiting for data...');
                  }
                },
              ),
              const SizedBox(height: 20),
              const Text("StreamBuilder - Loading and Error States",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              StreamBuilder<String>(
                stream: _errorStream(),
                builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (snapshot.hasData) {
                    return Text('Data: ${snapshot.data}');
                  } else {
                    return const Text('No data');
                  }
                },
              ),
              const SizedBox(height: 20),
              const Text("StreamBuilder - With Different Data Types",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              StreamBuilder<bool>(
                stream: Stream.value(true),
                builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
                  if (snapshot.hasData) {
                    return Text('Boolean: ${snapshot.data}');
                  } else {
                    return const Text('No boolean data');
                  }
                },
              ),
              const SizedBox(height: 20),
              const Text("StreamBuilder - No Initial Data",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              StreamBuilder<int>(
                stream: Stream.periodic(const Duration(seconds: 2), (count) => count * 2),
                builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                  if (snapshot.hasData) {
                    return Text('Data: ${snapshot.data}');
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    return const Text('Waiting for data...');
                  }
                },
              ),
              const SizedBox(height: 20),
              const Text("StreamBuilder - With a Stream that completes",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              StreamBuilder<int>(
                stream: _completingStream(),
                builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                  if (snapshot.hasData) {
                    return Text('Data: ${snapshot.data}');
                  } else if (snapshot.connectionState == ConnectionState.done) {
                    return const Text('Stream Completed');
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    return const Text('Waiting for data...');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Stream<String> _errorStream() async* {
    await Future.delayed(const Duration(seconds: 1));
    yield 'Initial Data';
    await Future.delayed(const Duration(seconds: 1));
    throw 'An error occurred!';
  }

  Stream<int> _completingStream() async* {
    yield 1;
    await Future.delayed(const Duration(seconds: 1));
    yield 2;
    await Future.delayed(const Duration(seconds: 1));
    yield 3;
  }
}
