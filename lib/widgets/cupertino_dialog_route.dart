import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDialogRouteScreen extends StatelessWidget {
  const CupertinoDialogRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CupertinoDialogRoute Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("CupertinoDialogRoute - Usage",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoDialogRoute(
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                        title: Text('Dialog'),
                        content: Text('This is a Cupertino dialog.'),
                        actions: [
                          CupertinoDialogAction(
                            child: Text('OK'),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: const Text('Show Dialog'),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoDialogRoute - With Custom Transition",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoDialogRoute(
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                        title: Text('Custom Transition Dialog'),
                        content: Text('This dialog has a custom transition.'),
                        actions: [
                          CupertinoDialogAction(
                            child: Text('OK'),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ],
                      ),
                      transitionDuration: const Duration(milliseconds: 500),
                      transitionBuilder: (context, animation, secondaryAnimation, child) {
                        return ScaleTransition(
                          scale: CurvedAnimation(
                            parent: animation,
                            curve: Curves.easeInOut,
                          ),
                          child: child,
                        );
                      },
                    ),
                  );
                },
                child: const Text('Show Custom Transition Dialog'),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoDialogRoute - With Barrier Dismissible",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoDialogRoute(
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                        title: const Text('Barrier Dismissible Dialog'),
                        content: const Text('This dialog can be dismissed by tapping outside.'),
                        actions: [
                          CupertinoDialogAction(
                            child: const Text('OK'),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ],
                      ),
                      barrierDismissible: true,
                    ),
                  );
                },
                child: const Text('Show Barrier Dismissible Dialog'),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoDialogRoute - With Barrier Color",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoDialogRoute(
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                        title: Text('Barrier Color Dialog'),
                        content: Text('This dialog has a custom barrier color.'),
                        actions: [
                          CupertinoDialogAction(
                            child: Text('OK'),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ],
                      ),
                      barrierColor: Colors.black.withValues(alpha: 255 * 0.5),
                    ),
                  );
                },
                child: const Text('Show Barrier Color Dialog'),
              ),
              const SizedBox(height: 20),
              const Text("CupertinoDialogRoute - With Settings",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoDialogRoute(
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                        title: Text('Settings Dialog'),
                        content: Text('This dialog has custom settings.'),
                        actions: [
                          CupertinoDialogAction(
                            child: Text('OK'),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ],
                      ),
                      settings: const RouteSettings(name: 'customDialogRoute'),
                    ),
                  );
                },
                child: const Text('Show Settings Dialog'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
