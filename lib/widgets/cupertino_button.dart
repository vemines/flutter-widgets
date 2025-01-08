import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonScreen extends StatelessWidget {
  const CupertinoButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CupertinoButton Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("CupertinoButton Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  _buildButtonVariation(
                    "Default Button",
                    CupertinoButton(
                      child: Text("Default"),
                      onPressed: () {},
                    ),
                  ),
                  _buildButtonVariation(
                    "Colored Button",
                    CupertinoButton(
                      color: CupertinoColors.activeBlue,
                      child: Text("Colored", style: TextStyle(color: CupertinoColors.white)),
                      onPressed: () {},
                    ),
                  ),
                  _buildButtonVariation(
                    "Filled Button",
                    CupertinoButton.filled(
                      child: Text("Filled"),
                      onPressed: () {},
                    ),
                  ),
                  _buildButtonVariation(
                    "Disabled Button",
                    CupertinoButton(
                      onPressed: null,
                      child: Text("Disabled"),
                    ),
                  ),
                  _buildButtonVariation(
                    "Button with Padding",
                    CupertinoButton(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Text("Padded"),
                      onPressed: () {},
                    ),
                  ),
                  _buildButtonVariation(
                    "Button with Border Radius",
                    CupertinoButton(
                      borderRadius: BorderRadius.circular(10),
                      child: Text("Rounded"),
                      onPressed: () {},
                    ),
                  ),
                  _buildButtonVariation(
                    "Button with Custom Text Style",
                    CupertinoButton(
                      child: Text("Styled Text", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      onPressed: () {},
                    ),
                  ),
                  _buildButtonVariation(
                    "Button with Icon",
                    CupertinoButton(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(CupertinoIcons.add, size: 20),
                          SizedBox(width: 5),
                          Text("Icon Button"),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  _buildButtonVariation(
                    "Button with Min Size",
                    CupertinoButton(
                      minSize: 60,
                      child: Text("Min Size"),
                      onPressed: () {},
                    ),
                  ),
                  _buildButtonVariation(
                    "Button with Custom Color and Text Color",
                    CupertinoButton(
                      color: CupertinoColors.systemGreen,
                      child: Text("Custom Color", style: TextStyle(color: CupertinoColors.black)),
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

  Widget _buildButtonVariation(String label, Widget button) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(message: label, child: button),
        SizedBox(height: 5),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }
}
