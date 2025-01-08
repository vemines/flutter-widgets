import 'package:flutter/material.dart';

class PlatformViewLinkScreen extends StatelessWidget {
  const PlatformViewLinkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PlatformViewLink Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("PlatformViewLink - Basic Usage (wrapping Container)"),
              PlatformViewLink(
                viewType: 'test-view',
                onCreatePlatformView: (params) {
                  return PlatformViewCreationResponse(
                    params: params,
                    widget: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              const Text("PlatformViewLink - Different Size (wrapping Container)"),
              PlatformViewLink(
                viewType: 'test-view',
                onCreatePlatformView: (params) {
                  return PlatformViewCreationResponse(
                    params: params,
                    widget: Container(
                      width: 200,
                      height: 50,
                      color: Colors.green,
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              const Text("PlatformViewLink - Different Color (wrapping Container)"),
              PlatformViewLink(
                viewType: 'test-view',
                onCreatePlatformView: (params) {
                  return PlatformViewCreationResponse(
                    params: params,
                    widget: Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              const Text("PlatformViewLink - With Border (wrapping Container)"),
              PlatformViewLink(
                viewType: 'test-view',
                onCreatePlatformView: (params) {
                  return PlatformViewCreationResponse(
                    params: params,
                    widget: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              const Text("PlatformViewLink - With Rounded Corners (wrapping Container)"),
              PlatformViewLink(
                viewType: 'test-view',
                onCreatePlatformView: (params) {
                  return PlatformViewCreationResponse(
                    params: params,
                    widget: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.yellow,
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
