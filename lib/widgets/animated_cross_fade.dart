import 'package:flutter/material.dart';

class AnimatedCrossFadeScreen extends StatelessWidget {
  const AnimatedCrossFadeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedCrossFade Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("AnimatedCrossFade Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              _buildVariation(
                "Default - First Child",
                AnimatedCrossFade(
                  duration: const Duration(seconds: 1),
                  firstChild: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                  secondChild: Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  crossFadeState: CrossFadeState.showFirst,
                ),
              ),
              SizedBox(height: 20),
              _buildVariation(
                "Default - Second Child",
                AnimatedCrossFade(
                  duration: const Duration(seconds: 1),
                  firstChild: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                  secondChild: Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  crossFadeState: CrossFadeState.showSecond,
                ),
              ),
              SizedBox(height: 20),
              _buildVariation(
                "Custom Duration",
                AnimatedCrossFade(
                  duration: const Duration(milliseconds: 500),
                  firstChild: Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                  secondChild: Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                  crossFadeState: CrossFadeState.showFirst,
                ),
              ),
              SizedBox(height: 20),
              _buildVariation(
                "Custom Size",
                AnimatedCrossFade(
                  duration: const Duration(seconds: 1),
                  firstChild: Container(
                    width: 150,
                    height: 150,
                    color: Colors.purple,
                  ),
                  secondChild: Container(
                    width: 150,
                    height: 150,
                    color: Colors.orange,
                  ),
                  crossFadeState: CrossFadeState.showSecond,
                ),
              ),
              SizedBox(height: 20),
              _buildVariation(
                "Different Widgets",
                AnimatedCrossFade(
                  duration: const Duration(seconds: 1),
                  firstChild: Icon(Icons.star, size: 100, color: Colors.pink),
                  secondChild: Text("Hello", style: TextStyle(fontSize: 40, color: Colors.teal)),
                  crossFadeState: CrossFadeState.showFirst,
                ),
              ),
              SizedBox(height: 20),
              _buildVariation(
                "Different Widgets - Second",
                AnimatedCrossFade(
                  duration: const Duration(seconds: 1),
                  firstChild: Icon(Icons.star, size: 100, color: Colors.pink),
                  secondChild: Text("Hello", style: TextStyle(fontSize: 40, color: Colors.teal)),
                  crossFadeState: CrossFadeState.showSecond,
                ),
              ),
              SizedBox(height: 20),
              _buildVariation(
                "Wrapped in Align",
                Align(
                  alignment: Alignment.center,
                  child: AnimatedCrossFade(
                    duration: const Duration(seconds: 1),
                    firstChild: Container(
                      width: 50,
                      height: 50,
                      color: Colors.grey,
                    ),
                    secondChild: Container(
                      width: 50,
                      height: 50,
                      color: Colors.black,
                    ),
                    crossFadeState: CrossFadeState.showFirst,
                  ),
                ),
              ),
              SizedBox(height: 20),
              _buildVariation(
                "Wrapped in Padding",
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: AnimatedCrossFade(
                    duration: const Duration(seconds: 1),
                    firstChild: Container(
                      width: 50,
                      height: 50,
                      color: Colors.brown,
                    ),
                    secondChild: Container(
                      width: 50,
                      height: 50,
                      color: Colors.cyan,
                    ),
                    crossFadeState: CrossFadeState.showSecond,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVariation(String name, Widget widget) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        widget,
        SizedBox(height: 16),
      ],
    );
  }
}
