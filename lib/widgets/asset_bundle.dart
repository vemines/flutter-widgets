import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AssetBundleScreen extends StatelessWidget {
  const AssetBundleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AssetBundle Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("AssetBundle - Usage", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              FutureBuilder<String>(
                future: DefaultAssetBundle.of(context).loadString('assets/my_text_file.txt'),
                builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data!);
                  } else if (snapshot.hasError) {
                    return Text('Error loading asset: ${snapshot.error}');
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
              const SizedBox(height: 20),
              const Text("AssetBundle - Loading Image",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              FutureBuilder<ByteData>(
                future: DefaultAssetBundle.of(context).load('assets/my_image.png'),
                builder: (BuildContext context, AsyncSnapshot<ByteData> snapshot) {
                  if (snapshot.hasData) {
                    return Image.memory(
                      snapshot.data!.buffer.asUint8List(),
                    );
                  } else if (snapshot.hasError) {
                    return Text('Error loading image: ${snapshot.error}');
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
              const SizedBox(height: 20),
              const Text("AssetBundle - Loading JSON",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              FutureBuilder<String>(
                future: DefaultAssetBundle.of(context).loadString('assets/my_json_file.json'),
                builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                  if (snapshot.hasData) {
                    // ignore: avoid_print
                    print('JSON data: ${snapshot.data}');
                    return const Text('JSON data loaded. (Check console for output)');
                  } else if (snapshot.hasError) {
                    return Text('Error loading JSON: ${snapshot.error}');
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
              const SizedBox(height: 20),
              const Text("AssetBundle - Loading Binary Data",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              FutureBuilder<ByteData>(
                future: DefaultAssetBundle.of(context).load('assets/my_binary_file.bin'),
                builder: (BuildContext context, AsyncSnapshot<ByteData> snapshot) {
                  if (snapshot.hasData) {
                    // ignore: avoid_print
                    print('Binary data: ${snapshot.data}');
                    return const Text('Binary data loaded. (Check console for output)');
                  } else if (snapshot.hasError) {
                    return Text('Error loading binary data: ${snapshot.error}');
                  } else {
                    return const CircularProgressIndicator();
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
