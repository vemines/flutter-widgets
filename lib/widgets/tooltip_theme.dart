import 'package:flutter/material.dart';

class TooltipThemeScreen extends StatelessWidget {
  const TooltipThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TooltipTheme Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("TooltipTheme Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("TooltipTheme - Default"),
              TooltipTheme(
                data: const TooltipThemeData(),
                child:  Tooltip(
                  message: 'Default Tooltip',
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[300],
                    child: const Text('Hover Me'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("TooltipTheme - Custom Background Color"),
              TooltipTheme(
                data: TooltipThemeData(
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Tooltip(
                  message: 'Custom Background',
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[300],
                    child: const Text('Hover Me'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("TooltipTheme - Custom Text Style"),
              TooltipTheme(
                data: TooltipThemeData(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Tooltip(
                  message: 'Custom Text Style',
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[300],
                    child: const Text('Hover Me'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("TooltipTheme - Custom Padding"),
              TooltipTheme(
                data: TooltipThemeData(
                  padding: const EdgeInsets.all(20),
                ),
                child: Tooltip(
                  message: 'Custom Padding',
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[300],
                    child: const Text('Hover Me'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("TooltipTheme - Custom Height"),
              TooltipTheme(
                data: TooltipThemeData(
                  height: 40,
                ),
                child: Tooltip(
                  message: 'Custom Height',
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[300],
                    child: const Text('Hover Me'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("TooltipTheme - Custom Vertical Offset"),
              TooltipTheme(
                data: TooltipThemeData(
                  verticalOffset: 30,
                ),
                child: Tooltip(
                  message: 'Custom Vertical Offset',
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[300],
                    child: const Text('Hover Me'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("TooltipTheme - Custom Show Duration"),
              TooltipTheme(
                data: TooltipThemeData(
                  showDuration: const Duration(seconds: 3),
                ),
                child: Tooltip(
                  message: 'Custom Show Duration',
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[300],
                    child: const Text('Hover Me'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("TooltipTheme - Custom Wait Duration"),
              TooltipTheme(
                data: TooltipThemeData(
                  waitDuration: const Duration(seconds: 1),
                ),
                child: Tooltip(
                  message: 'Custom Wait Duration',
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[300],
                    child: const Text('Hover Me'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("TooltipTheme - Custom Prefer Below"),
              TooltipTheme(
                data: TooltipThemeData(
                  preferBelow: false,
                ),
                child: Tooltip(
                  message: 'Custom Prefer Below',
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[300],
                    child: const Text('Hover Me'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("TooltipTheme - Custom Trigger Mode"),
              TooltipTheme(
                data: TooltipThemeData(
                  triggerMode: TooltipTriggerMode.longPress,
                ),
                child: Tooltip(
                  message: 'Custom Trigger Mode',
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[300],
                    child: const Text('Long Press Me'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("TooltipTheme - Wrapping a Container"),
              TooltipTheme(
                data: const TooltipThemeData(),
                child: Tooltip(
                  message: 'Wrapped Container',
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.green[100],
                    child: const Text('Hover Me'),
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
