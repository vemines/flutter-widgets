import 'package:flutter/material.dart';

class LocalizationsScreen extends StatelessWidget {
  const LocalizationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Localizations Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Localizations - Basic Usage", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              // Localizations widget without a child is not useful on its own.
              // It needs a child that uses the localization data.
              // Localizations(
              //   locale: Locale('en', 'US'),
              //   delegates: [
              //     DefaultMaterialLocalizations.delegate,
              //     DefaultWidgetsLocalizations.delegate,
              //   ],
              //   child: Container(),
              // ),
              // SizedBox(height: 16),
              Text("Localizations - With a child using localization data", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Localizations(
                locale: Locale('en', 'US'),
                delegates: [
                  DefaultMaterialLocalizations.delegate,
                  DefaultWidgetsLocalizations.delegate,
                ],
                child: Builder(
                  builder: (context) {
                    return Column(
                      children: [
                        Text(MaterialLocalizations.of(context).okButtonLabel),
                        Text(MaterialLocalizations.of(context).cancelButtonLabel),
                        Text(MaterialLocalizations.of(context).closeButtonLabel),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 16),
              Text("Localizations - With a child using localization data (Spanish)", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Localizations(
                locale: Locale('es', 'ES'),
                delegates: [
                  DefaultMaterialLocalizations.delegate,
                  DefaultWidgetsLocalizations.delegate,
                ],
                child: Builder(
                  builder: (context) {
                    return Column(
                      children: [
                        Text(MaterialLocalizations.of(context).okButtonLabel),
                        Text(MaterialLocalizations.of(context).cancelButtonLabel),
                        Text(MaterialLocalizations.of(context).closeButtonLabel),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 16),
              Text("Localizations - With a child using localization data (French)", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Localizations(
                locale: Locale('fr', 'FR'),
                delegates: [
                  DefaultMaterialLocalizations.delegate,
                  DefaultWidgetsLocalizations.delegate,
                ],
                child: Builder(
                  builder: (context) {
                    return Column(
                      children: [
                        Text(MaterialLocalizations.of(context).okButtonLabel),
                        Text(MaterialLocalizations.of(context).cancelButtonLabel),
                        Text(MaterialLocalizations.of(context).closeButtonLabel),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
