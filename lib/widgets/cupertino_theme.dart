import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoThemeScreen extends StatelessWidget {
  const CupertinoThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoTheme Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoTheme Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("CupertinoTheme - Default (No Wrapping)", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              // CupertinoTheme without wrapping another widget.
              // This doesn't display anything visually on its own, as it's a theme provider.
              // It needs to wrap a widget to have an effect.
              // const CupertinoTheme(
              //   data: CupertinoThemeData(),
              //   child: SizedBox(),
              // ),
              const Text("CupertinoTheme - With Container", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTheme(
                data: const CupertinoThemeData(
                  primaryColor: CupertinoColors.activeBlue,
                  scaffoldBackgroundColor: CupertinoColors.systemGrey6,
                ),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: CupertinoColors.white,
                  child: const Text("Themed Container", style: TextStyle(color: CupertinoColors.black)),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTheme - With Text", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTheme(
                data: const CupertinoThemeData(
                  textTheme: CupertinoTextThemeData(
                    textStyle: TextStyle(fontSize: 20, color: CupertinoColors.destructiveRed),
                  ),
                ),
                child: const Text("Themed Text"),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTheme - With Button", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTheme(
                data: const CupertinoThemeData(
                  primaryColor: CupertinoColors.activeGreen,
                ),
                child: CupertinoButton(
                  onPressed: () {},
                  child: const Text("Themed Button"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTheme - With Slider", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTheme(
                data: const CupertinoThemeData(
                  primaryColor: CupertinoColors.systemOrange,
                ),
                child: const CupertinoSlider(
                  value: 0.5,
                  onChanged: null,
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoTheme - With Activity Indicator", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              CupertinoTheme(
                data: const CupertinoThemeData(
                  primaryColor: CupertinoColors.systemPurple,
                ),
                child: const CupertinoActivityIndicator(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
