import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAlertDialogScreen extends StatelessWidget {
  const CupertinoAlertDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoAlertDialog Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoAlertDialog - Default"),
              Center(
                child: CupertinoButton(
                  child: const Text('Show Alert'),
                  onPressed: () {
                    showCupertinoDialog(
                      context: context,
                      builder: (BuildContext context) => CupertinoAlertDialog(
                        title: const Text('Alert Title'),
                        content: const Text('This is the alert message.'),
                        actions: <CupertinoDialogAction>[
                          CupertinoDialogAction(
                            child: const Text('Cancel'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          CupertinoDialogAction(
                            child: const Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoAlertDialog - Custom Title and Content"),
              Center(
                child: CupertinoButton(
                  child: const Text('Show Alert'),
                  onPressed: () {
                    showCupertinoDialog(
                      context: context,
                      builder: (BuildContext context) => CupertinoAlertDialog(
                        title: const Text('Custom Title', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                        content: const Text('Custom message with different style.', style: TextStyle(color: Colors.green)),
                        actions: <CupertinoDialogAction>[
                          CupertinoDialogAction(
                            child: const Text('Dismiss'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoAlertDialog - With Different Actions"),
              Center(
                child: CupertinoButton(
                  child: const Text('Show Alert'),
                  onPressed: () {
                    showCupertinoDialog(
                      context: context,
                      builder: (BuildContext context) => CupertinoAlertDialog(
                        title: const Text('Multiple Actions'),
                        content: const Text('This alert has more than two actions.'),
                        actions: <CupertinoDialogAction>[
                          CupertinoDialogAction(
                            child: const Text('Action 1'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          CupertinoDialogAction(
                            child: const Text('Action 2'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                           CupertinoDialogAction(
                            child: const Text('Action 3'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoAlertDialog - With Scrollable Content"),
              Center(
                child: CupertinoButton(
                  child: const Text('Show Alert'),
                  onPressed: () {
                    showCupertinoDialog(
                      context: context,
                      builder: (BuildContext context) => CupertinoAlertDialog(
                        title: const Text('Scrollable Content'),
                        content: SingleChildScrollView(
                          child: Text(
                            'This is a long message that should be scrollable. ' * 20,
                          ),
                        ),
                        actions: <CupertinoDialogAction>[
                          CupertinoDialogAction(
                            child: const Text('Close'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoAlertDialog - With a destructive action"),
              Center(
                child: CupertinoButton(
                  child: const Text('Show Alert'),
                  onPressed: () {
                    showCupertinoDialog(
                      context: context,
                      builder: (BuildContext context) => CupertinoAlertDialog(
                        title: const Text('Destructive Action'),
                        content: const Text('This alert has a destructive action.'),
                        actions: <CupertinoDialogAction>[
                          CupertinoDialogAction(
                            child: const Text('Cancel'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          CupertinoDialogAction(
                            isDestructiveAction: true,
                            child: const Text('Delete'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
