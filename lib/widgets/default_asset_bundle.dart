import 'package:flutter/material.dart';

class DefaultAssetBundleScreen extends StatelessWidget {
  const DefaultAssetBundleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DefaultAssetBundle Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("DefaultAssetBundle - Usage",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              DefaultAssetBundle(
                bundle: DefaultAssetBundle.of(context),
                child: const Text("Text from default asset bundle"),
              ),
              const SizedBox(height: 16),
              const Text("DefaultAssetBundle - With Container",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              DefaultAssetBundle(
                bundle: DefaultAssetBundle.of(context),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.lightBlue[100],
                  child: const Text("Text in container from default asset bundle"),
                ),
              ),
              const SizedBox(height: 16),
              const Text("DefaultAssetBundle - With Custom Bundle (Not Applicable)",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text(
                  "DefaultAssetBundle does not have many visual properties. It's a wrapper for asset loading. The variations above show its usage with and without a container. Custom bundles are not demonstrated here as they require external asset loading which is outside the scope of this showcase."),
            ],
          ),
        ),
      ),
    );
  }
}
