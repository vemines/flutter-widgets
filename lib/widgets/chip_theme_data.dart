import 'package:flutter/material.dart';

class ChipThemeDataScreen extends StatelessWidget {
  const ChipThemeDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChipThemeData Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("ChipThemeData - Default", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Chip(
                label: const Text("Default Chip"),
              ),
              const SizedBox(height: 16),
              const Text("ChipThemeData - Custom Colors",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  chipTheme: const ChipThemeData(
                    backgroundColor: Colors.blue,
                    labelStyle: TextStyle(color: Colors.white),
                    secondarySelectedColor: Colors.green,
                    selectedColor: Colors.red,
                    disabledColor: Colors.grey,
                    padding: EdgeInsets.all(8),
                    shape:
                        RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    side: BorderSide(color: Colors.black, width: 2),
                    elevation: 4,
                    shadowColor: Colors.black,
                    surfaceTintColor: Colors.yellow,
                    showCheckmark: true,
                    checkmarkColor: Colors.white,
                    deleteIconColor: Colors.white,
                    iconTheme: IconThemeData(color: Colors.white),
                  ),
                ),
                child: Chip(
                  label: const Text("Custom Chip"),
                  onDeleted: () {},
                  deleteIcon: const Icon(Icons.cancel),
                  avatar: const Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 16),
              const Text("ChipThemeData - Custom Text Style",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  chipTheme: const ChipThemeData(
                    labelStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple),
                  ),
                ),
                child: const Chip(label: Text("Styled Text Chip")),
              ),
              const SizedBox(height: 16),
              const Text("ChipThemeData - Custom Padding and Margin",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  chipTheme: const ChipThemeData(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    labelPadding: EdgeInsets.all(10),
                  ),
                ),
                child: const Chip(label: Text("Padded Chip")),
              ),
              const SizedBox(height: 16),
              const Text("ChipThemeData - Custom Shape",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  chipTheme: const ChipThemeData(
                    shape: StadiumBorder(),
                  ),
                ),
                child: const Chip(label: Text("Stadium Border Chip")),
              ),
              const SizedBox(height: 16),
              const Text("ChipThemeData - Custom Border",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  chipTheme: const ChipThemeData(
                    side: BorderSide(color: Colors.red, width: 3),
                  ),
                ),
                child: const Chip(label: Text("Bordered Chip")),
              ),
              const SizedBox(height: 16),
              const Text("ChipThemeData - With Container",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  chipTheme: const ChipThemeData(
                    backgroundColor: Colors.lightGreen,
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: const Chip(label: Text("Chip in Container")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
