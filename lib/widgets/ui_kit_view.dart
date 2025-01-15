import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UiKitViewScreen extends StatelessWidget {
  const UiKitViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UiKitView Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("UiKitView - Usage", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text(
                  "This widget is a platform view and cannot be directly styled or modified like regular Flutter widgets. It's a bridge to native UI elements."),
              const SizedBox(height: 16),
              const Text("UiKitView - Example with a Container",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 200,
                width: 200,
                child: UiKitView(
                  viewType: 'platform_text_view',
                  creationParams: const <String, dynamic>{
                    'text': 'Hello from Native!',
                    'fontSize': 20.0,
                    'textColor': '#FF0000',
                  },
                  creationParamsCodec: const StandardMessageCodec(),
                ),
              ),
              const SizedBox(height: 16),
              const Text("UiKitView - Example with a different text",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 200,
                width: 200,
                child: UiKitView(
                  viewType: 'platform_text_view',
                  creationParams: const <String, dynamic>{
                    'text': 'Another Native Text!',
                    'fontSize': 24.0,
                    'textColor': '#0000FF',
                  },
                  creationParamsCodec: const StandardMessageCodec(),
                ),
              ),
              const SizedBox(height: 16),
              const Text("UiKitView - Example with a different size",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                width: 100,
                child: UiKitView(
                  viewType: 'platform_text_view',
                  creationParams: const <String, dynamic>{
                    'text': 'Small Native Text!',
                    'fontSize': 12.0,
                    'textColor': '#00FF00',
                  },
                  creationParamsCodec: const StandardMessageCodec(),
                ),
              ),
              const SizedBox(height: 16),
              const Text("UiKitView - Example with a different size and text",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                height: 300,
                width: 300,
                child: UiKitView(
                  viewType: 'platform_text_view',
                  creationParams: const <String, dynamic>{
                    'text': 'Large Native Text!',
                    'fontSize': 30.0,
                    'textColor': '#FFFF00',
                  },
                  creationParamsCodec: const StandardMessageCodec(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
