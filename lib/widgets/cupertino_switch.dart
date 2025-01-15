import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSwitchScreen extends StatelessWidget {
  const CupertinoSwitchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoSwitch Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoSwitch", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const CupertinoSwitchExample(
                title: "Switch",
              ),
              const SizedBox(height: 20),
              const Text("CupertinoSwitch with different colors",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const CupertinoSwitchExample(
                title: "Active Color Blue",
                activeColor: Colors.blue,
              ),
              const SizedBox(height: 8),
              const CupertinoSwitchExample(
                title: "Thumb Color Red",
                thumbColor: Colors.red,
              ),
              const SizedBox(height: 20),
              const Text("CupertinoSwitch with different sizes",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const CupertinoSwitchExample(
                title: "Larger Switch",
                scale: 1.5,
              ),
              const SizedBox(height: 20),
              const Text("CupertinoSwitch with different track color",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const CupertinoSwitchExample(
                title: "Track Color Grey",
                trackColor: Colors.grey,
              ),
              const SizedBox(height: 20),
              const Text("CupertinoSwitch with different active and thumb color",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const CupertinoSwitchExample(
                title: "Active Color Green, Thumb Color Yellow",
                activeColor: Colors.green,
                thumbColor: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CupertinoSwitchExample extends StatefulWidget {
  final String title;
  final Color? activeColor;
  final Color? thumbColor;
  final double scale;
  final Color? trackColor;

  const CupertinoSwitchExample({
    super.key,
    required this.title,
    this.activeColor,
    this.thumbColor,
    this.scale = 1.0,
    this.trackColor,
  });

  @override
  CupertinoSwitchExampleState createState() => CupertinoSwitchExampleState();
}

class CupertinoSwitchExampleState extends State<CupertinoSwitchExample> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.title),
        const SizedBox(width: 10),
        Transform.scale(
          scale: widget.scale,
          child: CupertinoSwitch(
            value: _switchValue,
            onChanged: (bool value) {
              setState(() {
                _switchValue = value;
              });
            },
            activeTrackColor: widget.activeColor,
            thumbColor: widget.thumbColor,
            inactiveTrackColor: widget.trackColor,
          ),
        ),
      ],
    );
  }
}
