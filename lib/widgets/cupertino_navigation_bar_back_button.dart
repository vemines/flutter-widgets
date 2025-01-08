import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoNavigationBarBackButtonScreen extends StatelessWidget {
  const CupertinoNavigationBarBackButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoNavigationBarBackButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildBackButton(
                    "Default",
                    CupertinoNavigationBarBackButton(),
                  ),
                  _buildBackButton(
                    "Custom Color",
                    CupertinoNavigationBarBackButton(
                      color: Colors.blue,
                    ),
                  ),
                  _buildBackButton(
                    "Custom Icon",
                    CupertinoNavigationBarBackButton(
                      previousPageTitle: "Back",
                      onPressed: () {},
                    ),
                  ),
                  _buildBackButton(
                    "Custom Icon and Color",
                    CupertinoNavigationBarBackButton(
                      color: Colors.green,
                      previousPageTitle: "Go Back",
                      onPressed: () {},
                    ),
                  ),
                  _buildBackButton(
                    "Custom Icon and Text",
                    CupertinoNavigationBarBackButton(
                      previousPageTitle: "Previous",
                      onPressed: () {},
                    ),
                  ),
                  _buildBackButton(
                    "Custom Icon and Text and Color",
                    CupertinoNavigationBarBackButton(
                      color: Colors.red,
                      previousPageTitle: "Return",
                      onPressed: () {},
                    ),
                  ),
                  _buildBackButton(
                    "With Text",
                    CupertinoNavigationBarBackButton(
                      previousPageTitle: "Back",
                      onPressed: () {},
                    ),
                  ),
                  _buildBackButton(
                    "With Text and Color",
                    CupertinoNavigationBarBackButton(
                      color: Colors.orange,
                      previousPageTitle: "Go Back",
                      onPressed: () {},
                    ),
                  ),
                  _buildBackButton(
                    "With Text and Color and Icon",
                    CupertinoNavigationBarBackButton(
                      color: Colors.purple,
                      previousPageTitle: "Return",
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackButton(String label, Widget backButton) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(message: label, child: backButton),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
