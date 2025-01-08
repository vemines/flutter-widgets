import 'package:flutter/material.dart';

class LocaleResolutionCallbackScreen extends StatelessWidget {
  const LocaleResolutionCallbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LocaleResolutionCallback Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("LocaleResolutionCallback - Basic Usage", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              // LocaleResolutionCallback is a function, not a widget, so we can't display it directly.
              // Instead, we'll demonstrate how it's used in the MaterialApp.
              const Text("The LocaleResolutionCallback is used within the MaterialApp's localeResolutionCallback property. It's not a widget itself, so we can't display it directly. See the MaterialApp setup for its usage."),
              const SizedBox(height: 20),
              const Text("Example Usage (Conceptual)", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text("The localeResolutionCallback is a function that takes a list of supported locales and the device's current locale, and returns the resolved locale. It's used by Flutter to determine which locale to use for the app."),
              const SizedBox(height: 20),
              const Text("Code Example (Conceptual)", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text("""
              MaterialApp(
                localeResolutionCallback: (locales, supportedLocales) {
                  // Your custom logic here to resolve the locale
                  // Example:
                  for (var locale in locales) {
                    if (supportedLocales.contains(locale)) {
                      return locale;
                    }
                  }
                  return supportedLocales.first; // Default to the first supported locale
                },
                supportedLocales: [
                  Locale('en', 'US'),
                  Locale('es', 'ES'),
                ],
                // ... other properties
              )
              """),
            ],
          ),
        ),
      ),
    );
  }
}
