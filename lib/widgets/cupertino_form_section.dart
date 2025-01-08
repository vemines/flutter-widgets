import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoFormSectionScreen extends StatelessWidget {
  const CupertinoFormSectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoFormSection Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoFormSection Variations:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("Default CupertinoFormSection:"),
              CupertinoFormSection(
                children: [
                  CupertinoFormRow(
                    prefix: const Text('Name'),
                    child: CupertinoTextField(placeholder: 'Enter your name'),
                  ),
                  CupertinoFormRow(
                    prefix: const Text('Email'),
                    child: CupertinoTextField(placeholder: 'Enter your email'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text("CupertinoFormSection with Header:"),
              CupertinoFormSection.insetGrouped(
                header: const Text('Personal Information'),
                children: [
                  CupertinoFormRow(
                    prefix: const Text('Name'),
                    child: CupertinoTextField(placeholder: 'Enter your name'),
                  ),
                  CupertinoFormRow(
                    prefix: const Text('Email'),
                    child: CupertinoTextField(placeholder: 'Enter your email'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text("CupertinoFormSection with Footer:"),
              CupertinoFormSection(
                footer: const Text('This is a footer'),
                children: [
                  CupertinoFormRow(
                    prefix: const Text('Name'),
                    child: CupertinoTextField(placeholder: 'Enter your name'),
                  ),
                  CupertinoFormRow(
                    prefix: const Text('Email'),
                    child: CupertinoTextField(placeholder: 'Enter your email'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text("CupertinoFormSection with Header and Footer:"),
              CupertinoFormSection.insetGrouped(
                header: const Text('Contact Information'),
                footer: const Text('Please fill out the form'),
                children: [
                  CupertinoFormRow(
                    prefix: const Text('Phone'),
                    child: CupertinoTextField(placeholder: 'Enter your phone number'),
                  ),
                  CupertinoFormRow(
                    prefix: const Text('Address'),
                    child: CupertinoTextField(placeholder: 'Enter your address'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text("CupertinoFormSection with custom margin:"),
              CupertinoFormSection(
                margin: const EdgeInsets.all(20),
                children: [
                  CupertinoFormRow(
                    prefix: const Text('Name'),
                    child: CupertinoTextField(placeholder: 'Enter your name'),
                  ),
                  CupertinoFormRow(
                    prefix: const Text('Email'),
                    child: CupertinoTextField(placeholder: 'Enter your email'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text("CupertinoFormSection with custom background color:"),
              CupertinoFormSection(
                backgroundColor: Colors.grey[200]!,
                children: [
                  CupertinoFormRow(
                    prefix: const Text('Name'),
                    child: CupertinoTextField(placeholder: 'Enter your name'),
                  ),
                  CupertinoFormRow(
                    prefix: const Text('Email'),
                    child: CupertinoTextField(placeholder: 'Enter your email'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text("CupertinoFormSection with insetGrouped and custom margin:"),
              CupertinoFormSection.insetGrouped(
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                children: [
                  CupertinoFormRow(
                    prefix: const Text('Name'),
                    child: CupertinoTextField(placeholder: 'Enter your name'),
                  ),
                  CupertinoFormRow(
                    prefix: const Text('Email'),
                    child: CupertinoTextField(placeholder: 'Enter your email'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
