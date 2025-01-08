import 'package:flutter/material.dart';

class ElevatedButtonThemeDataScreen extends StatelessWidget {
  const ElevatedButtonThemeDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ElevatedButtonThemeData Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ElevatedButtonThemeData - Default",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Default Button"),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButtonThemeData - Custom Theme",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Custom Theme Button"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButtonThemeData - Custom Theme with Icon",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  label: const Text("Icon Button"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButtonThemeData - Custom Theme with Minimum Size",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 60),
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Minimum Size Button"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButtonThemeData - Custom Theme with Disabled State",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ElevatedButton.styleFrom(
                      disabledBackgroundColor: Colors.grey[300]!,
                      disabledForegroundColor: Colors.grey[600]!,
                    ),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: null,
                  child: const Text("Disabled Button"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButtonThemeData - Custom Theme with Elevation",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shadowColor: Colors.black,
                    ),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Elevation Button"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButtonThemeData - Custom Theme with Overlay Color",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ElevatedButton.styleFrom(
                      overlayColor: Colors.red.withValues(alpha: 255 * 0.2),
                    ),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Overlay Color Button"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButtonThemeData - Custom Theme with Side Border",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: Colors.purple, width: 2),
                    ),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Side Border Button"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButtonThemeData - Custom Theme with Fixed Size",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(150, 50),
                    ),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Fixed Size Button"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ElevatedButtonThemeData - Custom Theme with Mouse Cursor",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ElevatedButton.styleFrom(
                      mouseCursor: SystemMouseCursors.grab,
                    ),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Mouse Cursor Button"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
