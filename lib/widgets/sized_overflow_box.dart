import 'package:flutter/material.dart';

class SizedOverflowBoxScreen extends StatelessWidget {
  const SizedOverflowBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SizedOverflowBox Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("SizedOverflowBox Variations", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildSizedOverflowBox(
                    label: "SizedOverflowBox - Basic",
                    sizedOverflowBox: SizedOverflowBox(
                      size: Size(100, 50),
                      child: Container(
                        color: Colors.blue,
                        width: 200,
                        height: 100,
                        child: Center(child: Text("Overflow", style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ),
                  _buildSizedOverflowBox(
                    label: "SizedOverflowBox - Different Size",
                    sizedOverflowBox: SizedOverflowBox(
                      size: Size(50, 100),
                      child: Container(
                        color: Colors.green,
                        width: 100,
                        height: 50,
                        child: Center(child: Text("Overflow", style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ),
                  _buildSizedOverflowBox(
                    label: "SizedOverflowBox - Alignment Top Left",
                    sizedOverflowBox: SizedOverflowBox(
                      size: Size(100, 100),
                      alignment: Alignment.topLeft,
                      child: Container(
                        color: Colors.orange,
                        width: 200,
                        height: 200,
                        child: Text("Overflow", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  _buildSizedOverflowBox(
                    label: "SizedOverflowBox - Alignment Bottom Right",
                    sizedOverflowBox: SizedOverflowBox(
                      size: Size(100, 100),
                      alignment: Alignment.bottomRight,
                      child: Container(
                        color: Colors.purple,
                        width: 200,
                        height: 200,
                        child: Text("Overflow", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  _buildSizedOverflowBox(
                    label: "SizedOverflowBox - No Overflow",
                    sizedOverflowBox: SizedOverflowBox(
                      size: Size(200, 100),
                      child: Container(
                        color: Colors.red,
                        width: 100,
                        height: 50,
                        child: Center(child: Text("No Overflow", style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ),
                  _buildSizedOverflowBox(
                    label: "SizedOverflowBox - With Padding",
                    sizedOverflowBox: SizedOverflowBox(
                      size: Size(100, 100),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          color: Colors.teal,
                          width: 200,
                          height: 200,
                          child: Text("Overflow", style: TextStyle(color: Colors.white)),
                        ),
                      ),
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

  Widget _buildSizedOverflowBox({required String label, required SizedOverflowBox sizedOverflowBox}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        sizedOverflowBox,
      ],
    );
  }
}
