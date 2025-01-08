import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPageTransitionScreen extends StatelessWidget {
  const CupertinoPageTransitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoPageTransition Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoPageTransition - Default"),
              const SizedBox(height: 8),
              CupertinoPageTransition(
                primaryRouteAnimation: const AlwaysStoppedAnimation(0.0),
                secondaryRouteAnimation: const AlwaysStoppedAnimation(1.0),
                linearTransition: false,
                child: Container(
                  color: Colors.blue.shade100,
                  padding: const EdgeInsets.all(16),
                  child: const Text("Default Transition"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoPageTransition - Linear Transition"),
              const SizedBox(height: 8),
              CupertinoPageTransition(
                primaryRouteAnimation: const AlwaysStoppedAnimation(0.0),
                secondaryRouteAnimation: const AlwaysStoppedAnimation(1.0),
                linearTransition: true,
                child: Container(
                  color: Colors.green.shade100,
                  padding: const EdgeInsets.all(16),
                  child: const Text("Linear Transition"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoPageTransition - Custom Animation"),
              const SizedBox(height: 8),
              CupertinoPageTransition(
                primaryRouteAnimation: const AlwaysStoppedAnimation(0.5),
                secondaryRouteAnimation: const AlwaysStoppedAnimation(0.5),
                linearTransition: false,
                child: Container(
                  color: Colors.orange.shade100,
                  padding: const EdgeInsets.all(16),
                  child: const Text("Custom Animation"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoPageTransition - With Text Widget"),
              const SizedBox(height: 8),
              CupertinoPageTransition(
                primaryRouteAnimation: const AlwaysStoppedAnimation(0.0),
                secondaryRouteAnimation: const AlwaysStoppedAnimation(1.0),
                linearTransition: false,
                child: const Text("Text Widget Inside"),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoPageTransition - With Padding"),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CupertinoPageTransition(
                  primaryRouteAnimation: const AlwaysStoppedAnimation(0.0),
                  secondaryRouteAnimation: const AlwaysStoppedAnimation(1.0),
                  linearTransition: false,
                  child: Container(
                    color: Colors.purple.shade100,
                    padding: const EdgeInsets.all(16),
                    child: const Text("With Padding"),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoPageTransition - With Alignment"),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: CupertinoPageTransition(
                  primaryRouteAnimation: const AlwaysStoppedAnimation(0.0),
                  secondaryRouteAnimation: const AlwaysStoppedAnimation(1.0),
                  linearTransition: false,
                  child: Container(
                    color: Colors.teal.shade100,
                    padding: const EdgeInsets.all(16),
                    child: const Text("With Alignment"),
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
