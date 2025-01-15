import 'package:flutter/material.dart';

class DefaultWidgetsLocalizationsScreen extends StatelessWidget {
  const DefaultWidgetsLocalizationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DefaultWidgetsLocalizations Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("DefaultWidgetsLocalizations - Usage",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Tooltip(
                message: "DefaultWidgetsLocalizations without wrapping another widget.",
                child: DefaultWidgetsLocalizations(),
              ),
              const SizedBox(height: 20),
              const Text("DefaultWidgetsLocalizations - Wrapped with Text",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Tooltip(
                message: "DefaultWidgetsLocalizations wrapping a Text widget.",
                child: DefaultWidgetsLocalizations(
                  child: const Text("Localized Text"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("DefaultWidgetsLocalizations - Wrapped with Container",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Tooltip(
                message: "DefaultWidgetsLocalizations wrapping a Container widget.",
                child: DefaultWidgetsLocalizations(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.blue.shade100,
                    child: const Text("Container Content"),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("DefaultWidgetsLocalizations - With Custom Locale",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Tooltip(
                message:
                    "DefaultWidgetsLocalizations with a custom locale (e.g., Spanish). Note that this will only affect the text if the app is configured to use the specified locale.",
                child: DefaultWidgetsLocalizations(
                  locale: const Locale('es'),
                  child: const Text("Localized Text (Spanish)"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("DefaultWidgetsLocalizations - With Custom Text Direction",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Tooltip(
                message:
                    "DefaultWidgetsLocalizations with a custom text direction (e.g., Right-to-Left). Note that this will only affect the text if the app is configured to use the specified text direction.",
                child: DefaultWidgetsLocalizations(
                  textDirection: TextDirection.rtl,
                  child: const Text("Localized Text (RTL)"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DefaultWidgetsLocalizations extends StatelessWidget {
  final Widget? child;
  final Locale? locale;
  final TextDirection? textDirection;

  const DefaultWidgetsLocalizations({super.key, this.child, this.locale, this.textDirection});

  @override
  Widget build(BuildContext context) {
    return Localizations.override(
      context: context,
      locale: locale,
      child: Directionality(
        textDirection: textDirection ?? TextDirection.ltr,
        child: child ?? const Text("Default Localized Text"),
      ),
    );
  }
}
