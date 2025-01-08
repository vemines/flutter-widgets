import 'package:flutter/material.dart';

class DefaultMaterialLocalizationsScreen extends StatelessWidget {
  const DefaultMaterialLocalizationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DefaultMaterialLocalizations Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "DefaultMaterialLocalizations is not a visual widget. It provides localized strings for Material widgets. It's not directly rendered on the screen. Therefore, we will demonstrate its usage by showing how to access its properties through the MaterialLocalizations class."),
              const SizedBox(height: 20),
              const Text("Accessing Localized Strings:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              _buildLocalizationExample(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLocalizationExample(BuildContext context) {
    final localizations = MaterialLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Open App Drawer Label: ${localizations.openAppDrawerTooltip}"),
        const SizedBox(height: 5),
        Text("Close Button Label: ${localizations.closeButtonLabel}"),
        const SizedBox(height: 5),
        Text("Cancel Button Label: ${localizations.cancelButtonLabel}"),
        const SizedBox(height: 5),
        Text("Next Month Label: ${localizations.nextMonthTooltip}"),
        const SizedBox(height: 5),
        Text("Previous Month Label: ${localizations.previousMonthTooltip}"),
        const SizedBox(height: 5),
        Text(
            "About List Tile Label: ${localizations.aboutListTileTitle('My App')}")
      ],
    );
  }
}
