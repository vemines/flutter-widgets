import 'package:flutter/material.dart';

class PopupMenuThemeDataScreen extends StatelessWidget {
  const PopupMenuThemeDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PopupMenuThemeData Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("PopupMenuThemeData - Default",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              PopupMenuButton(
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'item1',
                    child: Text('Item 1'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'item2',
                    child: Text('Item 2'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text("PopupMenuThemeData - Custom Colors",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  popupMenuTheme: PopupMenuThemeData(
                    color: Colors.lightBlue[100],
                    textStyle: const TextStyle(color: Colors.black),
                  ),
                ),
                child: PopupMenuButton(
                  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'item1',
                      child: Text('Item 1'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'item2',
                      child: Text('Item 2'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("PopupMenuThemeData - Custom Shape",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  popupMenuTheme: PopupMenuThemeData(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                child: PopupMenuButton(
                  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'item1',
                      child: Text('Item 1'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'item2',
                      child: Text('Item 2'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("PopupMenuThemeData - Custom Elevation",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  popupMenuTheme: PopupMenuThemeData(
                    elevation: 10,
                  ),
                ),
                child: PopupMenuButton(
                  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'item1',
                      child: Text('Item 1'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'item2',
                      child: Text('Item 2'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("PopupMenuThemeData - Custom Padding",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  popupMenuTheme: PopupMenuThemeData(
                    menuPadding: const EdgeInsets.all(20),
                  ),
                ),
                child: PopupMenuButton(
                  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'item1',
                      child: Text('Item 1'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'item2',
                      child: Text('Item 2'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("PopupMenuThemeData - Wrapped in Theme",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  popupMenuTheme: PopupMenuThemeData(
                    color: Colors.amber[100],
                    textStyle: const TextStyle(color: Colors.black),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    elevation: 5,
                    menuPadding: const EdgeInsets.all(10),
                  ),
                ),
                child: PopupMenuButton(
                  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'item1',
                      child: Text('Item 1'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'item2',
                      child: Text('Item 2'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
