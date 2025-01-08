import 'package:flutter/material.dart';

class ChoiceChipScreen extends StatelessWidget {
  const ChoiceChipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChoiceChip Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Basic ChoiceChip", style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                children: [
                  ChoiceChip(
                    label: Text('Option 1'),
                    selected: true,
                    onSelected: (bool selected) {},
                  ),
                  ChoiceChip(
                    label: Text('Option 2'),
                    selected: false,
                    onSelected: (bool selected) {},
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("ChoiceChip - Different Colors", style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                children: [
                  ChoiceChip(
                    label: Text('Blue Background'),
                    selected: true,
                    onSelected: (bool selected) {},
                    selectedColor: Colors.blue,
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  ChoiceChip(
                    label: Text('Red Text'),
                    selected: false,
                    onSelected: (bool selected) {},
                    labelStyle: TextStyle(color: Colors.red),
                  ),
                  ChoiceChip(
                    label: Text('Green Selected'),
                    selected: true,
                    onSelected: (bool selected) {},
                    selectedColor: Colors.green,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("ChoiceChip - Different Sizes and Padding", style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                children: [
                  ChoiceChip(
                    label: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Small Padding'),
                    ),
                    selected: true,
                    onSelected: (bool selected) {},
                  ),
                  ChoiceChip(
                    label: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      child: Text('Large Padding'),
                    ),
                    selected: false,
                    onSelected: (bool selected) {},
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("ChoiceChip - Different Border Radius", style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                children: [
                  ChoiceChip(
                    label: Text('Rounded'),
                    selected: true,
                    onSelected: (bool selected) {},
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  ChoiceChip(
                    label: Text('Circular'),
                    selected: false,
                    onSelected: (bool selected) {},
                    shape: CircleBorder(),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("ChoiceChip - Disabled", style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                children: [
                  ChoiceChip(
                    label: Text('Disabled'),
                    selected: false,
                    onSelected: null,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("ChoiceChip - With Avatar", style: TextStyle(fontWeight: FontWeight.bold)),
              Wrap(
                spacing: 8.0,
                children: [
                  ChoiceChip(
                    label: Text('With Avatar'),
                    selected: true,
                    onSelected: (bool selected) {},
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, color: Colors.white),
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
}
