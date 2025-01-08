import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoThemeDataScreen extends StatelessWidget {
  const CupertinoThemeDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoThemeData Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoThemeData - Default",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              // CupertinoThemeData without wrapping another widget.
              // This is not directly visible as it's a theme provider.
              // We will show it by applying it to a CupertinoButton.
              CupertinoTheme(
                data: const CupertinoThemeData(),
                child: CupertinoButton(
                  onPressed: () {},
                  child: const Text('Default Button'),
                ),
              ),
              const SizedBox(height: 16),
              const Text("CupertinoThemeData - Primary Color Blue",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTheme(
                data: const CupertinoThemeData(
                  primaryColor: CupertinoColors.systemBlue,
                ),
                child: CupertinoButton(
                  onPressed: () {},
                  child: const Text('Blue Button'),
                ),
              ),
              const SizedBox(height: 16),
              const Text("CupertinoThemeData - Text Theme",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTheme(
                data: const CupertinoThemeData(
                  textTheme: CupertinoTextThemeData(
                    textStyle: TextStyle(fontSize: 20, color: CupertinoColors.systemGreen),
                  ),
                ),
                child: CupertinoButton(
                  onPressed: () {},
                  child: const Text('Styled Text Button'),
                ),
              ),
              const SizedBox(height: 16),
              const Text("CupertinoThemeData - With Container",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTheme(
                data: const CupertinoThemeData(
                  primaryColor: CupertinoColors.systemRed,
                ),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: CupertinoColors.systemYellow.withValues(alpha: 255 * 0.2),
                  child: CupertinoButton(
                    onPressed: () {},
                    child: const Text('Button in Container'),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text("CupertinoThemeData - With Different Text Color",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTheme(
                data: const CupertinoThemeData(
                  primaryColor: CupertinoColors.systemPurple,
                  textTheme: CupertinoTextThemeData(
                    primaryColor: CupertinoColors.white,
                  ),
                ),
                child: CupertinoButton(
                  onPressed: () {},
                  child: const Text('White Text Button'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
