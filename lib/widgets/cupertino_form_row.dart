import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoFormRowScreen extends StatelessWidget {
  const CupertinoFormRowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoFormRow Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoFormRow Variations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("Default CupertinoFormRow:"),
              const CupertinoFormRow(
                prefix: Text("Label"),
                child: Text("Value"),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoFormRow with padding:"),
              CupertinoFormRow(
                padding: const EdgeInsets.all(20),
                prefix: const Text("Label"),
                child: const Text("Value"),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoFormRow with different prefix and child:"),
              CupertinoFormRow(
                prefix: const Icon(CupertinoIcons.person_fill),
                child: const CupertinoTextField(
                  placeholder: "Enter text",
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoFormRow with a large prefix:"),
              CupertinoFormRow(
                prefix: Container(
                  width: 100,
                  height: 50,
                  color: Colors.grey[300],
                  child: const Center(child: Text("Large Prefix")),
                ),
                child: const Text("Value"),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoFormRow with a large child:"),
              CupertinoFormRow(
                prefix: const Text("Label"),
                child: Container(
                  width: 200,
                  height: 50,
                  color: Colors.grey[200],
                  child: const Center(child: Text("Large Child")),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoFormRow with a custom divider:"),
              Column(
                children: [
                  CupertinoFormRow(
                    prefix: const Text("Label"),
                    child: const Text("Value"),
                  ),
                  const Divider(color: Colors.red, thickness: 2),
                ],
              ),
              const SizedBox(height: 20),
              const Text("CupertinoFormRow with a custom background color:"),
              Container(
                color: Colors.blue[50],
                child: const CupertinoFormRow(
                  prefix: Text("Label"),
                  child: Text("Value"),
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoFormRow with a custom text style:"),
              CupertinoFormRow(
                prefix: const Text("Label", style: TextStyle(fontWeight: FontWeight.bold)),
                child: const Text("Value", style: TextStyle(color: Colors.green)),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoFormRow with a custom prefix and child alignment:"),
              CupertinoFormRow(
                prefix: const Text("Label", textAlign: TextAlign.end),
                child: const Text("Value", textAlign: TextAlign.start),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoFormRow with a custom prefix and child alignment and padding:"),
              CupertinoFormRow(
                padding: const EdgeInsets.all(10),
                prefix: const Text("Label", textAlign: TextAlign.end),
                child: const Text("Value", textAlign: TextAlign.start),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
