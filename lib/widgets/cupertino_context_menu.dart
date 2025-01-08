import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoContextMenuScreen extends StatelessWidget {
  const CupertinoContextMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoContextMenu Showcase'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("CupertinoContextMenu - Basic"),
            const SizedBox(height: 8),
            CupertinoContextMenu(
              actions: [
                CupertinoContextMenuAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Action 1'),
                ),
                CupertinoContextMenuAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Action 2'),
                ),
              ],
              child: Container(
                padding: const EdgeInsets.all(16),
                color: Colors.grey[300],
                child: const Text('Tap and Hold'),
              ),
            ),
            const SizedBox(height: 20),
            const Text("CupertinoContextMenu - Custom Background Color"),
            const SizedBox(height: 8),
            CupertinoContextMenu(
              actions: [
                CupertinoContextMenuAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Action 1'),
                ),
                CupertinoContextMenuAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Action 2'),
                ),
              ],
              child: Container(
                padding: const EdgeInsets.all(16),
                color: Colors.blue[100],
                child: const Text('Tap and Hold'),
              ),
            ),
            const SizedBox(height: 20),
            const Text("CupertinoContextMenu - Custom Border Radius"),
            const SizedBox(height: 8),
            CupertinoContextMenu(
              actions: [
                CupertinoContextMenuAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Action 1'),
                ),
                CupertinoContextMenuAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Action 2'),
                ),
              ],
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text('Tap and Hold'),
              ),
            ),
            const SizedBox(height: 20),
            const Text("CupertinoContextMenu - Custom Actions"),
            const SizedBox(height: 8),
            CupertinoContextMenu(
              actions: [
                CupertinoContextMenuAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  isDestructiveAction: true,
                  child: const Text('Delete'),
                ),
                CupertinoContextMenuAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Share'),
                ),
              ],
              child: Container(
                padding: const EdgeInsets.all(16),
                color: Colors.orange[100],
                child: const Text('Tap and Hold'),
              ),
            ),
            const SizedBox(height: 20),
            const Text("CupertinoContextMenu - With Icon Actions"),
            const SizedBox(height: 8),
            CupertinoContextMenu(
              actions: [
                CupertinoContextMenuAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(CupertinoIcons.add),
                      SizedBox(width: 5),
                      Text('Add'),
                    ],
                  ),
                ),
                CupertinoContextMenuAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(CupertinoIcons.share),
                      SizedBox(width: 5),
                      Text('Share'),
                    ],
                  ),
                ),
              ],
              child: Container(
                padding: const EdgeInsets.all(16),
                color: Colors.purple[100],
                child: const Text('Tap and Hold'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
