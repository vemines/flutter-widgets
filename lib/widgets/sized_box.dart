import 'package:flutter/material.dart';

class SizedBoxScreen extends StatelessWidget {
  const SizedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SizedBox Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("SizedBox - Basic Size", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                width: 100,
                height: 50,
                child: Container(color: Colors.blue),
              ),
              const SizedBox(height: 16),
              const Text("SizedBox - Different Size", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                width: 200,
                height: 100,
                child: Container(color: Colors.green),
              ),
              const SizedBox(height: 16),
              const Text("SizedBox - Zero Size", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                width: 0,
                height: 0,
                child: Container(color: Colors.red),
              ),
              const SizedBox(height: 16),
              const Text("SizedBox - With Child", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              SizedBox(
                width: 150,
                height: 75,
                child: Center(child: Text("Child Text", style: TextStyle(color: Colors.white))),
                
              ),
              const SizedBox(height: 16),
              const Text("SizedBox - With Infinite Width (Will cause layout error if not wrapped)", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              // SizedBox(
              //   width: double.infinity,
              //   height: 50,
              //   child: Container(color: Colors.purple),
              // ),
              const Text("SizedBox with infinite width will cause layout error if not wrapped in a widget that provides constraints, such as a Container or Expanded. Commented out to prevent error."),
              const SizedBox(height: 16),
              const Text("SizedBox - Used as Spacer", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                children: [
                  Container(width: 50, height: 50, color: Colors.orange),
                  const SizedBox(width: 20),
                  Container(width: 50, height: 50, color: Colors.teal),
                ],
              ),
              const SizedBox(height: 16),
              const Text("SizedBox - Used as Vertical Spacer", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Column(
                children: [
                  Container(width: 50, height: 50, color: Colors.orange),
                  const SizedBox(height: 20),
                  Container(width: 50, height: 50, color: Colors.teal),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
