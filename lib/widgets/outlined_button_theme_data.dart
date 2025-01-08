import 'package:flutter/material.dart';

class OutlinedButtonThemeDataScreen extends StatelessWidget {
  const OutlinedButtonThemeDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OutlinedButtonThemeData Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("OutlinedButtonThemeData - Default",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Default Button'),
              ),
              const SizedBox(height: 20),
              const Text("OutlinedButtonThemeData - Custom Theme",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  outlinedButtonTheme: OutlinedButtonThemeData(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.blue[100]),
                      foregroundColor: WidgetStateProperty.all(Colors.blue[900]),
                      padding: WidgetStateProperty.all(
                          const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                      side: WidgetStateProperty.all(const BorderSide(color: Colors.blue, width: 2)),
                      shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ),
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Custom Theme Button'),
                ),
              ),
              const SizedBox(height: 20),
              const Text("OutlinedButtonThemeData - Custom Theme with Text Style",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  outlinedButtonTheme: OutlinedButtonThemeData(
                    style: ButtonStyle(
                      textStyle: WidgetStateProperty.all(const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
                      foregroundColor: WidgetStateProperty.all(Colors.green[900]),
                      side:
                          WidgetStateProperty.all(const BorderSide(color: Colors.green, width: 1)),
                    ),
                  ),
                ),
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Styled Text Button'),
                ),
              ),
              const SizedBox(height: 20),
              const Text("OutlinedButtonThemeData - Custom Theme with Padding and Margin",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  outlinedButtonTheme: OutlinedButtonThemeData(
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(const EdgeInsets.all(20)),
                      side: WidgetStateProperty.all(const BorderSide(color: Colors.red, width: 3)),
                      shape: WidgetStateProperty.all(const CircleBorder()),
                    ),
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('Padded Button'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("OutlinedButtonThemeData - Custom Theme with BorderStyle.solid",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  outlinedButtonTheme: OutlinedButtonThemeData(
                    style: ButtonStyle(
                      side: WidgetStateProperty.all(const BorderSide(
                          color: Colors.purple, width: 4, style: BorderStyle.solid)),
                      shape: WidgetStateProperty.all(
                        const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Bordered Button'),
                ),
              ),
              const SizedBox(height: 20),
              const Text("OutlinedButtonThemeData - Custom Theme with Fixed Size",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  outlinedButtonTheme: OutlinedButtonThemeData(
                    style: ButtonStyle(
                      fixedSize: WidgetStateProperty.all(const Size(150, 50)),
                      side:
                          WidgetStateProperty.all(const BorderSide(color: Colors.orange, width: 2)),
                    ),
                  ),
                ),
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Fixed Size Button'),
                ),
              ),
              const SizedBox(height: 20),
              const Text("OutlinedButtonThemeData - Custom Theme with Icon",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  outlinedButtonTheme: OutlinedButtonThemeData(
                    style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all(Colors.teal[900]),
                      side: WidgetStateProperty.all(const BorderSide(color: Colors.teal, width: 1)),
                    ),
                  ),
                ),
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const Text('Icon Button'),
                ),
              ),
              const SizedBox(height: 20),
              const Text("OutlinedButtonThemeData - Custom Theme with Icon and Text Style",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  outlinedButtonTheme: OutlinedButtonThemeData(
                    style: ButtonStyle(
                      textStyle: WidgetStateProperty.all(
                          const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                      foregroundColor: WidgetStateProperty.all(Colors.brown[900]),
                      side:
                          WidgetStateProperty.all(const BorderSide(color: Colors.brown, width: 1)),
                    ),
                  ),
                ),
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.remove),
                  label: const Text('Styled Icon Button'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
