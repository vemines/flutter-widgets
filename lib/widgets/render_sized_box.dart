import 'package:flutter/material.dart';

class RenderSizedBoxScreen extends StatelessWidget {
  const RenderSizedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RenderSizedBox Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("SizedBox Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildSizedBoxVariation(
                    name: "SizedBox - Fixed Size",
                    description: "SizedBox with a fixed width and height.",
                    child: SizedBox(
                      width: 100,
                      height: 50,
                      child: Container(color: Colors.blue),
                    ),
                  ),
                  _buildSizedBoxVariation(
                    name: "SizedBox - Only Width",
                    description: "SizedBox with only a specified width.",
                    child: SizedBox(
                      width: 150,
                      child: Container(color: Colors.green),
                    ),
                  ),
                  _buildSizedBoxVariation(
                    name: "SizedBox - Only Height",
                    description: "SizedBox with only a specified height.",
                    child: SizedBox(
                      height: 75,
                      child: Container(color: Colors.red),
                    ),
                  ),
                  _buildSizedBoxVariation(
                    name: "SizedBox - Zero Size",
                    description: "SizedBox with zero width and height.",
                    child: SizedBox(
                      width: 0,
                      height: 0,
                      child: Container(color: Colors.grey),
                    ),
                  ),
                  _buildSizedBoxVariation(
                    name: "SizedBox - With Child",
                    description: "SizedBox wrapping a Text widget.",
                    child: SizedBox(
                      width: 200,
                      height: 60,
                      child: Center(child: Text("Hello", style: TextStyle(color: Colors.white))),
                    ),
                  ),
                  _buildSizedBoxVariation(
                    name: "SizedBox - With Child and Alignment",
                    description: "SizedBox wrapping a Text widget with alignment.",
                    child: SizedBox(
                      width: 150,
                      height: 80,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text("Aligned", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  _buildSizedBoxVariation(
                    name: "SizedBox - Infinite Width",
                    description: "SizedBox with infinite width.",
                    child: SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: Container(color: Colors.purple, child: Center(child: Text("Infinite Width", style: TextStyle(color: Colors.white)))),
                    ),
                  ),
                  _buildSizedBoxVariation(
                    name: "SizedBox - Infinite Height",
                    description: "SizedBox with infinite height.",
                    child: SizedBox(
                      height: double.infinity,
                      child: Container(color: Colors.orange, child: Center(child: Text("Infinite Height", style: TextStyle(color: Colors.white)))),
                    ),
                  ),
                  _buildSizedBoxVariation(
                    name: "SizedBox - No Child",
                    description: "SizedBox without a child (creates space).",
                    child: SizedBox(
                      width: 50,
                      height: 50,
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

  Widget _buildSizedBoxVariation({required String name, required String description, required Widget child}) {
    return Tooltip(
      message: description,
      child: Column(
        children: [
          Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          child,
        ],
      ),
    );
  }
}
