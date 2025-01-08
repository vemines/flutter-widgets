import 'package:flutter/material.dart';

class CheckboxThemeDataScreen extends StatelessWidget {
  const CheckboxThemeDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CheckboxThemeData Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CheckboxThemeData - Default"),
              const SizedBox(height: 8),
              Checkbox(
                value: true,
                onChanged: (bool? value) {},
              ),
              const SizedBox(height: 16),
              const Text("CheckboxThemeData - Custom Colors"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  checkboxTheme: CheckboxThemeData(
                    fillColor: WidgetStateProperty.resolveWith<Color?>(
                      (Set<WidgetState> states) {
                        if (states.contains(WidgetState.selected)) {
                          return Colors.green;
                        }
                        return Colors.red;
                      },
                    ),
                    checkColor: WidgetStateProperty.all(Colors.white),
                  ),
                ),
                child: Checkbox(
                  value: true,
                  onChanged: (bool? value) {},
                ),
              ),
              const SizedBox(height: 16),
              const Text("CheckboxThemeData - Custom Shape"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  checkboxTheme: CheckboxThemeData(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: Checkbox(
                  value: true,
                  onChanged: (bool? value) {},
                ),
              ),
              const SizedBox(height: 16),
              const Text("CheckboxThemeData - Custom Border"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  checkboxTheme: CheckboxThemeData(
                    side: const BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                ),
                child: Checkbox(
                  value: true,
                  onChanged: (bool? value) {},
                ),
              ),
              const SizedBox(height: 16),
              const Text("CheckboxThemeData - Custom Material Tap Target Size"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  checkboxTheme: CheckboxThemeData(
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                  ),
                ),
                child: Checkbox(
                  value: true,
                  onChanged: (bool? value) {},
                ),
              ),
              const SizedBox(height: 16),
              const Text("CheckboxThemeData - Custom Visual Density"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  checkboxTheme: CheckboxThemeData(
                    visualDensity: VisualDensity.comfortable,
                  ),
                ),
                child: Checkbox(
                  value: true,
                  onChanged: (bool? value) {},
                ),
              ),
              const SizedBox(height: 16),
              const Text("CheckboxThemeData - Wrapping a Checkbox"),
              const SizedBox(height: 8),
              Theme(
                data: ThemeData(
                  checkboxTheme: CheckboxThemeData(
                    fillColor: WidgetStateProperty.all(Colors.purple),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Checkbox(
                    value: true,
                    onChanged: (bool? value) {},
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
