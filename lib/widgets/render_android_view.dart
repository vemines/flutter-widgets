import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RenderAndroidViewScreen extends StatelessWidget {
  const RenderAndroidViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RenderAndroidView Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("RenderAndroidView - Basic"),
              const SizedBox(height: 8),
              SizedBox(
                height: 200,
                width: 200,
                child: AndroidView(
                  viewType: 'platform_text_view',
                  creationParams: const <String, dynamic>{
                    'text': 'Hello from Android!',
                  },
                  creationParamsCodec: const StandardMessageCodec(),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderAndroidView - With Background Color"),
              const SizedBox(height: 8),
              Container(
                color: Colors.lightBlue.withValues(alpha: 255 * 0.3),
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: AndroidView(
                    viewType: 'platform_text_view',
                    creationParams: const <String, dynamic>{
                      'text': 'Hello from Android with background!',
                    },
                    creationParamsCodec: const StandardMessageCodec(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderAndroidView - Different Size"),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                width: 300,
                child: AndroidView(
                  viewType: 'platform_text_view',
                  creationParams: const <String, dynamic>{
                    'text': 'Hello from Android with different size!',
                  },
                  creationParamsCodec: const StandardMessageCodec(),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderAndroidView - With Padding"),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: AndroidView(
                    viewType: 'platform_text_view',
                    creationParams: const <String, dynamic>{
                      'text': 'Hello from Android with padding!',
                    },
                    creationParamsCodec: const StandardMessageCodec(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderAndroidView - With Margin"),
              const SizedBox(height: 8),
              Container(
                margin: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: AndroidView(
                    viewType: 'platform_text_view',
                    creationParams: const <String, dynamic>{
                      'text': 'Hello from Android with margin!',
                    },
                    creationParamsCodec: const StandardMessageCodec(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderAndroidView - With Border"),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: AndroidView(
                    viewType: 'platform_text_view',
                    creationParams: const <String, dynamic>{
                      'text': 'Hello from Android with border!',
                    },
                    creationParamsCodec: const StandardMessageCodec(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("RenderAndroidView - With Rounded Border"),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: AndroidView(
                    viewType: 'platform_text_view',
                    creationParams: const <String, dynamic>{
                      'text': 'Hello from Android with rounded border!',
                    },
                    creationParamsCodec: const StandardMessageCodec(),
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
