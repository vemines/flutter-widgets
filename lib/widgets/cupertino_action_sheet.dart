import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetScreen extends StatelessWidget {
  const CupertinoActionSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoActionSheet Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoActionSheet Variations:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              _buildActionSheetVariation(
                context,
                "Default Action Sheet",
                CupertinoActionSheet(
                  title: const Text('Action Sheet Title'),
                  message: const Text('Action Sheet Message'),
                  actions: <CupertinoActionSheetAction>[
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Action 1'),
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Action 2'),
                    ),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    isDefaultAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildActionSheetVariation(
                context,
                "Action Sheet with Destructive Action",
                CupertinoActionSheet(
                  title: const Text('Action Sheet Title'),
                  message: const Text('Action Sheet Message'),
                  actions: <CupertinoActionSheetAction>[
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Action 1'),
                    ),
                    CupertinoActionSheetAction(
                      isDestructiveAction: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Destructive Action'),
                    ),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    isDefaultAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildActionSheetVariation(
                context,
                "Action Sheet with Custom Cancel Button",
                CupertinoActionSheet(
                  title: const Text('Action Sheet Title'),
                  message: const Text('Action Sheet Message'),
                  actions: <CupertinoActionSheetAction>[
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Action 1'),
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Action 2'),
                    ),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Close', style: TextStyle(color: Colors.blue)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildActionSheetVariation(
                context,
                "Action Sheet with No Message",
                CupertinoActionSheet(
                  title: const Text('Action Sheet Title'),
                  actions: <CupertinoActionSheetAction>[
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Action 1'),
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Action 2'),
                    ),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    isDefaultAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionSheetVariation(BuildContext context, String label, CupertinoActionSheet actionSheet) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        ElevatedButton(
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) => actionSheet,
            );
          },
          child: const Text('Show Action Sheet'),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
