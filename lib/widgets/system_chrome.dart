import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SystemChromeScreen extends StatelessWidget {
  const SystemChromeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SystemChrome Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("SystemChrome - Set System UI Overlay Style", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
                    statusBarColor: Colors.blue,
                    statusBarIconBrightness: Brightness.light,
                    systemNavigationBarColor: Colors.grey,
                    systemNavigationBarIconBrightness: Brightness.dark,
                  ));
                },
                child: const Text("Set Blue Status Bar"),
              ),
              const SizedBox(height: 16),
              const Text("SystemChrome - Set Preferred Orientations", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  SystemChrome.setPreferredOrientations([
                    DeviceOrientation.landscapeLeft,
                    DeviceOrientation.landscapeRight,
                  ]);
                },
                child: const Text("Set Landscape Orientation"),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  SystemChrome.setPreferredOrientations([
                    DeviceOrientation.portraitUp,
                  ]);
                },
                child: const Text("Set Portrait Orientation"),
              ),
              const SizedBox(height: 16),
              const Text("SystemChrome - Restore System UI Overlay Style", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  SystemChrome.restoreSystemUIOverlays();
                },
                child: const Text("Restore System UI Overlays"),
              ),
              const SizedBox(height: 16),
              const Text("SystemChrome - Enabled System UI Overlays", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
                },
                child: const Text("Enable Edge to Edge Mode"),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
                },
                child: const Text("Enable Immersive Mode"),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
                },
                child: const Text("Enable Lean Back Mode"),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
                },
                child: const Text("Enable Manual Mode (Top and Bottom)"),
              ),
              const SizedBox(height: 16),
              const Text("SystemChrome - Set System Navigation Bar Color", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
                    systemNavigationBarColor: Colors.green,
                  ));
                },
                child: const Text("Set Green Navigation Bar"),
              ),
              const SizedBox(height: 16),
              const Text("SystemChrome - Set System Navigation Bar Icon Brightness", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
                    systemNavigationBarIconBrightness: Brightness.light,
                  ));
                },
                child: const Text("Set Light Navigation Bar Icons"),
              ),
              const SizedBox(height: 16),
              const Text("SystemChrome - Set Status Bar Color", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
                    statusBarColor: Colors.red,
                  ));
                },
                child: const Text("Set Red Status Bar"),
              ),
              const SizedBox(height: 16),
              const Text("SystemChrome - Set Status Bar Icon Brightness", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
                    statusBarIconBrightness: Brightness.dark,
                  ));
                },
                child: const Text("Set Dark Status Bar Icons"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
