import 'package:flutter/material.dart';

class MaterialBannerThemeDataScreen extends StatelessWidget {
  const MaterialBannerThemeDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MaterialBannerThemeData Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("MaterialBannerThemeData - Default"),
              MaterialBannerTheme(
                data: const MaterialBannerThemeData(),
                child: Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showMaterialBanner(
                        MaterialBanner(
                          content: const Text('Default Material Banner'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                              },
                              child: const Text('DISMISS'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: const Text('Show Default Banner'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("MaterialBannerThemeData - Custom Colors"),
              MaterialBannerTheme(
                data: const MaterialBannerThemeData(
                  backgroundColor: Colors.lightBlue,
                  contentTextStyle: TextStyle(color: Colors.white),
                ),
                child: Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showMaterialBanner(
                        MaterialBanner(
                          content: const Text('Custom Color Banner'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                              },
                              child: const Text('DISMISS', style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                      );
                    },
                    child: const Text('Show Custom Color Banner'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("MaterialBannerThemeData - Elevated"),
              MaterialBannerTheme(
                data: const MaterialBannerThemeData(
                  elevation: 10,
                ),
                child: Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showMaterialBanner(
                        MaterialBanner(
                          content: const Text('Elevated Banner'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                              },
                              child: const Text('DISMISS'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: const Text('Show Elevated Banner'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("MaterialBannerThemeData - Padding"),
              MaterialBannerTheme(
                data: const MaterialBannerThemeData(
                  padding: EdgeInsets.all(20),
                ),
                child: Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showMaterialBanner(
                        MaterialBanner(
                          content: const Text('Padding Banner'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                              },
                              child: const Text('DISMISS'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: const Text('Show Padding Banner'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("MaterialBannerThemeData -  Wrapped with Container"),
              MaterialBannerTheme(
                data: const MaterialBannerThemeData(
                  backgroundColor: Colors.green,
                ),
                child: Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showMaterialBanner(
                        MaterialBanner(
                          content: Container(
                            padding: const EdgeInsets.all(10),
                            color: Colors.white,
                            child: const Text('Wrapped Banner'),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                              },
                              child: const Text('DISMISS', style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                      );
                    },
                    child: const Text('Show Wrapped Banner'),
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
