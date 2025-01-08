import 'package:flutter/material.dart';

class OverlayScreen extends StatelessWidget {
  const OverlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Overlay Showcase"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Overlay - Basic Example", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            OverlayExample(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text("Overlay - With Container", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            OverlayExampleWithContainer(),
          ],
        ),
      ),
    );
  }
}

class OverlayExample extends StatefulWidget {
  const OverlayExample({super.key});

  @override
  _OverlayExampleState createState() => _OverlayExampleState();
}

class _OverlayExampleState extends State<OverlayExample> {
  OverlayEntry? _overlayEntry;

  void _showOverlay(BuildContext context) {
    if (_overlayEntry != null) {
      return;
    }

    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: 100,
        left: 50,
        child: Material(
          color: Colors.grey.withValues(alpha: 255 * 0.8),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("This is an overlay!", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );

    Overlay.of(context).insert(_overlayEntry!);
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          if (_overlayEntry == null) {
            _showOverlay(context);
          } else {
            _removeOverlay();
          }
        },
        child: Text(_overlayEntry == null ? "Show Overlay" : "Hide Overlay"),
      ),
    );
  }
}

class OverlayExampleWithContainer extends StatefulWidget {
  const OverlayExampleWithContainer({super.key});

  @override
  _OverlayExampleWithContainerState createState() => _OverlayExampleWithContainerState();
}

class _OverlayExampleWithContainerState extends State<OverlayExampleWithContainer> {
  OverlayEntry? _overlayEntry;

  void _showOverlay(BuildContext context) {
    if (_overlayEntry != null) {
      return;
    }

    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: 150,
        left: 100,
        child: Material(
          color: Colors.blue.withValues(alpha: 255 * 0.8),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Text("Overlay with Container!", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );

    Overlay.of(context).insert(_overlayEntry!);
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          if (_overlayEntry == null) {
            _showOverlay(context);
          } else {
            _removeOverlay();
          }
        },
        child: Text(_overlayEntry == null ? "Show Overlay" : "Hide Overlay"),
      ),
    );
  }
}
